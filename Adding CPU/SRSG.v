`timescale 1ns / 1ps
module SRSG	#(parameter n = 8 )
			( clk, rst, en, poly, seed, Sout );
			
	input clk, rst, en;
	input [ n - 1 : 0 ] seed;
	input [ n - 1 : 0 ] poly;
	reg [ n - 1 : 0 ] data;

	output Sout;
	
	integer i;
	
	always @( posedge clk or posedge rst ) begin

		if( rst == 1'b1 )
			data = seed;
				
		else if( en == 1'b1 ) begin			
			data[n - 1] <=   data[0];
			for( i = 0; i < n - 1; i = i + 1 ) begin
				data[i] <= ( data[0] & poly[i] ) ^ data[i + 1];
			end //for
		end

	end
			
	assign Sout = data[0];

	
endmodule