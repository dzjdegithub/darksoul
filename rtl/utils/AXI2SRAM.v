module AXI2SRAM_1 (
  input  wire          slave_axi_ar_valid,
  output wire          slave_axi_ar_ready,
  input  wire [3:0]    slave_axi_ar_payload_id,
  input  wire [31:0]   slave_axi_ar_payload_addr,
  input  wire [7:0]    slave_axi_ar_payload_len,
  input  wire [2:0]    slave_axi_ar_payload_size,
  input  wire [1:0]    slave_axi_ar_payload_burst,
  input  wire [1:0]    slave_axi_ar_payload_lock,
  input  wire [3:0]    slave_axi_ar_payload_cache,
  input  wire [2:0]    slave_axi_ar_payload_prot,
  output wire          slave_axi_r_valid,
  input  wire          slave_axi_r_ready,
  output wire [3:0]    slave_axi_r_payload_id,
  output wire [31:0]   slave_axi_r_payload_data,
  output wire [1:0]    slave_axi_r_payload_resp,
  output wire          slave_axi_r_payload_last,
  input  wire          slave_axi_aw_valid,
  output wire          slave_axi_aw_ready,
  input  wire [3:0]    slave_axi_aw_payload_id,
  input  wire [31:0]   slave_axi_aw_payload_addr,
  input  wire [7:0]    slave_axi_aw_payload_len,
  input  wire [2:0]    slave_axi_aw_payload_size,
  input  wire [1:0]    slave_axi_aw_payload_burst,
  input  wire [1:0]    slave_axi_aw_payload_lock,
  input  wire [3:0]    slave_axi_aw_payload_cache,
  input  wire [2:0]    slave_axi_aw_payload_prot,
  input  wire          slave_axi_w_valid,
  output wire          slave_axi_w_ready,
  input  wire [3:0]    slave_axi_w_payload_id,
  input  wire [31:0]   slave_axi_w_payload_data,
  input  wire [3:0]    slave_axi_w_payload_strb,
  input  wire          slave_axi_w_payload_last,
  output wire          slave_axi_b_valid,
  input  wire          slave_axi_b_ready,
  output wire [3:0]    slave_axi_b_payload_id,
  output wire [1:0]    slave_axi_b_payload_resp,
  output wire          ena,
  output wire [3:0]    wea,
  output wire [31:0]   addra,
  output wire [31:0]   dina,
  output wire          enb,
  output wire [31:0]   addrb,
  input  wire [31:0]   doutb,
  input  wire          clk_gate,
  input  wire          rst_n
);
  localparam myClockingArea_read_cmd_enumDef_IDLE = 1'd0;
  localparam myClockingArea_read_cmd_enumDef_READ = 1'd1;
  localparam myClockingArea_write_cmd_enumDef_IDLE = 2'd0;
  localparam myClockingArea_write_cmd_enumDef_ADDR_OK = 2'd1;
  localparam myClockingArea_write_cmd_enumDef_WRITE = 2'd2;

  wire                myClockingArea_read_cmd_wantExit;
  reg                 myClockingArea_read_cmd_wantStart;
  wire                myClockingArea_read_cmd_wantKill;
  reg        [3:0]    myClockingArea_read_cmd_rid_reg;
  wire                myClockingArea_write_cmd_wantExit;
  reg                 myClockingArea_write_cmd_wantStart;
  wire                myClockingArea_write_cmd_wantKill;
  reg        [3:0]    myClockingArea_write_cmd_bid_reg;
  reg        [31:0]   myClockingArea_write_cmd_addr_reg;
  reg        [0:0]    myClockingArea_read_cmd_stateReg;
  reg        [0:0]    myClockingArea_read_cmd_stateNext;
  reg        [1:0]    myClockingArea_write_cmd_stateReg;
  reg        [1:0]    myClockingArea_write_cmd_stateNext;

  assign myClockingArea_read_cmd_wantExit = 1'b0; // @ StateMachine.scala l151
  always @(*) begin
    myClockingArea_read_cmd_wantStart = 1'b0; // @ StateMachine.scala l152
    case(myClockingArea_read_cmd_stateReg)
      myClockingArea_read_cmd_enumDef_READ : begin
      end
      default : begin
        myClockingArea_read_cmd_wantStart = 1'b1; // @ StateMachine.scala l362
      end
    endcase
  end

  assign myClockingArea_read_cmd_wantKill = 1'b0; // @ StateMachine.scala l153
  assign slave_axi_r_valid = (myClockingArea_read_cmd_stateReg == myClockingArea_read_cmd_enumDef_READ); // @ AXI2SRAM.scala l30
  assign slave_axi_ar_ready = (myClockingArea_read_cmd_stateReg == myClockingArea_read_cmd_enumDef_IDLE); // @ AXI2SRAM.scala l31
  assign slave_axi_r_payload_id = myClockingArea_read_cmd_rid_reg; // @ AXI2SRAM.scala l33
  assign slave_axi_r_payload_data = doutb; // @ AXI2SRAM.scala l34
  assign slave_axi_r_payload_last = 1'b1; // @ AXI2SRAM.scala l35
  assign slave_axi_r_payload_resp = 2'b00; // @ AXI2SRAM.scala l36
  assign enb = (((myClockingArea_read_cmd_stateNext == myClockingArea_read_cmd_enumDef_READ) && (myClockingArea_read_cmd_stateReg != myClockingArea_read_cmd_enumDef_READ)) ? 1'b1 : 1'b0); // @ AXI2SRAM.scala l38
  assign addrb = slave_axi_ar_payload_addr; // @ AXI2SRAM.scala l42
  assign myClockingArea_write_cmd_wantExit = 1'b0; // @ StateMachine.scala l151
  always @(*) begin
    myClockingArea_write_cmd_wantStart = 1'b0; // @ StateMachine.scala l152
    case(myClockingArea_write_cmd_stateReg)
      myClockingArea_write_cmd_enumDef_ADDR_OK : begin
      end
      myClockingArea_write_cmd_enumDef_WRITE : begin
      end
      default : begin
        myClockingArea_write_cmd_wantStart = 1'b1; // @ StateMachine.scala l362
      end
    endcase
  end

  assign myClockingArea_write_cmd_wantKill = 1'b0; // @ StateMachine.scala l153
  assign slave_axi_aw_ready = (myClockingArea_write_cmd_stateReg == myClockingArea_write_cmd_enumDef_IDLE); // @ AXI2SRAM.scala l65
  assign slave_axi_w_ready = (myClockingArea_write_cmd_stateReg == myClockingArea_write_cmd_enumDef_ADDR_OK); // @ AXI2SRAM.scala l66
  assign slave_axi_b_payload_id = myClockingArea_write_cmd_bid_reg; // @ AXI2SRAM.scala l68
  assign slave_axi_b_valid = (myClockingArea_write_cmd_stateReg == myClockingArea_write_cmd_enumDef_WRITE); // @ AXI2SRAM.scala l69
  assign slave_axi_b_payload_resp = 2'b00; // @ AXI2SRAM.scala l70
  assign ena = (((myClockingArea_write_cmd_stateNext == myClockingArea_write_cmd_enumDef_WRITE) && (myClockingArea_write_cmd_stateReg != myClockingArea_write_cmd_enumDef_WRITE)) ? 1'b1 : 1'b0); // @ AXI2SRAM.scala l72
  assign wea = slave_axi_w_payload_strb; // @ AXI2SRAM.scala l73
  assign addra = myClockingArea_write_cmd_addr_reg; // @ AXI2SRAM.scala l78
  assign dina = slave_axi_w_payload_data; // @ AXI2SRAM.scala l80
  always @(*) begin
    myClockingArea_read_cmd_stateNext = myClockingArea_read_cmd_stateReg; // @ StateMachine.scala l217
    case(myClockingArea_read_cmd_stateReg)
      myClockingArea_read_cmd_enumDef_READ : begin
        if((slave_axi_r_ready && slave_axi_r_valid)) begin
          myClockingArea_read_cmd_stateNext = myClockingArea_read_cmd_enumDef_IDLE; // @ Enum.scala l151
        end else begin
          myClockingArea_read_cmd_stateNext = myClockingArea_read_cmd_enumDef_READ; // @ Enum.scala l151
        end
      end
      default : begin
        if((slave_axi_ar_valid && slave_axi_ar_ready)) begin
          myClockingArea_read_cmd_stateNext = myClockingArea_read_cmd_enumDef_READ; // @ Enum.scala l151
        end else begin
          myClockingArea_read_cmd_stateNext = myClockingArea_read_cmd_enumDef_IDLE; // @ Enum.scala l151
        end
      end
    endcase
    if(myClockingArea_read_cmd_wantKill) begin
      myClockingArea_read_cmd_stateNext = myClockingArea_read_cmd_enumDef_IDLE; // @ Enum.scala l151
    end
  end

  always @(*) begin
    myClockingArea_write_cmd_stateNext = myClockingArea_write_cmd_stateReg; // @ StateMachine.scala l217
    case(myClockingArea_write_cmd_stateReg)
      myClockingArea_write_cmd_enumDef_ADDR_OK : begin
        if((slave_axi_w_valid && slave_axi_w_ready)) begin
          myClockingArea_write_cmd_stateNext = myClockingArea_write_cmd_enumDef_WRITE; // @ Enum.scala l151
        end
      end
      myClockingArea_write_cmd_enumDef_WRITE : begin
        if((slave_axi_b_valid && slave_axi_b_ready)) begin
          myClockingArea_write_cmd_stateNext = myClockingArea_write_cmd_enumDef_IDLE; // @ Enum.scala l151
        end
      end
      default : begin
        if((slave_axi_aw_valid && slave_axi_aw_ready)) begin
          myClockingArea_write_cmd_stateNext = myClockingArea_write_cmd_enumDef_ADDR_OK; // @ Enum.scala l151
        end
      end
    endcase
    if(myClockingArea_write_cmd_wantKill) begin
      myClockingArea_write_cmd_stateNext = myClockingArea_write_cmd_enumDef_IDLE; // @ Enum.scala l151
    end
  end

  always @(posedge clk_gate or negedge rst_n) begin
    if(!rst_n) begin
      myClockingArea_read_cmd_rid_reg <= 4'b0000; // @ Data.scala l403
      myClockingArea_write_cmd_bid_reg <= 4'b0001; // @ Data.scala l403
      myClockingArea_write_cmd_addr_reg <= 32'h00000000; // @ Data.scala l403
      myClockingArea_read_cmd_stateReg <= myClockingArea_read_cmd_enumDef_IDLE; // @ Data.scala l403
      myClockingArea_write_cmd_stateReg <= myClockingArea_write_cmd_enumDef_IDLE; // @ Data.scala l403
    end else begin
      if(((myClockingArea_read_cmd_stateNext == myClockingArea_read_cmd_enumDef_READ) && (myClockingArea_read_cmd_stateReg != myClockingArea_read_cmd_enumDef_READ))) begin
        myClockingArea_read_cmd_rid_reg <= slave_axi_ar_payload_id; // @ AXI2SRAM.scala l32
      end
      if(((myClockingArea_write_cmd_stateNext == myClockingArea_write_cmd_enumDef_WRITE) && (myClockingArea_write_cmd_stateReg != myClockingArea_write_cmd_enumDef_WRITE))) begin
        myClockingArea_write_cmd_bid_reg <= slave_axi_w_payload_id; // @ AXI2SRAM.scala l67
      end
      if(((myClockingArea_write_cmd_stateNext == myClockingArea_write_cmd_enumDef_ADDR_OK) && (myClockingArea_write_cmd_stateReg != myClockingArea_write_cmd_enumDef_ADDR_OK))) begin
        myClockingArea_write_cmd_addr_reg <= slave_axi_aw_payload_addr; // @ AXI2SRAM.scala l74
      end
      myClockingArea_read_cmd_stateReg <= myClockingArea_read_cmd_stateNext; // @ StateMachine.scala l212
      myClockingArea_write_cmd_stateReg <= myClockingArea_write_cmd_stateNext; // @ StateMachine.scala l212
    end
  end


endmodule

module AXI2SRAM (
  input  wire          slave_axi_ar_valid,
  output wire          slave_axi_ar_ready,
  input  wire [3:0]    slave_axi_ar_payload_id,
  input  wire [31:0]   slave_axi_ar_payload_addr,
  input  wire [7:0]    slave_axi_ar_payload_len,
  input  wire [2:0]    slave_axi_ar_payload_size,
  input  wire [1:0]    slave_axi_ar_payload_burst,
  input  wire [1:0]    slave_axi_ar_payload_lock,
  input  wire [3:0]    slave_axi_ar_payload_cache,
  input  wire [2:0]    slave_axi_ar_payload_prot,
  output wire          slave_axi_r_valid,
  input  wire          slave_axi_r_ready,
  output wire [3:0]    slave_axi_r_payload_id,
  output wire [31:0]   slave_axi_r_payload_data,
  output wire [1:0]    slave_axi_r_payload_resp,
  output wire          slave_axi_r_payload_last,
  input  wire          slave_axi_aw_valid,
  output wire          slave_axi_aw_ready,
  input  wire [3:0]    slave_axi_aw_payload_id,
  input  wire [31:0]   slave_axi_aw_payload_addr,
  input  wire [7:0]    slave_axi_aw_payload_len,
  input  wire [2:0]    slave_axi_aw_payload_size,
  input  wire [1:0]    slave_axi_aw_payload_burst,
  input  wire [1:0]    slave_axi_aw_payload_lock,
  input  wire [3:0]    slave_axi_aw_payload_cache,
  input  wire [2:0]    slave_axi_aw_payload_prot,
  input  wire          slave_axi_w_valid,
  output wire          slave_axi_w_ready,
  input  wire [3:0]    slave_axi_w_payload_id,
  input  wire [31:0]   slave_axi_w_payload_data,
  input  wire [3:0]    slave_axi_w_payload_strb,
  input  wire          slave_axi_w_payload_last,
  output wire          slave_axi_b_valid,
  input  wire          slave_axi_b_ready,
  output wire [3:0]    slave_axi_b_payload_id,
  output wire [1:0]    slave_axi_b_payload_resp,
  output wire          ena,
  output wire [3:0]    wea,
  output wire [31:0]   addra,
  output wire [31:0]   dina,
  output wire          enb,
  output wire [31:0]   addrb,
  input  wire [31:0]   doutb,
  input  wire          clk_gate,
  input  wire          rst_n
);
  localparam myClockingArea_read_cmd_enumDef_IDLE = 1'd0;
  localparam myClockingArea_read_cmd_enumDef_READ = 1'd1;
  localparam myClockingArea_write_cmd_enumDef_IDLE = 2'd0;
  localparam myClockingArea_write_cmd_enumDef_ADDR_OK = 2'd1;
  localparam myClockingArea_write_cmd_enumDef_WRITE = 2'd2;

  wire                myClockingArea_read_cmd_wantExit;
  reg                 myClockingArea_read_cmd_wantStart;
  wire                myClockingArea_read_cmd_wantKill;
  reg        [3:0]    myClockingArea_read_cmd_rid_reg;
  wire                myClockingArea_write_cmd_wantExit;
  reg                 myClockingArea_write_cmd_wantStart;
  wire                myClockingArea_write_cmd_wantKill;
  reg        [3:0]    myClockingArea_write_cmd_bid_reg;
  reg        [31:0]   myClockingArea_write_cmd_addr_reg;
  reg        [0:0]    myClockingArea_read_cmd_stateReg;
  reg        [0:0]    myClockingArea_read_cmd_stateNext;
  reg        [1:0]    myClockingArea_write_cmd_stateReg;
  reg        [1:0]    myClockingArea_write_cmd_stateNext;

  assign myClockingArea_read_cmd_wantExit = 1'b0; // @ StateMachine.scala l151
  always @(*) begin
    myClockingArea_read_cmd_wantStart = 1'b0; // @ StateMachine.scala l152
    case(myClockingArea_read_cmd_stateReg)
      myClockingArea_read_cmd_enumDef_READ : begin
      end
      default : begin
        myClockingArea_read_cmd_wantStart = 1'b1; // @ StateMachine.scala l362
      end
    endcase
  end

  assign myClockingArea_read_cmd_wantKill = 1'b0; // @ StateMachine.scala l153
  assign slave_axi_r_valid = (myClockingArea_read_cmd_stateReg == myClockingArea_read_cmd_enumDef_READ); // @ AXI2SRAM.scala l30
  assign slave_axi_ar_ready = (myClockingArea_read_cmd_stateReg == myClockingArea_read_cmd_enumDef_IDLE); // @ AXI2SRAM.scala l31
  assign slave_axi_r_payload_id = myClockingArea_read_cmd_rid_reg; // @ AXI2SRAM.scala l33
  assign slave_axi_r_payload_data = doutb; // @ AXI2SRAM.scala l34
  assign slave_axi_r_payload_last = 1'b1; // @ AXI2SRAM.scala l35
  assign slave_axi_r_payload_resp = 2'b00; // @ AXI2SRAM.scala l36
  assign enb = (((myClockingArea_read_cmd_stateNext == myClockingArea_read_cmd_enumDef_READ) && (myClockingArea_read_cmd_stateReg != myClockingArea_read_cmd_enumDef_READ)) ? 1'b1 : 1'b0); // @ AXI2SRAM.scala l38
  assign addrb = {2'b00,slave_axi_ar_payload_addr[31 : 2]}; // @ AXI2SRAM.scala l40
  assign myClockingArea_write_cmd_wantExit = 1'b0; // @ StateMachine.scala l151
  always @(*) begin
    myClockingArea_write_cmd_wantStart = 1'b0; // @ StateMachine.scala l152
    case(myClockingArea_write_cmd_stateReg)
      myClockingArea_write_cmd_enumDef_ADDR_OK : begin
      end
      myClockingArea_write_cmd_enumDef_WRITE : begin
      end
      default : begin
        myClockingArea_write_cmd_wantStart = 1'b1; // @ StateMachine.scala l362
      end
    endcase
  end

  assign myClockingArea_write_cmd_wantKill = 1'b0; // @ StateMachine.scala l153
  assign slave_axi_aw_ready = (myClockingArea_write_cmd_stateReg == myClockingArea_write_cmd_enumDef_IDLE); // @ AXI2SRAM.scala l65
  assign slave_axi_w_ready = (myClockingArea_write_cmd_stateReg == myClockingArea_write_cmd_enumDef_ADDR_OK); // @ AXI2SRAM.scala l66
  assign slave_axi_b_payload_id = myClockingArea_write_cmd_bid_reg; // @ AXI2SRAM.scala l68
  assign slave_axi_b_valid = (myClockingArea_write_cmd_stateReg == myClockingArea_write_cmd_enumDef_WRITE); // @ AXI2SRAM.scala l69
  assign slave_axi_b_payload_resp = 2'b00; // @ AXI2SRAM.scala l70
  assign ena = (((myClockingArea_write_cmd_stateNext == myClockingArea_write_cmd_enumDef_WRITE) && (myClockingArea_write_cmd_stateReg != myClockingArea_write_cmd_enumDef_WRITE)) ? 1'b1 : 1'b0); // @ AXI2SRAM.scala l72
  assign wea = slave_axi_w_payload_strb; // @ AXI2SRAM.scala l73
  assign addra = {2'b00,myClockingArea_write_cmd_addr_reg[31 : 2]}; // @ AXI2SRAM.scala l76
  assign dina = slave_axi_w_payload_data; // @ AXI2SRAM.scala l80
  always @(*) begin
    myClockingArea_read_cmd_stateNext = myClockingArea_read_cmd_stateReg; // @ StateMachine.scala l217
    case(myClockingArea_read_cmd_stateReg)
      myClockingArea_read_cmd_enumDef_READ : begin
        if((slave_axi_r_ready && slave_axi_r_valid)) begin
          myClockingArea_read_cmd_stateNext = myClockingArea_read_cmd_enumDef_IDLE; // @ Enum.scala l151
        end else begin
          myClockingArea_read_cmd_stateNext = myClockingArea_read_cmd_enumDef_READ; // @ Enum.scala l151
        end
      end
      default : begin
        if((slave_axi_ar_valid && slave_axi_ar_ready)) begin
          myClockingArea_read_cmd_stateNext = myClockingArea_read_cmd_enumDef_READ; // @ Enum.scala l151
        end else begin
          myClockingArea_read_cmd_stateNext = myClockingArea_read_cmd_enumDef_IDLE; // @ Enum.scala l151
        end
      end
    endcase
    if(myClockingArea_read_cmd_wantKill) begin
      myClockingArea_read_cmd_stateNext = myClockingArea_read_cmd_enumDef_IDLE; // @ Enum.scala l151
    end
  end

  always @(*) begin
    myClockingArea_write_cmd_stateNext = myClockingArea_write_cmd_stateReg; // @ StateMachine.scala l217
    case(myClockingArea_write_cmd_stateReg)
      myClockingArea_write_cmd_enumDef_ADDR_OK : begin
        if((slave_axi_w_valid && slave_axi_w_ready)) begin
          myClockingArea_write_cmd_stateNext = myClockingArea_write_cmd_enumDef_WRITE; // @ Enum.scala l151
        end
      end
      myClockingArea_write_cmd_enumDef_WRITE : begin
        if((slave_axi_b_valid && slave_axi_b_ready)) begin
          myClockingArea_write_cmd_stateNext = myClockingArea_write_cmd_enumDef_IDLE; // @ Enum.scala l151
        end
      end
      default : begin
        if((slave_axi_aw_valid && slave_axi_aw_ready)) begin
          myClockingArea_write_cmd_stateNext = myClockingArea_write_cmd_enumDef_ADDR_OK; // @ Enum.scala l151
        end
      end
    endcase
    if(myClockingArea_write_cmd_wantKill) begin
      myClockingArea_write_cmd_stateNext = myClockingArea_write_cmd_enumDef_IDLE; // @ Enum.scala l151
    end
  end

  always @(posedge clk_gate or negedge rst_n) begin
    if(!rst_n) begin
      myClockingArea_read_cmd_rid_reg <= 4'b0000; // @ Data.scala l403
      myClockingArea_write_cmd_bid_reg <= 4'b0001; // @ Data.scala l403
      myClockingArea_write_cmd_addr_reg <= 32'h00000000; // @ Data.scala l403
      myClockingArea_read_cmd_stateReg <= myClockingArea_read_cmd_enumDef_IDLE; // @ Data.scala l403
      myClockingArea_write_cmd_stateReg <= myClockingArea_write_cmd_enumDef_IDLE; // @ Data.scala l403
    end else begin
      if(((myClockingArea_read_cmd_stateNext == myClockingArea_read_cmd_enumDef_READ) && (myClockingArea_read_cmd_stateReg != myClockingArea_read_cmd_enumDef_READ))) begin
        myClockingArea_read_cmd_rid_reg <= slave_axi_ar_payload_id; // @ AXI2SRAM.scala l32
      end
      if(((myClockingArea_write_cmd_stateNext == myClockingArea_write_cmd_enumDef_WRITE) && (myClockingArea_write_cmd_stateReg != myClockingArea_write_cmd_enumDef_WRITE))) begin
        myClockingArea_write_cmd_bid_reg <= slave_axi_w_payload_id; // @ AXI2SRAM.scala l67
      end
      if(((myClockingArea_write_cmd_stateNext == myClockingArea_write_cmd_enumDef_ADDR_OK) && (myClockingArea_write_cmd_stateReg != myClockingArea_write_cmd_enumDef_ADDR_OK))) begin
        myClockingArea_write_cmd_addr_reg <= slave_axi_aw_payload_addr; // @ AXI2SRAM.scala l74
      end
      myClockingArea_read_cmd_stateReg <= myClockingArea_read_cmd_stateNext; // @ StateMachine.scala l212
      myClockingArea_write_cmd_stateReg <= myClockingArea_write_cmd_stateNext; // @ StateMachine.scala l212
    end
  end


endmodule