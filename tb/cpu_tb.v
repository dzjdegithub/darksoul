
module cpu_tb;

    reg rst_n;
    reg clk;
    reg rtc_clk;
    
    wire clk_gate = soc_top_inst.cpu_top_inst.clk_gate;
    wire [31:0] wb_pc = soc_top_inst.cpu_top_inst.mem_wb_instance.wb_pc; 

    
    wire [31:0] zero_x0  = soc_top_inst.cpu_top_inst. regfile_instance. rf[0];
    wire [31:0] ra_x1    = soc_top_inst.cpu_top_inst. regfile_instance. rf[1];
    wire [31:0] sp_x2    = soc_top_inst.cpu_top_inst. regfile_instance. rf[2];
    wire [31:0] gp_x3    = soc_top_inst.cpu_top_inst. regfile_instance. rf[3];
    wire [31:0] tp_x4    = soc_top_inst.cpu_top_inst. regfile_instance. rf[4];
    wire [31:0] t0_x5    = soc_top_inst.cpu_top_inst. regfile_instance. rf[5];
    wire [31:0] t1_x6    = soc_top_inst.cpu_top_inst. regfile_instance. rf[6];
    wire [31:0] t2_x7    = soc_top_inst.cpu_top_inst. regfile_instance. rf[7];
    wire [31:0] s0_fp_x8 = soc_top_inst.cpu_top_inst. regfile_instance. rf[8];
    wire [31:0] s1_x9    = soc_top_inst.cpu_top_inst. regfile_instance. rf[9];
    wire [31:0] a0_x10   = soc_top_inst.cpu_top_inst. regfile_instance. rf[10];
    wire [31:0] a1_x11   = soc_top_inst.cpu_top_inst. regfile_instance. rf[11];
    wire [31:0] a2_x12   = soc_top_inst.cpu_top_inst. regfile_instance. rf[12];
    wire [31:0] a3_x13   = soc_top_inst.cpu_top_inst. regfile_instance. rf[13];
    wire [31:0] a4_x14   = soc_top_inst.cpu_top_inst. regfile_instance. rf[14];
    wire [31:0] a5_x15   = soc_top_inst.cpu_top_inst. regfile_instance. rf[15];
    wire [31:0] a6_x16   = soc_top_inst.cpu_top_inst. regfile_instance. rf[16];
    wire [31:0] a7_x17   = soc_top_inst.cpu_top_inst. regfile_instance. rf[17];
    wire [31:0] s2_x18   = soc_top_inst.cpu_top_inst. regfile_instance. rf[18];
    wire [31:0] s3_x19   = soc_top_inst.cpu_top_inst. regfile_instance. rf[19];
    wire [31:0] s4_x20   = soc_top_inst.cpu_top_inst. regfile_instance. rf[20];
    wire [31:0] s5_x21   = soc_top_inst.cpu_top_inst. regfile_instance. rf[21];
    wire [31:0] s6_x22   = soc_top_inst.cpu_top_inst. regfile_instance. rf[22];
    wire [31:0] s7_x23   = soc_top_inst.cpu_top_inst. regfile_instance. rf[23];
    wire [31:0] s8_x24   = soc_top_inst.cpu_top_inst. regfile_instance. rf[24];
    wire [31:0] s9_x25   = soc_top_inst.cpu_top_inst. regfile_instance. rf[25];
    wire [31:0] s10_x26  = soc_top_inst.cpu_top_inst. regfile_instance. rf[26];
    wire [31:0] s11_x27  = soc_top_inst.cpu_top_inst. regfile_instance. rf[27];
    wire [31:0] t3_x28   = soc_top_inst.cpu_top_inst. regfile_instance. rf[28];
    wire [31:0] t4_x29   = soc_top_inst.cpu_top_inst. regfile_instance. rf[29];
    wire [31:0] t5_x30   = soc_top_inst.cpu_top_inst. regfile_instance. rf[30];
    wire [31:0] t6_x31   = soc_top_inst.cpu_top_inst. regfile_instance. rf[31];
    
    wire [63:0] mcycle_64   = soc_top_inst.cpu_top_inst.csr_instance.mcycle_64;
    wire [63:0] minstret_64 = soc_top_inst.cpu_top_inst.csr_instance.minstret_64;
    
    soc_top soc_top_inst
    (
        .clk(clk),
        .rtc_clk(rtc_clk),
        .rst_n(rst_n)
    );

    initial begin
        clk = 1;
        rtc_clk = 0;
    end
    always #10 clk = ~clk;
    always #50 rtc_clk = ~rtc_clk;
    
    initial begin
        rst_n = 1'b0;
        #20
        rst_n = 1'b1;
    end

    // initial begin
        // $readmemh("C:/Users/dzj0489/Desktop/fffff/RISCV/Project/inst/BNE", cpu_top_inst.sram_instance.ram_inst.ram);
        // $readmemh("C:/Users/dzj0489/Desktop/hello.hex", cpu_top_inst.sram_instance.ram_inst.ram);
    // end
    

endmodule
