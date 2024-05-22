`timescale 1ns / 1ps
module LFSR	#(parameter n = 8 )
			( clk, rst, en, poly, seed, d_out );
			
	input clk, rst, en;
	input [ n - 1 : 0 ] seed;
	input [ n - 1 : 0 ] poly;
	output reg [ n - 1 : 0 ] d_out;
	
	integer i;
	
	always @( posedge clk or posedge rst ) begin

		if( rst == 1'b1 ) 
			d_out = seed;
		
		else if( en == 1'b1 )begin
			
			d_out[n - 1] <=   d_out[0];
			for( i = 0; i < n - 1; i = i + 1 ) begin
				d_out[i] <= ( d_out[0] & poly[i] ) ^ d_out[i + 1];
			end //for
			
						
		end
	end

	
endmodule