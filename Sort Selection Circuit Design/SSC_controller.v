`timescale 1ns/1ps


module ssc_controller (
    input clk,
    input rst,
    input start,
    output wire [7:0] cnt1_out,
    output wire [7:0] cnt2_out,
    output wire read_reg,
    output wire write_reg,
    output wire load_temp,
    output wire sel_mux,
    output reg [1:0] Sel_AMux,
    output wire Sel_DMux,
    output wire Load_min,
    output reg done
);

// State Machine Variables
integer state = 0;
integer state_next = 0;

localparam ST_RST = 0;
localparam ST_IDLE = 1;
localparam ST_START = 2;
localparam ST_INIT = 3;
localparam ST_FIND_MIN = 4;
localparam ST_UPDATE_0 = 5;
localparam ST_UPDATE_1 = 6;
localparam ST_UPDATE_2 = 7;
localparam ST_DONE = 8;


// Local Regs
wire co1;
wire co2;

wire pl_cnt2;

wire en_cnt1;
wire en_cnt2;

reg [7:0] cnt1_out_P;


// Always Block for Updating State Machine
always @(posedge clk, posedge rst) begin
    if (rst) begin
        state <= ST_RST;
        cnt1_out_P <= 8'd0;
    end
    else begin
        state <= state_next;
    end
end

// Always Block for cntr1 + 1
always @(cnt1_out) begin
    cnt1_out_P <= cnt1_out_P + 1'b1;
end

// State Machine Always Block
always @(state, start, co1, co2) begin
    state_next <= state;
    case (state)
        ST_RST: begin
            done <= 1'b0;
            state_next <= ST_IDLE;
        end
        ST_IDLE: begin
            done <= 1'b0;
            if (start) begin
                state_next <= ST_START;
            end
        end
        ST_START: begin
            //We want a complete pulse on start to start the algorithm
            if (!start) begin
                state_next <= ST_INIT;
            end            
        end
        ST_INIT: begin
            Sel_AMux <= 2'b00;
            state_next <= ST_FIND_MIN;
        end
        ST_FIND_MIN: begin
            if (co2) begin
                state_next <= ST_UPDATE_0;
            end
            else begin
                Sel_AMux <= 2'b01;
            end
        end
        ST_UPDATE_0: begin
            Sel_AMux <= 2'b00;
            state_next <= ST_UPDATE_1;
        end
        ST_UPDATE_1: begin
            Sel_AMux <= 2'b00;
            state_next <= ST_UPDATE_2;
        end
        ST_UPDATE_2: begin
            Sel_AMux <= 2'b10;
            if (co1) begin
                state_next <= ST_DONE;
            end
            else if (!co1) begin
                state_next <= ST_INIT;
            end
        end
        ST_DONE: begin
            done <= 1'b1;
            state_next <= ST_IDLE;
        end    
    endcase
end

// Set Flags
assign en_cnt2 = ((state == ST_INIT) || (state == ST_FIND_MIN)) ? 1'b1 : 1'b0;
assign pl_cnt2 = (state ==  ST_INIT) ? 1'b1 : 1'b0;
assign Load_min = (state ==  ST_INIT) ? 1'b1 : 1'b0;
assign load_temp = (state == ST_UPDATE_0) ? 1'b1 : 1'b0;
assign read_reg = ((state == ST_INIT) || (state == ST_FIND_MIN) || (state == ST_UPDATE_0)) ? 1'b1 : 1'b0;
assign sel_mux = (state ==  ST_FIND_MIN) ? 1'b1 : 1'b0;
assign en_cnt1 = (state ==  ST_UPDATE_1) ? 1'b1 : 1'b0;
assign write_reg = ((state == ST_UPDATE_1 && cnt1_out != 8'd255) || (state == ST_UPDATE_2 && !co1)) ? 1'b1 : 1'b0;
assign Sel_DMux = (state ==  ST_UPDATE_2) ? 1'b1 : 1'b0;


// Counter 1
counter_1 CNTR_8BIT_1(
    .clk(clk),
    .rst(rst),
    .en_cnt1(en_cnt1),
    .cnt1_out(cnt1_out),
    .co1(co1)
);

// Counter 2
counter_2 CNTR_8BIT_2(
    .clk(clk),
    .rst(rst),
    .en_cnt2(en_cnt2),
    .pl_cnt2(pl_cnt2),
    .cnt1_out_P(cnt1_out_P),
    .cnt2_out(cnt2_out),
    .co2(co2)
);

endmodule