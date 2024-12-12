module if_tb;

    reg clk;
    reg rst_n;
    
    reg bj_flag;
    reg [31:0] bj_addr;
    
    reg [4:0] pipe_stall;
    
    
    wire [31:0] iram_inst;
    wire iram_en;
    wire [29:0] inst_raddr;
    wire [31:0] if_pc;
    wire [31:0] if_inst;
    wire if_valid;
    wire [31:0] id_pc;
    wire [31:0] id_inst;
    wire [31:0] inst;
    
    if_stage if_stage_inst
    (
        .clk(clk),
        .rst_n(rst_n),
        .bj_flag(bj_flag),
        .bj_addr(bj_addr),
        .pipe_stall(pipe_stall),
        .inst(inst),
        .iram_en(iram_en),
        .inst_raddr(inst_raddr),
        .if_pc(if_pc),
        .if_inst(if_inst)
    );
    
    IRAM iram1
    (
        .clk(clk),
        .iram_en(iram_en),
        .raddr(inst_raddr),
        .inst(inst)
    );
    
    if_id if_id_inst
    (
        .clk(clk),
        .rst_n(rst_n),
        .if_pc(if_pc),
        .if_inst(if_inst),
        .pipe_stall(pipe_stall),
        .if_valid(if_valid),
        .id_pc(id_pc),
        .id_inst(id_inst)
    );
    
    initial begin
        clk = 1;
    end
    always #10 clk = ~clk;
    
    // reg [31:0] ram [15:0];
    initial begin
    $readmemh("E:/iverilog/project/darksoul/tb/itcm.txt", iram1.iram_inst.ram); // 读取文件并初始化存储器
    end
    
    initial begin
        rst_n = 1'b0;
        bj_flag = 1'b0;
        bj_addr = 32'b0;
        pipe_stall = 5'b00000;
        #20
        rst_n = 1'b1;
        #40
        bj_flag = 1'b1;
        bj_addr = {30'b101,2'b00};
        #20
        pipe_stall[0] = 1'b1;
        #20
        bj_flag = 1'b0;
        pipe_stall[0] = 1'b0;
        
    end 
    
endmodule