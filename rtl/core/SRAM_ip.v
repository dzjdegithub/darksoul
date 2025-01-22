module sram_ip
(
    
);




    blk_mem_gen_0 my_sram_ip (
  .clka(clka),            // input wire clka
  .ena(ena),              // input wire ena
  .wea(wea),              // input wire [3 : 0] wea
  .addra(addra),          // input wire [31 : 0] addra
  .dina(dina),            // input wire [31 : 0] dina
  .clkb(clkb),            // input wire clkb
  .rstb(rstb),            // input wire rstb
  .enb(enb),              // input wire enb
  .addrb(addrb),          // input wire [31 : 0] addrb
  .doutb(doutb),          // output wire [31 : 0] doutb
  .rsta_busy(rsta_busy),  // output wire rsta_busy
  .rstb_busy(rstb_busy)  // output wire rstb_busy
);


endmodule