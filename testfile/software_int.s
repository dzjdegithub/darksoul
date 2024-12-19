    .section .text
    .globl _start

_start:
    # 设置栈指针（假设栈从0x3F00开始，4KB栈空间）
    li      sp, 0x3F00           # 设置栈指针
    
    # 启用全局中断使能 (MIE) 在 mstatus 寄存器中
    li      t0, 0x8              # MIE (位 3)
    csrs    mstatus, t0          # 设置 MIE（启用全局中断）

    # 启用软件中断使能 (MSIE) 在 mie 寄存器中
    li      t0, 0x8              # MSIE (位 3) -> 设置第 3 位为 1
    csrs    mie, t0              # 设置 MSIE（启用软件中断）

    # 设置中断向量表mtvec，假设中断服务例程在isr_handler
    la      t0, isr_handler      # 加载中断服务程序地址到 t0
    csrw    mtvec, t0           # 设置 mtvec 寄存器为中断服务程序地址

    # 设置 MSIP 寄存器地址（0x0200_0010）
    li      t1, 0x02000010       # MSIP寄存器地址
    li      t2, 1                # 设置值为1以触发软件中断
    sw      t2, 0(t1)            # 触发软件中断

    # 等待中断发生
wait_for_interrupt:
    j wait_for_interrupt         # 程序等待中断触发

# 中断服务例程（ISR）
isr_handler:
    # 保存现场
    addi    sp, sp, -16          # 为保存寄存器值分配栈空间
    sw      t0, 0(sp)            # 保存 t0
    sw      t1, 4(sp)            # 保存 t1
    sw      t2, 8(sp)            # 保存 t2

    # 在这里执行中断处理逻辑
    # 例如打印日志、切换上下文、清除中断标志等

    # 清除 MSIP 寄存器，结束中断
    li      t2, 0                # 将 MSIP 清零以结束中断
    sw      t2, 0(t1)            # 清除 MSIP 寄存器中的值

    # 恢复现场
    lw      t0, 0(sp)            # 恢复 t0
    lw      t1, 4(sp)            # 恢复 t1
    lw      t2, 8(sp)            # 恢复 t2
    addi    sp, sp, 16           # 恢复栈指针

    # 中断返回
    mret                          # 返回到主程序，继续执行
