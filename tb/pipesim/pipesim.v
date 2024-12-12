module pipesim

(
    input clk,
    input rst_n,
    input valid_in,
    input [31:0] data_in,
    input is_load //load adventure

);
    wire if_valid;
    reg id_valid;
    reg ex_valid;
    reg mem_valid;
    reg wb_valid;
    
    //if
    wire [31:0] if_data;
    assign if_data = data_in;
    wire if_ready_go;
    wire if_id_valid;
    assign if_valid = valid_in;
    assign if_ready_go = if_valid; //if阶段暂时只需要一个周期
    assign if_id_valid = if_valid & if_ready_go;

    wire wb_allowin;
    wire mem_allowin;
    wire ex_allowin;        
    //id 
    wire id_ready_go;
    wire id_ex_valid;
    wire id_allowin;
    assign id_allowin = (id_ready_go & ex_allowin);
    always @(posedge clk or negedge rst_n) begin
        if(~rst_n)
            id_valid <= 0;
        else if(id_allowin)
            id_valid <= if_id_valid;
        else
            id_valid <= id_valid;
    end 
    assign id_ready_go = (~is_load);
    assign id_ex_valid = (id_valid & id_ready_go);

    reg [31:0] id_data;
    always @(posedge clk or negedge rst_n) begin
        if(~rst_n)
            id_data <= 0;
        else if(id_allowin & if_id_valid)
            id_data <= if_data;
        else
            id_data <= id_data;
    end
    

    
    
    
    //ex
    wire ex_ready_go;
    wire ex_mem_valid;

    assign ex_allowin = (ex_ready_go & mem_allowin);
    always @(posedge clk or negedge rst_n) begin
        if(~rst_n)
            ex_valid <= 0;
        else if(ex_allowin)
            ex_valid <= id_ex_valid;
        else
            ex_valid <= ex_valid;
    end
    assign ex_ready_go = 1;
    assign ex_mem_valid = (ex_valid & ex_ready_go);

    reg [31:0] ex_data;
    always@(posedge clk or negedge rst_n) begin
        if(~rst_n)
            ex_data <= 0;
        else if(id_ex_valid & ex_allowin)
            ex_data <= id_data;
        else
            ex_data <= ex_data;
    end
            
    
    reg [31:0] mem_data;
    always @(posedge clk or negedge rst_n) begin
        if(~rst_n)
            mem_data <= 0;
        else if(ex_mem_valid & mem_allowin)
            mem_data <= ex_data;
        else
            mem_data <= mem_data;
    end


    
    //mem
    wire mem_ready_go;
    wire mem_wb_valid;

    always @(posedge clk or negedge rst_n) begin
        if(~rst_n)
            mem_valid <= 0;
        else if(mem_allowin)
            mem_valid <= ex_mem_valid;
        else
            mem_valid <= mem_valid;
    end
    assign mem_ready_go = 1;
    assign mem_wb_valid = (mem_valid & mem_ready_go);
    assign mem_allowin = (mem_ready_go & wb_allowin);
    
    reg [31:0] wb_data;
    always @(posedge clk or negedge rst_n) begin
        if(~rst_n)
            wb_data <= 0;
        else if(mem_wb_valid & wb_allowin)
            wb_data <= mem_data;
        else
            wb_data <= wb_data;
    end
    
    //wb 
    wire wb_ready_go;

    
    always @(posedge clk or negedge rst_n) begin
        if(~rst_n)
            wb_valid <= 0;
        else if(wb_allowin)
            wb_valid <= mem_wb_valid;
        else 
            wb_valid <= wb_valid;
    end
    assign wb_ready_go = 1;
    assign wb_allowin = 1;
    
    
   
    
    


endmodule