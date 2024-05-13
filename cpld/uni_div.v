`timescale 1ns / 1ps

module uni_div(
    input CLK_IN,
    output CLK_OUT
    );
	 
	parameter SIZE = 8;
	parameter DIV = 128;
	 
	reg [SIZE - 1:0] count;
	reg out;
	
	always @ (posedge CLK_IN)
	begin
		if(count < (DIV-1))
		begin
			count <= count + 1;
			out <= 0;
		end
		else
		begin
			count <= 0;
			out <= 1;
		end
	end
	
	assign CLK_OUT = out;

endmodule
