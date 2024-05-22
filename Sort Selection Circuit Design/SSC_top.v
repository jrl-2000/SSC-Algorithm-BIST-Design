`timescale 1ns/1ps


module ssc_top (
    input clk,
    input rst,
    input start,
    input [15:0] Read_data,
    output wire [7:0] address,
    output wire  [15:0] Write_data,
    output wire read,
    output wire write,
    output wire done
);

// Wires to connect the Datapath and Controller
wire [7:0] cnt1_out;
wire [7:0] cnt2_out;
wire [1:0] Sel_AMux;
wire load_temp;
wire load_min;
wire sel_mux;
wire Sel_DMux;


// Instantiate the Controller and Datapath modules
ssc_controller CNTRLR_0(
    .clk(clk),
    .rst(rst),
    .start(start),
    .cnt1_out(cnt1_out),
    .cnt2_out(cnt2_out),
    .read_reg(read),
    .write_reg(write),
    .load_temp(load_temp),
    .sel_mux(sel_mux),
    .Sel_AMux(Sel_AMux),
    .Sel_DMux(Sel_DMux),
    .Load_min(load_min),
    .done(done)
);

ssc_datpath DP_0(
    .clk(clk),
    .rst(rst),
    .cnt1_out(cnt1_out),
    .cnt2_out(cnt2_out),
    .load_temp(load_temp),
    .sel_mux(sel_mux),
    .Sel_AMux(Sel_AMux),
    .Sel_DMux(Sel_DMux),
    .Load_min(load_min),
    .Read_data(Read_data),
    .Write_data(Write_data),
    .address(address)
);
  
endmodule