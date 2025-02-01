module axi_xbar (
  input  wire          masters_ar_valid,
  output wire          masters_ar_ready,
  input  wire [3:0]    masters_ar_payload_id,
  input  wire [31:0]   masters_ar_payload_addr,
  input  wire [7:0]    masters_ar_payload_len,
  input  wire [2:0]    masters_ar_payload_size,
  input  wire [1:0]    masters_ar_payload_burst,
  input  wire [1:0]    masters_ar_payload_lock,
  input  wire [3:0]    masters_ar_payload_cache,
  input  wire [2:0]    masters_ar_payload_prot,
  output wire          masters_r_valid,
  input  wire          masters_r_ready,
  output wire [3:0]    masters_r_payload_id,
  output wire [31:0]   masters_r_payload_data,
  output wire [1:0]    masters_r_payload_resp,
  output wire          masters_r_payload_last,
  input  wire          masters_aw_valid,
  output wire          masters_aw_ready,
  input  wire [3:0]    masters_aw_payload_id,
  input  wire [31:0]   masters_aw_payload_addr,
  input  wire [7:0]    masters_aw_payload_len,
  input  wire [2:0]    masters_aw_payload_size,
  input  wire [1:0]    masters_aw_payload_burst,
  input  wire [1:0]    masters_aw_payload_lock,
  input  wire [3:0]    masters_aw_payload_cache,
  input  wire [2:0]    masters_aw_payload_prot,
  input  wire          masters_w_valid,
  output wire          masters_w_ready,
  input  wire [3:0]    masters_w_payload_id,
  input  wire [31:0]   masters_w_payload_data,
  input  wire [3:0]    masters_w_payload_strb,
  input  wire          masters_w_payload_last,
  output wire          masters_b_valid,
  input  wire          masters_b_ready,
  output wire [3:0]    masters_b_payload_id,
  output wire [1:0]    masters_b_payload_resp,
  output wire          slaves_0_ar_valid,
  input  wire          slaves_0_ar_ready,
  output wire [3:0]    slaves_0_ar_payload_id,
  output wire [31:0]   slaves_0_ar_payload_addr,
  output wire [7:0]    slaves_0_ar_payload_len,
  output wire [2:0]    slaves_0_ar_payload_size,
  output wire [1:0]    slaves_0_ar_payload_burst,
  output wire [1:0]    slaves_0_ar_payload_lock,
  output wire [3:0]    slaves_0_ar_payload_cache,
  output wire [2:0]    slaves_0_ar_payload_prot,
  input  wire          slaves_0_r_valid,
  output wire          slaves_0_r_ready,
  input  wire [3:0]    slaves_0_r_payload_id,
  input  wire [31:0]   slaves_0_r_payload_data,
  input  wire [1:0]    slaves_0_r_payload_resp,
  input  wire          slaves_0_r_payload_last,
  output wire          slaves_0_aw_valid,
  input  wire          slaves_0_aw_ready,
  output wire [3:0]    slaves_0_aw_payload_id,
  output wire [31:0]   slaves_0_aw_payload_addr,
  output wire [7:0]    slaves_0_aw_payload_len,
  output wire [2:0]    slaves_0_aw_payload_size,
  output wire [1:0]    slaves_0_aw_payload_burst,
  output wire [1:0]    slaves_0_aw_payload_lock,
  output wire [3:0]    slaves_0_aw_payload_cache,
  output wire [2:0]    slaves_0_aw_payload_prot,
  output wire          slaves_0_w_valid,
  input  wire          slaves_0_w_ready,
  output wire [3:0]    slaves_0_w_payload_id,
  output wire [31:0]   slaves_0_w_payload_data,
  output wire [3:0]    slaves_0_w_payload_strb,
  output wire          slaves_0_w_payload_last,
  input  wire          slaves_0_b_valid,
  output wire          slaves_0_b_ready,
  input  wire [3:0]    slaves_0_b_payload_id,
  input  wire [1:0]    slaves_0_b_payload_resp,
  output wire          slaves_1_ar_valid,
  input  wire          slaves_1_ar_ready,
  output wire [3:0]    slaves_1_ar_payload_id,
  output wire [31:0]   slaves_1_ar_payload_addr,
  output wire [7:0]    slaves_1_ar_payload_len,
  output wire [2:0]    slaves_1_ar_payload_size,
  output wire [1:0]    slaves_1_ar_payload_burst,
  output wire [1:0]    slaves_1_ar_payload_lock,
  output wire [3:0]    slaves_1_ar_payload_cache,
  output wire [2:0]    slaves_1_ar_payload_prot,
  input  wire          slaves_1_r_valid,
  output wire          slaves_1_r_ready,
  input  wire [3:0]    slaves_1_r_payload_id,
  input  wire [31:0]   slaves_1_r_payload_data,
  input  wire [1:0]    slaves_1_r_payload_resp,
  input  wire          slaves_1_r_payload_last,
  output wire          slaves_1_aw_valid,
  input  wire          slaves_1_aw_ready,
  output wire [3:0]    slaves_1_aw_payload_id,
  output wire [31:0]   slaves_1_aw_payload_addr,
  output wire [7:0]    slaves_1_aw_payload_len,
  output wire [2:0]    slaves_1_aw_payload_size,
  output wire [1:0]    slaves_1_aw_payload_burst,
  output wire [1:0]    slaves_1_aw_payload_lock,
  output wire [3:0]    slaves_1_aw_payload_cache,
  output wire [2:0]    slaves_1_aw_payload_prot,
  output wire          slaves_1_w_valid,
  input  wire          slaves_1_w_ready,
  output wire [3:0]    slaves_1_w_payload_id,
  output wire [31:0]   slaves_1_w_payload_data,
  output wire [3:0]    slaves_1_w_payload_strb,
  output wire          slaves_1_w_payload_last,
  input  wire          slaves_1_b_valid,
  output wire          slaves_1_b_ready,
  input  wire [3:0]    slaves_1_b_payload_id,
  input  wire [1:0]    slaves_1_b_payload_resp,
  input  wire          clk_gate,
  input  wire          rst_n
);

  reg                 _zz_masters_ar_ready;
  reg        [3:0]    _zz_masters_r_payload_id;
  reg        [31:0]   _zz_masters_r_payload_data;
  reg        [1:0]    _zz_masters_r_payload_resp;
  reg                 _zz_masters_r_payload_last;
  reg                 _zz_masters_r_valid;
  reg                 _zz_masters_aw_ready;
  reg                 _zz_masters_w_ready;
  reg        [3:0]    _zz_masters_b_payload_id;
  reg        [1:0]    _zz_masters_b_payload_resp;
  reg                 _zz_masters_b_valid;
  reg        [0:0]    myClockingArea_arSlaveSelect;
  reg        [0:0]    myClockingArea_rSlaveSelect;
  reg        [0:0]    myClockingArea_awSlaveSelect;
  reg        [0:0]    myClockingArea_bSlaveSelect;

  always @(*) begin
    case(myClockingArea_arSlaveSelect)
      1'b0 : _zz_masters_ar_ready = slaves_0_ar_ready;
      default : _zz_masters_ar_ready = slaves_1_ar_ready;
    endcase
  end

  always @(*) begin
    case(myClockingArea_rSlaveSelect)
      1'b0 : begin
        _zz_masters_r_payload_id = slaves_0_r_payload_id;
        _zz_masters_r_payload_data = slaves_0_r_payload_data;
        _zz_masters_r_payload_resp = slaves_0_r_payload_resp;
        _zz_masters_r_payload_last = slaves_0_r_payload_last;
        _zz_masters_r_valid = slaves_0_r_valid;
      end
      default : begin
        _zz_masters_r_payload_id = slaves_1_r_payload_id;
        _zz_masters_r_payload_data = slaves_1_r_payload_data;
        _zz_masters_r_payload_resp = slaves_1_r_payload_resp;
        _zz_masters_r_payload_last = slaves_1_r_payload_last;
        _zz_masters_r_valid = slaves_1_r_valid;
      end
    endcase
  end

  always @(*) begin
    case(myClockingArea_awSlaveSelect)
      1'b0 : begin
        _zz_masters_aw_ready = slaves_0_aw_ready;
        _zz_masters_w_ready = slaves_0_w_ready;
      end
      default : begin
        _zz_masters_aw_ready = slaves_1_aw_ready;
        _zz_masters_w_ready = slaves_1_w_ready;
      end
    endcase
  end

  always @(*) begin
    case(myClockingArea_bSlaveSelect)
      1'b0 : begin
        _zz_masters_b_payload_id = slaves_0_b_payload_id;
        _zz_masters_b_payload_resp = slaves_0_b_payload_resp;
        _zz_masters_b_valid = slaves_0_b_valid;
      end
      default : begin
        _zz_masters_b_payload_id = slaves_1_b_payload_id;
        _zz_masters_b_payload_resp = slaves_1_b_payload_resp;
        _zz_masters_b_valid = slaves_1_b_valid;
      end
    endcase
  end

  always @(*) begin
    myClockingArea_arSlaveSelect = 1'b0; // @ axi_xbar.scala l24
    if(((32'h00000000 <= masters_ar_payload_addr) && (masters_ar_payload_addr < 32'h02000000))) begin
      myClockingArea_arSlaveSelect = 1'b0; // @ axi_xbar.scala l27
    end
    if(((32'h02000000 <= masters_ar_payload_addr) && (masters_ar_payload_addr < 32'h03000000))) begin
      myClockingArea_arSlaveSelect = 1'b1; // @ axi_xbar.scala l27
    end
  end

  assign slaves_0_ar_valid = (masters_ar_valid && (myClockingArea_arSlaveSelect == 1'b0)); // @ axi_xbar.scala l36
  assign slaves_0_ar_payload_id = masters_ar_payload_id; // @ axi_xbar.scala l37
  assign slaves_0_ar_payload_addr = masters_ar_payload_addr; // @ axi_xbar.scala l37
  assign slaves_0_ar_payload_len = masters_ar_payload_len; // @ axi_xbar.scala l37
  assign slaves_0_ar_payload_size = masters_ar_payload_size; // @ axi_xbar.scala l37
  assign slaves_0_ar_payload_burst = masters_ar_payload_burst; // @ axi_xbar.scala l37
  assign slaves_0_ar_payload_lock = masters_ar_payload_lock; // @ axi_xbar.scala l37
  assign slaves_0_ar_payload_cache = masters_ar_payload_cache; // @ axi_xbar.scala l37
  assign slaves_0_ar_payload_prot = masters_ar_payload_prot; // @ axi_xbar.scala l37
  assign slaves_1_ar_valid = (masters_ar_valid && (myClockingArea_arSlaveSelect == 1'b1)); // @ axi_xbar.scala l36
  assign slaves_1_ar_payload_id = masters_ar_payload_id; // @ axi_xbar.scala l37
  assign slaves_1_ar_payload_addr = masters_ar_payload_addr; // @ axi_xbar.scala l37
  assign slaves_1_ar_payload_len = masters_ar_payload_len; // @ axi_xbar.scala l37
  assign slaves_1_ar_payload_size = masters_ar_payload_size; // @ axi_xbar.scala l37
  assign slaves_1_ar_payload_burst = masters_ar_payload_burst; // @ axi_xbar.scala l37
  assign slaves_1_ar_payload_lock = masters_ar_payload_lock; // @ axi_xbar.scala l37
  assign slaves_1_ar_payload_cache = masters_ar_payload_cache; // @ axi_xbar.scala l37
  assign slaves_1_ar_payload_prot = masters_ar_payload_prot; // @ axi_xbar.scala l37
  assign masters_ar_ready = _zz_masters_ar_ready; // @ axi_xbar.scala l39
  assign masters_r_payload_id = _zz_masters_r_payload_id; // @ axi_xbar.scala l43
  assign masters_r_payload_data = _zz_masters_r_payload_data; // @ axi_xbar.scala l43
  assign masters_r_payload_resp = _zz_masters_r_payload_resp; // @ axi_xbar.scala l43
  assign masters_r_payload_last = _zz_masters_r_payload_last; // @ axi_xbar.scala l43
  assign masters_r_valid = _zz_masters_r_valid; // @ axi_xbar.scala l44
  assign slaves_0_r_ready = masters_r_ready; // @ axi_xbar.scala l46
  assign slaves_1_r_ready = masters_r_ready; // @ axi_xbar.scala l46
  always @(*) begin
    myClockingArea_awSlaveSelect = 1'b0; // @ axi_xbar.scala l24
    if(((32'h00000000 <= masters_aw_payload_addr) && (masters_aw_payload_addr < 32'h02000000))) begin
      myClockingArea_awSlaveSelect = 1'b0; // @ axi_xbar.scala l27
    end
    if(((32'h02000000 <= masters_aw_payload_addr) && (masters_aw_payload_addr < 32'h03000000))) begin
      myClockingArea_awSlaveSelect = 1'b1; // @ axi_xbar.scala l27
    end
  end

  assign slaves_0_aw_valid = (masters_aw_valid && (myClockingArea_awSlaveSelect == 1'b0)); // @ axi_xbar.scala l52
  assign slaves_0_w_valid = (masters_w_valid && (myClockingArea_awSlaveSelect == 1'b0)); // @ axi_xbar.scala l53
  assign slaves_0_aw_payload_id = masters_aw_payload_id; // @ axi_xbar.scala l54
  assign slaves_0_aw_payload_addr = masters_aw_payload_addr; // @ axi_xbar.scala l54
  assign slaves_0_aw_payload_len = masters_aw_payload_len; // @ axi_xbar.scala l54
  assign slaves_0_aw_payload_size = masters_aw_payload_size; // @ axi_xbar.scala l54
  assign slaves_0_aw_payload_burst = masters_aw_payload_burst; // @ axi_xbar.scala l54
  assign slaves_0_aw_payload_lock = masters_aw_payload_lock; // @ axi_xbar.scala l54
  assign slaves_0_aw_payload_cache = masters_aw_payload_cache; // @ axi_xbar.scala l54
  assign slaves_0_aw_payload_prot = masters_aw_payload_prot; // @ axi_xbar.scala l54
  assign slaves_0_w_payload_id = masters_w_payload_id; // @ axi_xbar.scala l55
  assign slaves_0_w_payload_data = masters_w_payload_data; // @ axi_xbar.scala l55
  assign slaves_0_w_payload_strb = masters_w_payload_strb; // @ axi_xbar.scala l55
  assign slaves_0_w_payload_last = masters_w_payload_last; // @ axi_xbar.scala l55
  assign slaves_1_aw_valid = (masters_aw_valid && (myClockingArea_awSlaveSelect == 1'b1)); // @ axi_xbar.scala l52
  assign slaves_1_w_valid = (masters_w_valid && (myClockingArea_awSlaveSelect == 1'b1)); // @ axi_xbar.scala l53
  assign slaves_1_aw_payload_id = masters_aw_payload_id; // @ axi_xbar.scala l54
  assign slaves_1_aw_payload_addr = masters_aw_payload_addr; // @ axi_xbar.scala l54
  assign slaves_1_aw_payload_len = masters_aw_payload_len; // @ axi_xbar.scala l54
  assign slaves_1_aw_payload_size = masters_aw_payload_size; // @ axi_xbar.scala l54
  assign slaves_1_aw_payload_burst = masters_aw_payload_burst; // @ axi_xbar.scala l54
  assign slaves_1_aw_payload_lock = masters_aw_payload_lock; // @ axi_xbar.scala l54
  assign slaves_1_aw_payload_cache = masters_aw_payload_cache; // @ axi_xbar.scala l54
  assign slaves_1_aw_payload_prot = masters_aw_payload_prot; // @ axi_xbar.scala l54
  assign slaves_1_w_payload_id = masters_w_payload_id; // @ axi_xbar.scala l55
  assign slaves_1_w_payload_data = masters_w_payload_data; // @ axi_xbar.scala l55
  assign slaves_1_w_payload_strb = masters_w_payload_strb; // @ axi_xbar.scala l55
  assign slaves_1_w_payload_last = masters_w_payload_last; // @ axi_xbar.scala l55
  assign masters_aw_ready = _zz_masters_aw_ready; // @ axi_xbar.scala l57
  assign masters_w_ready = _zz_masters_w_ready; // @ axi_xbar.scala l58
  assign masters_b_payload_id = _zz_masters_b_payload_id; // @ axi_xbar.scala l62
  assign masters_b_payload_resp = _zz_masters_b_payload_resp; // @ axi_xbar.scala l62
  assign masters_b_valid = _zz_masters_b_valid; // @ axi_xbar.scala l63
  assign slaves_0_b_ready = masters_b_ready; // @ axi_xbar.scala l65
  assign slaves_1_b_ready = masters_b_ready; // @ axi_xbar.scala l65
  always @(posedge clk_gate or negedge rst_n) begin
    if(!rst_n) begin
      myClockingArea_rSlaveSelect <= 1'b0; // @ Data.scala l403
      myClockingArea_bSlaveSelect <= 1'b0; // @ Data.scala l403
    end else begin
      if((masters_ar_valid && masters_ar_ready)) begin
        myClockingArea_rSlaveSelect <= myClockingArea_arSlaveSelect; // @ axi_xbar.scala l42
      end
      if((masters_aw_valid && masters_aw_ready)) begin
        myClockingArea_bSlaveSelect <= myClockingArea_awSlaveSelect; // @ axi_xbar.scala l61
      end
    end
  end


endmodule