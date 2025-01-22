    .section .text
    .globl _start

_start:
    # 1. 禁用全局中断（关闭机器模式中的 MIE）
    csrr t0, mstatus              # 读取 mstatus 寄存器值
    li t1, 0xFFFFFFF7             # 掩码，用于清除 MIE 位
    and t2, t0, t1                # 清除 mstatus 中的 MIE 位
    csrw mstatus, t2              # 写回 mstatus 寄存器

    # 2. 禁用定时器中断（清除 MTIE 位）
    csrr t0, mie                  # 读取 mie 寄存器值
    li t1, 0xFFFFFF7F             # 掩码，用于清除 MTIE 位
    and t2, t0, t1                # 清除 mie 中的 MTIE 位
    csrw mie, t2                  # 写回 mie 寄存器

    # 3. 设置定时器中断：将 mtimecmp 设置为 mtime + 1000
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

    # 4. 启用定时器中断（设置 MTIE 位），但由于全局中断被禁用，定时器中断不会触发
    csrr t0, mie                  # 读取 mie 寄存器值
    li t1, 0x80                   # MTIE 位是第 7 位（0x80 = 0b1000 0000）
    or t2, t0, t1                 # 设置 mie 中的 MTIE 位
    csrw mie, t2                  # 写回 mie 寄存器

    # 5. 紧接执行 WFI 指令
    wfi                           # 等待中断，预计会被阻塞，因为全局中断禁用

    # 6. 紧接着执行 CSR 写操作，写入 mscratch 寄存器
    csrw mscratch, t1             # 写入 mscratch 寄存器（紧跟在 WFI 后）

    # 7. 检查是否执行了后续的 CSR 写操作
    csrr t2, mscratch            # 读取 mscratch 寄存器的值
    bne t2, t1, error            # 如果 mscratch 的值不等于 t1，跳转到 error 标签

    # 8. 程序正常结束
    j done

error:
    # 如果 CSR 写入失败，跳转到这里（表示 WFI 后指令没有执行）
    li t0, 0x1                   # 设置错误标记
    csrw mscratch, t0            # 写错误标记到 mscratch 寄存器
    j done

done:
    # 程序结束（这里可以观察到 mscratch 寄存器的值）
    nop
