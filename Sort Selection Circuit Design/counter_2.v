`timescale 1ns/1ps


module counter_2 (
    input clk,
    input rst,
    input en_cnt2,
    input pl_cnt2,
    input [7:0] cnt1_out_P,
    output reg [7:0] cnt2_out,
    output reg co2
);


always @(posedge clk, posedge rst) begin
    if (rst) begin
        cnt2_out <= 8'd0;
        co2 <= 1'b0;
    end
    else if (pl_cnt2) begin
        cnt2_out <= cnt1_out_P;
        co2 <= 1'b0;
    end
    else if (en_cnt2) begin
        if (cnt2_out == 8'd255) begin
            co2 <= 1'b1;
            //cnt2_out <= 8'd0;
        end
        else begin
            cnt2_out <= cnt2_out + 1'b1;
        end
    end
end
    
endmodule