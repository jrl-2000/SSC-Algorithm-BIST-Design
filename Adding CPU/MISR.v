`timescale 1ns / 1ps
module MISR	#(parameter n = 8 )
			( clk, rst, en, poly, seed, d_in, d_out );
			
	input clk, rst, en;
	input [ n - 1 : 0 ] poly, d_in, seed;
	output reg [ n - 1 : 0 ] d_out;
	
	integer i;
	
	always @( posedge clk or posedge rst ) begin

		if( rst == 1'b1 ) 
			d_out = seed;
		
		else if( en == 1'b1 )begin
			
			d_out[n - 1] <=  ( d_out[0] & poly[n - 1] ) ^ d_in[n - 1];			
			for( i = 0; i < n - 1; i = i + 1 ) begin
				d_out[i] <= ( d_out[0] & poly[i] ) ^ d_in[i] ^ d_out[i + 1];
			end //for
			
						
		end
	end

	
endmodule