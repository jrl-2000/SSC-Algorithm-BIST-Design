`timescale 1ns/1ps


module counter_1 (
    input clk,
    input rst,
    input en_cnt1,
    output reg [7:0] cnt1_out,
    output reg co1
);

always @(posedge clk, posedge rst) begin
    if (rst) begin
        cnt1_out <= 8'd0;
        co1 <= 1'b0;
    end
    else if (en_cnt1) begin
        if (cnt1_out == 8'd255) begin
            co1 <= 1'b1;
            cnt1_out <= 8'd0;
        end
        else begin
            co1 <= 1'b0;
            cnt1_out <= cnt1_out + 1'b1;
        end
    end
end
endmodule