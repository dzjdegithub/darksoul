module comp_tb;

    reg [7 : 0] A,B,C;
    reg [7 : 0] D;
    wire [7:0] num1,num2;
    
    // N_comp3_2 c(A,B,C,num1,num2);
    N_comp4_2 c(A,B,C,D,num1,num2);
    initial begin
        A = 6;
        B = 8;
        C = -3;
        D = -10;
        #20
        A = 14;
        B = 25;
        C = 1;
        D = -20;
    end

endmodule