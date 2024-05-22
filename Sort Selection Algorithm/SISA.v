 
`timescale 1ns/1ns

module SISA #(parameter n = 8 )(clk, rst, en, poly, seed, Sin, data);
   		
   input clk, rst, en, Sin;
   input [n - 1:0] seed;
   input [n - 1:0] poly;
   output reg [n - 1:0] data;
   reg [23:0] test_data;
   integer i;
	
   always @(posedge clk or posedge rst) begin
      if(rst == 1'b1)
         data = seed;		   
      else if(en == 1'b1) begin						
         data[9] = data[0] ^ Sin;
         for(i = 0; i < 9; i = i + 1) begin
            data[i] = (data[0] & poly[i]) ^ data[i + 1];
         end //for
      end
   end
			
   always @(posedge clk) begin
      if(rst == 1'b1)
         test_data = 0;
      else if(en == 1'b1) begin						
         for(i = 0; i < 23; i = i + 1) begin
            test_data[i] = test_data[i + 1];
         end //for	
         test_data[23] = Sin;
      end
   end
endmodule