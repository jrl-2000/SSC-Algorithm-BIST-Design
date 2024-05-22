 
`timescale 1ns/1ns

module SRSG #(parameter n = 8 )(clk, rst, en, poly, seed, Sout);
			
   input clk, rst, en;
   input [n - 1:0] seed;
   input [n - 1:0] poly;
   output Sout;
   reg [n - 1:0] data;
   integer i;
	
   always @(posedge clk or posedge rst) begin
      if(rst == 1'b1)
         data = seed;
      else if(en == 1'b1) begin			
         data[9] = data[0];
         for(i = 0; i < 9; i = i + 1) begin
            data[i] = (data[0] & poly[i]) ^ data[i + 1];
         end //for
      end
   end
			
   assign Sout = data[0];
endmodule