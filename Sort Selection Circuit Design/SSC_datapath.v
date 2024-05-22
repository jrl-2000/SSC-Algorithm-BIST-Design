`timescale 1ns/1ps


module ssc_datpath (
    input clk,
    input rst,
    input [7:0] cnt1_out,
    input [7:0] cnt2_out,
    input load_temp,
    input sel_mux,
    input [1:0] Sel_AMux,
    input Sel_DMux,
    input Load_min,
    input [15:0] Read_data,
    output reg [15:0] Write_data,
    output reg [7:0] address
);

reg [15:0] Min_reg;

reg [7:0] Min_addr;
reg [7:0] Min_addr_reg;

reg [15:0] Temp_reg;

reg Load_min_i = 1'b0;
reg It = 1'b0;

always @(posedge clk, Sel_DMux, sel_mux, Sel_AMux) begin
    Write_data <= (Sel_DMux) ? Temp_reg : Min_reg;
    Min_addr <= (sel_mux) ? cnt2_out : cnt1_out;
    case (Sel_AMux)
        2'b00: begin
            address <= cnt1_out;    
        end 
        2'b01: begin
            address <= cnt2_out;
        end
        2'b10: begin
            address <= Min_addr_reg;
        end
        default: begin
            address <= cnt1_out;
        end  
    endcase
end

// Min_Reg
always @(posedge clk, posedge rst) begin
    if (rst) begin
        Min_reg <= 16'd0;
    end
    else if (Load_min_i) begin
        Min_reg <= Read_data;
    end
 
end

// Min address Reg
always @(posedge clk, posedge rst) begin
    if (rst) begin
        Min_addr_reg <= 8'd0;
    end
    else if (Load_min_i) begin //Load addr
        Min_addr_reg <= Min_addr;
    end
 
end

// Temp Reg
always @(posedge clk, posedge rst) begin
    if (rst) begin
        Temp_reg <= 16'd0;
    end
    else if (load_temp) begin
        Temp_reg <= Read_data;
    end
end

// Comparator
always @(Read_data) begin
    if (Read_data < Min_reg) begin
        // Save the number and the address
        // Min_reg <= Read_data;
        // Min_addr_reg <= address;
        It <= 1'b1;
    end
    else begin
        It <= 1'b0;
    end
end

// OR gate with Load_min
always @(It, Load_min) begin
    Load_min_i <= Load_min || It;
end

endmodule