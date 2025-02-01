// Generator : SpinalHDL v1.9.4    git head : 270018552577f3bb8e5339ee2583c9c22d324215
// Component : bus_if
// Git hash  : e3ea5f547f0decf12019aad961aad55193ec1260

`timescale 1ns/1ps

module bus_if (
  input  wire          aclk,
  input  wire          aresetn,
  input  wire          ex_mem_we,
  input  wire          ex_mem_re,
  input  wire          ex_mem_valid,
  input  wire          if_id_valid,
  input  wire          mem_allowin,
  input  wire          id_allowin,
  output wire          store_req_ok,
  output wire          load_req_ok,
  output wire          store_hand_suc,
  output wire          load_hand_suc,
  output wire          fetch_hand_suc,
  input  wire [31:0]   ex_ls_addr,
  input  wire [31:0]   store_data,
  output wire [31:0]   axi_read_data,
  input  wire [3:0]    ex_byte_we,
  input  wire [1:0]    size,
  input  wire          inst_req,
  input  wire [31:0]   pc,
  input  wire          wb_exp_int_flag,
  output wire          jump2exp,
  output wire          inst_useless,
  output wire          inst_valid,
  output wire [31:0]   inst_reg,
  output wire          axi_ar_valid,
  input  wire          axi_ar_ready,
  output wire [3:0]    axi_ar_payload_id,
  output wire [31:0]   axi_ar_payload_addr,
  output wire [7:0]    axi_ar_payload_len,
  output wire [2:0]    axi_ar_payload_size,
  output wire [1:0]    axi_ar_payload_burst,
  output wire [1:0]    axi_ar_payload_lock,
  output wire [3:0]    axi_ar_payload_cache,
  output wire [2:0]    axi_ar_payload_prot,
  input  wire          axi_r_valid,
  output wire          axi_r_ready,
  input  wire [3:0]    axi_r_payload_id,
  input  wire [31:0]   axi_r_payload_data,
  input  wire [1:0]    axi_r_payload_resp,
  input  wire          axi_r_payload_last,
  output wire          axi_aw_valid,
  input  wire          axi_aw_ready,
  output wire [3:0]    axi_aw_payload_id,
  output wire [31:0]   axi_aw_payload_addr,
  output wire [7:0]    axi_aw_payload_len,
  output wire [2:0]    axi_aw_payload_size,
  output wire [1:0]    axi_aw_payload_burst,
  output wire [1:0]    axi_aw_payload_lock,
  output wire [3:0]    axi_aw_payload_cache,
  output wire [2:0]    axi_aw_payload_prot,
  output wire          axi_w_valid,
  input  wire          axi_w_ready,
  output wire [3:0]    axi_w_payload_id,
  output wire [31:0]   axi_w_payload_data,
  output wire [3:0]    axi_w_payload_strb,
  output wire          axi_w_payload_last,
  input  wire          axi_b_valid,
  output wire          axi_b_ready,
  input  wire [3:0]    axi_b_payload_id,
  input  wire [1:0]    axi_b_payload_resp
);
  localparam axi_store_req_ok_fsm_enumDef_IDLE = 2'd0;
  localparam axi_store_req_ok_fsm_enumDef_AWOK = 2'd1;
  localparam axi_store_req_ok_fsm_enumDef_WOK = 2'd2;
  localparam axi_store_req_ok_fsm_enumDef_REQOK = 2'd3;
  localparam axi_store_fsm_enumDef_IDLE = 2'd0;
  localparam axi_store_fsm_enumDef_REQ = 2'd1;
  localparam axi_store_fsm_enumDef_WAIT_1 = 2'd2;
  localparam axi_fetch_fsm_enumDef_IDLE = 2'd0;
  localparam axi_fetch_fsm_enumDef_REQ = 2'd1;
  localparam axi_fetch_fsm_enumDef_WAIT_1 = 2'd2;
  localparam axi_load_fsm_enumDef_IDLE = 2'd0;
  localparam axi_load_fsm_enumDef_REQ = 2'd1;
  localparam axi_load_fsm_enumDef_WAIT_1 = 2'd2;
  localparam axi_exp_fetch_fsm_enumDef_IDLE = 2'd0;
  localparam axi_exp_fetch_fsm_enumDef_EXP = 2'd1;
  localparam axi_exp_fetch_fsm_enumDef_USELESS = 2'd2;

  wire                axi_grant_w;
  wire                axi_grant_w_temp;
  reg                 axi_store_req_ok1;
  wire                axi_store_req_ok2;
  wire                axi_store_req_ok;
  wire                axi_is_reqok;
  wire                axi_is_wait;
  wire                axi_store_busy;
  wire                axi_grant_d;
  wire                axi_grant_i;
  wire                axi_is_awok;
  wire                axi_is_wok;
  wire                axi_store_req_ok_fsm_wantExit;
  reg                 axi_store_req_ok_fsm_wantStart;
  wire                axi_store_req_ok_fsm_wantKill;
  reg                 axi_store_req_ok_fsm_mem_allowin_reg;
  wire                axi_store_fsm_wantExit;
  reg                 axi_store_fsm_wantStart;
  wire                axi_store_fsm_wantKill;
  reg                 axi_bready;
  wire                axi_raw_risk2fetch;
  wire                axi_raw_risk2load;
  reg        [29:0]   axi_waddr_reg;
  wire                axi_fetch_busy;
  wire                axi_load_busy;
  wire                axi_fetch_fsm_wantExit;
  reg                 axi_fetch_fsm_wantStart;
  wire                axi_fetch_fsm_wantKill;
  wire                axi_load_fsm_wantExit;
  reg                 axi_load_fsm_wantStart;
  wire                axi_load_fsm_wantKill;
  wire                axi_fetch_arvalid;
  wire                axi_load_arvalid;
  reg                 axi_load_req_ok_reg;
  reg                 axi_load_arvalid_en;
  reg                 axi_fetch_arvalid_en;
  reg                 axi_load_rready;
  wire                axi_fetch_rready;
  wire                axi_exp_fetch_fsm_wantExit;
  reg                 axi_exp_fetch_fsm_wantStart;
  wire                axi_exp_fetch_fsm_wantKill;
  reg        [31:0]   axi_exp_fetch_fsm_inst_reg;
  reg                 axi_exp_fetch_fsm_inst_valid;
  reg        [1:0]    axi_store_req_ok_fsm_stateReg;
  reg        [1:0]    axi_store_req_ok_fsm_stateNext;
  reg        [1:0]    axi_store_fsm_stateReg;
  reg        [1:0]    axi_store_fsm_stateNext;
  reg        [1:0]    axi_fetch_fsm_stateReg;
  reg        [1:0]    axi_fetch_fsm_stateNext;
  reg        [1:0]    axi_load_fsm_stateReg;
  reg        [1:0]    axi_load_fsm_stateNext;
  reg        [1:0]    axi_exp_fetch_fsm_stateReg;
  reg        [1:0]    axi_exp_fetch_fsm_stateNext;

  always @(*) begin
    axi_store_req_ok1 = 1'b0; // @ bus_if.scala l52
    case(axi_store_req_ok_fsm_stateNext)
      axi_store_req_ok_fsm_enumDef_AWOK : begin
      end
      axi_store_req_ok_fsm_enumDef_WOK : begin
      end
      axi_store_req_ok_fsm_enumDef_REQOK : begin
        axi_store_req_ok1 = 1'b1; // @ bus_if.scala l117
      end
      default : begin
      end
    endcase
  end

  assign axi_store_req_ok_fsm_wantExit = 1'b0; // @ StateMachine.scala l151
  always @(*) begin
    axi_store_req_ok_fsm_wantStart = 1'b0; // @ StateMachine.scala l152
    case(axi_store_req_ok_fsm_stateReg)
      axi_store_req_ok_fsm_enumDef_AWOK : begin
      end
      axi_store_req_ok_fsm_enumDef_WOK : begin
      end
      axi_store_req_ok_fsm_enumDef_REQOK : begin
      end
      default : begin
        axi_store_req_ok_fsm_wantStart = 1'b1; // @ StateMachine.scala l362
      end
    endcase
  end

  assign axi_store_req_ok_fsm_wantKill = 1'b0; // @ StateMachine.scala l153
  assign axi_store_req_ok2 = ((axi_store_req_ok_fsm_stateReg == axi_store_req_ok_fsm_enumDef_REQOK) && mem_allowin); // @ bus_if.scala l118
  assign axi_store_req_ok = (axi_store_req_ok1 || axi_store_req_ok2); // @ bus_if.scala l119
  assign axi_is_reqok = (axi_store_req_ok_fsm_stateReg == axi_store_req_ok_fsm_enumDef_REQOK); // @ bus_if.scala l120
  assign axi_is_wok = (axi_store_req_ok_fsm_stateReg == axi_store_req_ok_fsm_enumDef_WOK); // @ bus_if.scala l121
  assign axi_is_awok = (axi_store_req_ok_fsm_stateReg == axi_store_req_ok_fsm_enumDef_AWOK); // @ bus_if.scala l122
  assign axi_store_fsm_wantExit = 1'b0; // @ StateMachine.scala l151
  always @(*) begin
    axi_store_fsm_wantStart = 1'b0; // @ StateMachine.scala l152
    case(axi_store_fsm_stateReg)
      axi_store_fsm_enumDef_REQ : begin
      end
      axi_store_fsm_enumDef_WAIT_1 : begin
      end
      default : begin
        axi_store_fsm_wantStart = 1'b1; // @ StateMachine.scala l362
      end
    endcase
  end

  assign axi_store_fsm_wantKill = 1'b0; // @ StateMachine.scala l153
  assign axi_grant_w_temp = (! ((axi_store_fsm_stateReg == axi_store_fsm_enumDef_WAIT_1) && (! axi_b_valid))); // @ bus_if.scala l158
  assign axi_grant_w = (! ((axi_store_fsm_stateReg == axi_store_fsm_enumDef_WAIT_1) && (! (axi_b_valid && axi_b_ready)))); // @ bus_if.scala l159
  assign axi_store_busy = (ex_mem_we || (! axi_grant_w)); // @ bus_if.scala l160
  assign axi_is_wait = (axi_store_fsm_stateReg == axi_store_fsm_enumDef_WAIT_1); // @ bus_if.scala l161
  assign store_hand_suc = (axi_b_valid && axi_b_ready); // @ bus_if.scala l163
  assign store_req_ok = axi_store_req_ok; // @ bus_if.scala l164
  assign axi_aw_payload_id = 4'b0001; // @ bus_if.scala l166
  assign axi_aw_payload_addr = ex_ls_addr; // @ bus_if.scala l167
  assign axi_aw_payload_len = 8'h00; // @ bus_if.scala l168
  assign axi_aw_payload_size = {1'b0,size}; // @ bus_if.scala l169
  assign axi_aw_payload_burst = 2'b01; // @ bus_if.scala l170
  assign axi_aw_payload_lock = 2'b00; // @ bus_if.scala l171
  assign axi_aw_payload_cache = 4'b0000; // @ bus_if.scala l172
  assign axi_aw_payload_prot = 3'b000; // @ bus_if.scala l173
  assign axi_aw_valid = (((ex_mem_we && axi_grant_w) && (! ((axi_is_wait && axi_is_reqok) && (! axi_b_valid)))) && (! axi_is_awok)); // @ bus_if.scala l174
  assign axi_w_payload_id = 4'b0001; // @ bus_if.scala l177
  assign axi_w_payload_data = store_data; // @ bus_if.scala l178
  assign axi_w_payload_strb = ex_byte_we; // @ bus_if.scala l179
  assign axi_w_payload_last = 1'b1; // @ bus_if.scala l180
  assign axi_w_valid = (((ex_mem_we && axi_grant_w) && (! ((axi_is_wait && axi_is_reqok) && (! axi_b_valid)))) && (! axi_is_wok)); // @ bus_if.scala l181
  assign axi_b_ready = axi_bready; // @ bus_if.scala l193
  assign axi_raw_risk2fetch = (axi_store_busy && ((ex_ls_addr[31 : 2] == pc[31 : 2]) || (axi_waddr_reg == pc[31 : 2]))); // @ bus_if.scala l198
  assign axi_raw_risk2load = (axi_store_busy && (axi_waddr_reg == ex_ls_addr[31 : 2])); // @ bus_if.scala l199
  assign axi_fetch_fsm_wantExit = 1'b0; // @ StateMachine.scala l151
  always @(*) begin
    axi_fetch_fsm_wantStart = 1'b0; // @ StateMachine.scala l152
    case(axi_fetch_fsm_stateReg)
      axi_fetch_fsm_enumDef_REQ : begin
      end
      axi_fetch_fsm_enumDef_WAIT_1 : begin
      end
      default : begin
        axi_fetch_fsm_wantStart = 1'b1; // @ StateMachine.scala l362
      end
    endcase
  end

  assign axi_fetch_fsm_wantKill = 1'b0; // @ StateMachine.scala l153
  assign axi_fetch_busy = ((axi_fetch_fsm_stateReg == axi_fetch_fsm_enumDef_WAIT_1) || (axi_fetch_fsm_stateReg == axi_fetch_fsm_enumDef_REQ)); // @ bus_if.scala l226
  assign axi_grant_i = (axi_fetch_busy || ((axi_fetch_fsm_stateNext != axi_fetch_fsm_enumDef_IDLE) && (axi_fetch_fsm_stateReg == axi_fetch_fsm_enumDef_IDLE))); // @ bus_if.scala l227
  assign axi_load_fsm_wantExit = 1'b0; // @ StateMachine.scala l151
  always @(*) begin
    axi_load_fsm_wantStart = 1'b0; // @ StateMachine.scala l152
    case(axi_load_fsm_stateReg)
      axi_load_fsm_enumDef_REQ : begin
      end
      axi_load_fsm_enumDef_WAIT_1 : begin
      end
      default : begin
        axi_load_fsm_wantStart = 1'b1; // @ StateMachine.scala l362
      end
    endcase
  end

  assign axi_load_fsm_wantKill = 1'b0; // @ StateMachine.scala l153
  assign axi_load_busy = (((axi_load_fsm_stateReg == axi_load_fsm_enumDef_REQ) || (axi_load_fsm_stateReg == axi_load_fsm_enumDef_WAIT_1)) || ((axi_load_fsm_stateNext != axi_load_fsm_enumDef_IDLE) && (axi_load_fsm_stateReg == axi_load_fsm_enumDef_IDLE))); // @ bus_if.scala l261
  assign axi_grant_d = axi_load_busy; // @ bus_if.scala l262
  assign load_req_ok = (axi_load_req_ok_reg || (axi_load_arvalid && axi_ar_ready)); // @ bus_if.scala l275
  assign axi_load_arvalid = ((ex_mem_re && axi_grant_d) && (axi_load_arvalid_en || load_hand_suc)); // @ bus_if.scala l285
  assign axi_fetch_arvalid = ((inst_req && axi_grant_i) && axi_fetch_arvalid_en); // @ bus_if.scala l293
  assign axi_fetch_rready = 1'b1; // @ bus_if.scala l304
  assign load_hand_suc = ((axi_load_rready && axi_r_valid) && axi_grant_d); // @ bus_if.scala l306
  assign fetch_hand_suc = ((axi_fetch_rready && axi_r_valid) && axi_grant_i); // @ bus_if.scala l307
  assign axi_ar_payload_id = (axi_grant_d ? 4'b0001 : (axi_grant_i ? 4'b0000 : 4'b0000)); // @ bus_if.scala l310
  assign axi_ar_payload_addr = (axi_grant_d ? ex_ls_addr : (axi_grant_i ? pc : 32'h00000000)); // @ bus_if.scala l311
  assign axi_ar_payload_len = 8'h00; // @ bus_if.scala l312
  assign axi_ar_payload_size = (axi_grant_d ? {1'b0,size} : (axi_grant_i ? 3'b010 : 3'b000)); // @ bus_if.scala l313
  assign axi_ar_payload_burst = 2'b01; // @ bus_if.scala l314
  assign axi_ar_payload_lock = 2'b00; // @ bus_if.scala l315
  assign axi_ar_payload_cache = 4'b0000; // @ bus_if.scala l316
  assign axi_ar_payload_prot = 3'b000; // @ bus_if.scala l317
  assign axi_ar_valid = (axi_grant_d ? axi_load_arvalid : (axi_grant_i ? axi_fetch_arvalid : 1'b0)); // @ bus_if.scala l318
  assign axi_r_ready = (axi_grant_d ? axi_load_rready : (axi_grant_i ? axi_fetch_rready : 1'b0)); // @ bus_if.scala l321
  assign axi_read_data = axi_r_payload_data; // @ bus_if.scala l323
  assign axi_exp_fetch_fsm_wantExit = 1'b0; // @ StateMachine.scala l151
  always @(*) begin
    axi_exp_fetch_fsm_wantStart = 1'b0; // @ StateMachine.scala l152
    case(axi_exp_fetch_fsm_stateReg)
      axi_exp_fetch_fsm_enumDef_EXP : begin
      end
      axi_exp_fetch_fsm_enumDef_USELESS : begin
      end
      default : begin
        axi_exp_fetch_fsm_wantStart = 1'b1; // @ StateMachine.scala l362
      end
    endcase
  end

  assign axi_exp_fetch_fsm_wantKill = 1'b0; // @ StateMachine.scala l153
  assign inst_useless = (axi_exp_fetch_fsm_stateReg == axi_exp_fetch_fsm_enumDef_USELESS); // @ bus_if.scala l353
  assign jump2exp = ((axi_exp_fetch_fsm_stateNext == axi_exp_fetch_fsm_enumDef_EXP) && (axi_exp_fetch_fsm_stateReg != axi_exp_fetch_fsm_enumDef_EXP)); // @ bus_if.scala l354
  assign inst_reg = axi_exp_fetch_fsm_inst_reg; // @ bus_if.scala l356
  assign inst_valid = axi_exp_fetch_fsm_inst_valid; // @ bus_if.scala l367
  always @(*) begin
    axi_store_req_ok_fsm_stateNext = axi_store_req_ok_fsm_stateReg; // @ StateMachine.scala l217
    case(axi_store_req_ok_fsm_stateReg)
      axi_store_req_ok_fsm_enumDef_AWOK : begin
        if(axi_w_ready) begin
          axi_store_req_ok_fsm_stateNext = axi_store_req_ok_fsm_enumDef_REQOK; // @ Enum.scala l151
        end
      end
      axi_store_req_ok_fsm_enumDef_WOK : begin
        if(axi_aw_ready) begin
          axi_store_req_ok_fsm_stateNext = axi_store_req_ok_fsm_enumDef_REQOK; // @ Enum.scala l151
        end
      end
      axi_store_req_ok_fsm_enumDef_REQOK : begin
        if((ex_mem_we && axi_grant_w_temp)) begin
          if((! mem_allowin)) begin
            axi_store_req_ok_fsm_stateNext = axi_store_req_ok_fsm_enumDef_REQOK; // @ Enum.scala l151
          end else begin
            if((mem_allowin && (! axi_store_req_ok_fsm_mem_allowin_reg))) begin
              axi_store_req_ok_fsm_stateNext = axi_store_req_ok_fsm_enumDef_IDLE; // @ Enum.scala l151
            end else begin
              if((axi_aw_ready && axi_w_ready)) begin
                axi_store_req_ok_fsm_stateNext = axi_store_req_ok_fsm_enumDef_REQOK; // @ Enum.scala l151
              end else begin
                if(axi_aw_ready) begin
                  axi_store_req_ok_fsm_stateNext = axi_store_req_ok_fsm_enumDef_AWOK; // @ Enum.scala l151
                end else begin
                  if(axi_w_ready) begin
                    axi_store_req_ok_fsm_stateNext = axi_store_req_ok_fsm_enumDef_WOK; // @ Enum.scala l151
                  end else begin
                    axi_store_req_ok_fsm_stateNext = axi_store_req_ok_fsm_enumDef_IDLE; // @ Enum.scala l151
                  end
                end
              end
            end
          end
        end else begin
          axi_store_req_ok_fsm_stateNext = axi_store_req_ok_fsm_enumDef_IDLE; // @ Enum.scala l151
        end
      end
      default : begin
        if((ex_mem_we && axi_grant_w)) begin
          if((axi_aw_ready && axi_w_ready)) begin
            axi_store_req_ok_fsm_stateNext = axi_store_req_ok_fsm_enumDef_REQOK; // @ Enum.scala l151
          end else begin
            if(axi_aw_ready) begin
              axi_store_req_ok_fsm_stateNext = axi_store_req_ok_fsm_enumDef_AWOK; // @ Enum.scala l151
            end else begin
              if(axi_w_ready) begin
                axi_store_req_ok_fsm_stateNext = axi_store_req_ok_fsm_enumDef_WOK; // @ Enum.scala l151
              end else begin
                axi_store_req_ok_fsm_stateNext = axi_store_req_ok_fsm_enumDef_IDLE; // @ Enum.scala l151
              end
            end
          end
        end else begin
          axi_store_req_ok_fsm_stateNext = axi_store_req_ok_fsm_enumDef_IDLE; // @ Enum.scala l151
        end
      end
    endcase
    if(axi_store_req_ok_fsm_wantKill) begin
      axi_store_req_ok_fsm_stateNext = axi_store_req_ok_fsm_enumDef_IDLE; // @ Enum.scala l151
    end
  end

  always @(*) begin
    axi_store_fsm_stateNext = axi_store_fsm_stateReg; // @ StateMachine.scala l217
    case(axi_store_fsm_stateReg)
      axi_store_fsm_enumDef_REQ : begin
        if(axi_store_req_ok) begin
          axi_store_fsm_stateNext = axi_store_fsm_enumDef_WAIT_1; // @ Enum.scala l151
        end else begin
          axi_store_fsm_stateNext = axi_store_fsm_enumDef_REQ; // @ Enum.scala l151
        end
      end
      axi_store_fsm_enumDef_WAIT_1 : begin
        if((axi_b_valid && axi_b_ready)) begin
          if(ex_mem_we) begin
            if(axi_store_req_ok) begin
              axi_store_fsm_stateNext = axi_store_fsm_enumDef_WAIT_1; // @ Enum.scala l151
            end else begin
              axi_store_fsm_stateNext = axi_store_fsm_enumDef_REQ; // @ Enum.scala l151
            end
          end else begin
            axi_store_fsm_stateNext = axi_store_fsm_enumDef_IDLE; // @ Enum.scala l151
          end
        end else begin
          axi_store_fsm_stateNext = axi_store_fsm_enumDef_WAIT_1; // @ Enum.scala l151
        end
      end
      default : begin
        if((ex_mem_we && (! axi_store_req_ok))) begin
          axi_store_fsm_stateNext = axi_store_fsm_enumDef_REQ; // @ Enum.scala l151
        end else begin
          if((ex_mem_we && axi_store_req_ok)) begin
            axi_store_fsm_stateNext = axi_store_fsm_enumDef_WAIT_1; // @ Enum.scala l151
          end else begin
            axi_store_fsm_stateNext = axi_store_fsm_enumDef_IDLE; // @ Enum.scala l151
          end
        end
      end
    endcase
    if(axi_store_fsm_wantKill) begin
      axi_store_fsm_stateNext = axi_store_fsm_enumDef_IDLE; // @ Enum.scala l151
    end
  end

  always @(*) begin
    axi_fetch_fsm_stateNext = axi_fetch_fsm_stateReg; // @ StateMachine.scala l217
    case(axi_fetch_fsm_stateReg)
      axi_fetch_fsm_enumDef_REQ : begin
        if(axi_ar_ready) begin
          axi_fetch_fsm_stateNext = axi_fetch_fsm_enumDef_WAIT_1; // @ Enum.scala l151
        end else begin
          axi_fetch_fsm_stateNext = axi_fetch_fsm_enumDef_REQ; // @ Enum.scala l151
        end
      end
      axi_fetch_fsm_enumDef_WAIT_1 : begin
        if((axi_r_valid && axi_fetch_rready)) begin
          axi_fetch_fsm_stateNext = axi_fetch_fsm_enumDef_IDLE; // @ Enum.scala l151
        end else begin
          axi_fetch_fsm_stateNext = axi_fetch_fsm_enumDef_WAIT_1; // @ Enum.scala l151
        end
      end
      default : begin
        if(((inst_req && (! axi_raw_risk2fetch)) && (! axi_load_busy))) begin
          if(axi_ar_ready) begin
            axi_fetch_fsm_stateNext = axi_fetch_fsm_enumDef_WAIT_1; // @ Enum.scala l151
          end else begin
            axi_fetch_fsm_stateNext = axi_fetch_fsm_enumDef_REQ; // @ Enum.scala l151
          end
        end else begin
          axi_fetch_fsm_stateNext = axi_fetch_fsm_enumDef_IDLE; // @ Enum.scala l151
        end
      end
    endcase
    if(axi_fetch_fsm_wantKill) begin
      axi_fetch_fsm_stateNext = axi_fetch_fsm_enumDef_IDLE; // @ Enum.scala l151
    end
  end

  always @(*) begin
    axi_load_fsm_stateNext = axi_load_fsm_stateReg; // @ StateMachine.scala l217
    case(axi_load_fsm_stateReg)
      axi_load_fsm_enumDef_REQ : begin
        if(axi_ar_ready) begin
          axi_load_fsm_stateNext = axi_load_fsm_enumDef_WAIT_1; // @ Enum.scala l151
        end else begin
          axi_load_fsm_stateNext = axi_load_fsm_enumDef_REQ; // @ Enum.scala l151
        end
      end
      axi_load_fsm_enumDef_WAIT_1 : begin
        if((axi_r_valid && axi_load_rready)) begin
          if(((ex_mem_re && (! axi_raw_risk2load)) && (! axi_fetch_busy))) begin
            if(axi_ar_ready) begin
              axi_load_fsm_stateNext = axi_load_fsm_enumDef_WAIT_1; // @ Enum.scala l151
            end else begin
              axi_load_fsm_stateNext = axi_load_fsm_enumDef_REQ; // @ Enum.scala l151
            end
          end else begin
            axi_load_fsm_stateNext = axi_load_fsm_enumDef_IDLE; // @ Enum.scala l151
          end
        end else begin
          axi_load_fsm_stateNext = axi_load_fsm_enumDef_WAIT_1; // @ Enum.scala l151
        end
      end
      default : begin
        if(((ex_mem_re && (! axi_raw_risk2load)) && (! axi_fetch_busy))) begin
          if(axi_ar_ready) begin
            axi_load_fsm_stateNext = axi_load_fsm_enumDef_WAIT_1; // @ Enum.scala l151
          end else begin
            axi_load_fsm_stateNext = axi_load_fsm_enumDef_REQ; // @ Enum.scala l151
          end
        end else begin
          axi_load_fsm_stateNext = axi_load_fsm_enumDef_IDLE; // @ Enum.scala l151
        end
      end
    endcase
    if(axi_load_fsm_wantKill) begin
      axi_load_fsm_stateNext = axi_load_fsm_enumDef_IDLE; // @ Enum.scala l151
    end
  end

  always @(*) begin
    axi_exp_fetch_fsm_stateNext = axi_exp_fetch_fsm_stateReg; // @ StateMachine.scala l217
    case(axi_exp_fetch_fsm_stateReg)
      axi_exp_fetch_fsm_enumDef_EXP : begin
        if((axi_r_valid && axi_r_ready)) begin
          axi_exp_fetch_fsm_stateNext = axi_exp_fetch_fsm_enumDef_IDLE; // @ Enum.scala l151
        end else begin
          axi_exp_fetch_fsm_stateNext = axi_exp_fetch_fsm_enumDef_EXP; // @ Enum.scala l151
        end
      end
      axi_exp_fetch_fsm_enumDef_USELESS : begin
        if((axi_r_valid && axi_r_ready)) begin
          axi_exp_fetch_fsm_stateNext = axi_exp_fetch_fsm_enumDef_EXP; // @ Enum.scala l151
        end else begin
          axi_exp_fetch_fsm_stateNext = axi_exp_fetch_fsm_enumDef_USELESS; // @ Enum.scala l151
        end
      end
      default : begin
        if(wb_exp_int_flag) begin
          if(inst_req) begin
            if((axi_r_valid && axi_r_ready)) begin
              axi_exp_fetch_fsm_stateNext = axi_exp_fetch_fsm_enumDef_EXP; // @ Enum.scala l151
            end else begin
              axi_exp_fetch_fsm_stateNext = axi_exp_fetch_fsm_enumDef_USELESS; // @ Enum.scala l151
            end
          end else begin
            axi_exp_fetch_fsm_stateNext = axi_exp_fetch_fsm_enumDef_EXP; // @ Enum.scala l151
          end
        end else begin
          axi_exp_fetch_fsm_stateNext = axi_exp_fetch_fsm_enumDef_IDLE; // @ Enum.scala l151
        end
      end
    endcase
    if(axi_exp_fetch_fsm_wantKill) begin
      axi_exp_fetch_fsm_stateNext = axi_exp_fetch_fsm_enumDef_IDLE; // @ Enum.scala l151
    end
  end

  always @(posedge aclk or negedge aresetn) begin
    if(!aresetn) begin
      axi_store_req_ok_fsm_mem_allowin_reg <= 1'b1; // @ Data.scala l403
      axi_bready <= 1'b0; // @ Data.scala l403
      axi_waddr_reg <= 30'h00000000; // @ Data.scala l403
      axi_load_req_ok_reg <= 1'b0; // @ Data.scala l403
      axi_load_arvalid_en <= 1'b1; // @ Data.scala l403
      axi_fetch_arvalid_en <= 1'b1; // @ Data.scala l403
      axi_load_rready <= 1'b0; // @ Data.scala l403
      axi_exp_fetch_fsm_inst_reg <= 32'h00000000; // @ Data.scala l403
      axi_exp_fetch_fsm_inst_valid <= 1'b0; // @ Data.scala l403
      axi_store_req_ok_fsm_stateReg <= axi_store_req_ok_fsm_enumDef_IDLE; // @ Data.scala l403
      axi_store_fsm_stateReg <= axi_store_fsm_enumDef_IDLE; // @ Data.scala l403
      axi_fetch_fsm_stateReg <= axi_fetch_fsm_enumDef_IDLE; // @ Data.scala l403
      axi_load_fsm_stateReg <= axi_load_fsm_enumDef_IDLE; // @ Data.scala l403
      axi_exp_fetch_fsm_stateReg <= axi_exp_fetch_fsm_enumDef_IDLE; // @ Data.scala l403
    end else begin
      axi_store_req_ok_fsm_mem_allowin_reg <= mem_allowin; // @ Reg.scala l39
      if((ex_mem_valid && mem_allowin)) begin
        axi_bready <= 1'b1; // @ bus_if.scala l186
      end else begin
        if((ex_mem_we && axi_grant_w)) begin
          axi_bready <= 1'b0; // @ bus_if.scala l188
        end else begin
          axi_bready <= axi_bready; // @ bus_if.scala l190
        end
      end
      if((ex_mem_we && axi_grant_w)) begin
        axi_waddr_reg <= ex_ls_addr[31 : 2]; // @ bus_if.scala l197
      end
      if((ex_mem_valid && mem_allowin)) begin
        axi_load_req_ok_reg <= 1'b0; // @ bus_if.scala l269
      end else begin
        if((axi_load_arvalid && axi_ar_ready)) begin
          axi_load_req_ok_reg <= 1'b1; // @ bus_if.scala l271
        end else begin
          axi_load_req_ok_reg <= axi_load_req_ok_reg; // @ bus_if.scala l273
        end
      end
      if(((axi_ar_valid && axi_ar_ready) && axi_grant_d)) begin
        axi_load_arvalid_en <= 1'b0; // @ bus_if.scala l281
      end else begin
        if(load_hand_suc) begin
          axi_load_arvalid_en <= 1'b1; // @ bus_if.scala l283
        end
      end
      if((axi_fetch_arvalid && axi_ar_ready)) begin
        axi_fetch_arvalid_en <= 1'b0; // @ bus_if.scala l289
      end else begin
        if(((if_id_valid && id_allowin) || jump2exp)) begin
          axi_fetch_arvalid_en <= 1'b1; // @ bus_if.scala l291
        end
      end
      if((ex_mem_valid && mem_allowin)) begin
        axi_load_rready <= 1'b1; // @ bus_if.scala l297
      end else begin
        if(axi_load_arvalid) begin
          axi_load_rready <= 1'b0; // @ bus_if.scala l299
        end else begin
          axi_load_rready <= axi_load_rready; // @ bus_if.scala l301
        end
      end
      if(fetch_hand_suc) begin
        axi_exp_fetch_fsm_inst_reg <= axi_read_data; // @ bus_if.scala l355
      end
      if(wb_exp_int_flag) begin
        axi_exp_fetch_fsm_inst_valid <= 1'b0; // @ bus_if.scala l359
      end else begin
        if((axi_exp_fetch_fsm_inst_valid && id_allowin)) begin
          axi_exp_fetch_fsm_inst_valid <= 1'b0; // @ bus_if.scala l361
        end else begin
          if(fetch_hand_suc) begin
            axi_exp_fetch_fsm_inst_valid <= (! id_allowin); // @ bus_if.scala l363
          end else begin
            axi_exp_fetch_fsm_inst_valid <= axi_exp_fetch_fsm_inst_valid; // @ bus_if.scala l365
          end
        end
      end
      axi_store_req_ok_fsm_stateReg <= axi_store_req_ok_fsm_stateNext; // @ StateMachine.scala l212
      axi_store_fsm_stateReg <= axi_store_fsm_stateNext; // @ StateMachine.scala l212
      axi_fetch_fsm_stateReg <= axi_fetch_fsm_stateNext; // @ StateMachine.scala l212
      axi_load_fsm_stateReg <= axi_load_fsm_stateNext; // @ StateMachine.scala l212
      axi_exp_fetch_fsm_stateReg <= axi_exp_fetch_fsm_stateNext; // @ StateMachine.scala l212
    end
  end


endmodule
