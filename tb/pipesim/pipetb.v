module pipetb;

    reg clk;
    reg rst_n;
    reg valid_in;
    reg [31:0] data_in;
    reg is_load;

    
    always #10 clk = ~clk;
    initial begin
        clk = 1;
    end 
    
    initial begin
        rst_n = 0;
        #20
        rst_n = 1;
        valid_in = 1;
        data_in = 5;
        is_load = 0;
        #20
        data_in = 6;
        #20
        valid_in = 0;
        data_in = 7;
        is_load = 1;
        #20
        valid_in = 1;
        data_in = 7;
        is_load = 0;
        #20
        data_in = 8;
    end

    pipesim pipesim_inst
    (
        .clk(clk),
        .rst_n(rst_n),
        .valid_in(valid_in),
        .data_in(data_in),
        .is_load(is_load)
    );



endmodule 