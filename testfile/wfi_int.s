    .section .text
    .globl _start

_start:
    # 禁用全局中断（关闭机器模式中的 MIE）
    csrr t0, mstatus              # 读取 mstatus 寄存器值
    li t1, 0xFFFFFFF7             # 掩码，用于清除 MIE 位
    and t2, t0, t1                # 清除 mstatus 中的 MIE 位
    csrw mstatus, t2              # 写回 mstatus 寄存器

    # 禁用定时器中断（清除 MTIE 位）
    csrr t0, mie                  # 读取 mie 寄存器值
    li t1, 0xFFFFFF7F             # 掩码，用于清除 MTIE 位
    and t2, t0, t1                # 清除 mie 中的 MTIE 位
    csrw mie, t2                  # 写回 mie 寄存器

    # 设置 mtvec（中断向量寄存器）
    la t0, timer_interrupt_handler # 使用 la 加载中断处理程序的地址
    csrw mtvec, t0                # 设置 mtvec 寄存器，指定中断处理程序地址

    # 设置定时器中断：将 mtimecmp 设置为 mtime + 1000
    li t0, 0x02000008             # mtime 低32位地址
    lw t1, 0(t0)                  # t1 = mtime 低32位
    li t2, 1000                   # 设置定时器中断触发的延迟
    add t1, t1, t2                # t1 = mtime + 1000

    # 写入 mtimecmp 低32位
    li t0, 0x02000000             # mtimecmp 低32位地址
    sw t1, 0(t0)                  # 将 t1 写入 mtimecmp 低32位

    # 设置 mtimecmp 高32位
    li t0, 0x02000004             # mtimecmp 高32位地址
    li t1, 0                      # 这里假设 mtimecmp 高32位是 0
    sw t1, 0(t0)                  # 写入 mtimecmp 高32位

    # 启用定时器中断（设置 MTIE 位）
    csrr t0, mie                  # 读取 mie 寄存器值
    li t1, 0x80                   # MTIE 位是第 7 位（0x80 = 0b1000 0000）
    or t2, t0, t1                 # 设置 mie 中的 MTIE 位
    csrw mie, t2                  # 写回 mie 寄存器

    # 启用全局中断（mstatus 中的 MIE 位）
    csrr t0, mstatus              # 读取 mstatus 寄存器值
    li t1, 0x8                    # MIE 位的掩码（0x8 = 0b0000 1000）
    or t2, t0, t1                 # 设置 mstatus 中的 MIE 位
    csrw mstatus, t2              # 写回 mstatus 寄存器

    # 设置成功标志为 0，表示尚未处理完中断
    li t3, 0                      # 假设 t3 为成功标志，0 表示未处理，1 表示成功

    # 无限循环，等待中断
wait_interrupt:
    wfi                           # 使用 wfi 指令进入低功耗模式等待中断
    beqz t3, wait_interrupt       # 如果中断未处理，继续等待中断

    # 如果成功，跳回当前的 `j wait_interrupt` 位置
    j here_to_jump                # 这里是跳转到 `j wait_interrupt` 处，形成自我跳转

    # 定时器中断处理程序
timer_interrupt_handler:
    # 关闭定时器中断使能（清除 MTIE 位）
    csrr t0, mie                  # 读取 mie 寄存器值
    li t1, 0xFFFFFF7F             # 掩码，用于清除 MTIE 位
    and t2, t0, t1                # 清除 mie 中的 MTIE 位
    csrw mie, t2                  # 写回 mie 寄存器

    # 这里是定时器中断发生时的处理代码
    # 你可以在这里进行中断处理，比如清除中断标志位、更新状态等
    # 假设这里只是简单地跳到一个无限循环来标识中断处理

    # 设置成功标志为 1，表示中断已成功处理
    li t3, 1                      # 设置标志为成功

    # 恢复中断发生前的程序状态，并返回
    mret                          # 从机器模式中返回，恢复上下文和程序计数器

here_to_jump:                    # 这里是`j`指令的位置
    j here_to_jump                # 形成自我跳转，永远跳回这一行，保持成功状态
