module add
(
    input [67 : 0] pp0,
    input [67 : 0] pp1,
    input [67 : 0] pp2,
    input [67 : 0] pp3,
    input [67 : 0] pp4,
    input [67 : 0] pp5,
    input [67 : 0] pp6,
    input [67 : 0] pp7,
    input [67 : 0] pp8,
    input [67 : 0] pp9,
    input [67 : 0] pp10,
    input [67 : 0] pp11,
    input [67 : 0] pp12,
    input [67 : 0] pp13,
    input [67 : 0] pp14,
    input [67 : 0] pp15,
    input [67 : 0] pp16,
    input [67 : 0] sign_compensation,
    output [63 : 0] sum
 
);






    assign sum =    pp0    +
                    pp1    +
                    pp2    +
                    pp3    +
                    pp4    +
                    pp5    +
                    pp6    +
                    pp7    +
                    pp8    +
                    pp9    +
                    pp10   +
                    pp11   +
                    pp12   +
                    pp13   +
                    pp14   +
                    pp15   +
                    pp16   +
                    sign_compensation;



endmodule