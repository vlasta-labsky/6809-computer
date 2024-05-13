`timescale 1ns / 1ps

`define PS2_IDLE   0
`define PS2_DATA   1
`define PS2_PARITY 2
`define PS2_STOP   3

module ps2(
    inout [7:0] DATA,
    input R,
    input [0:0] ADDR,
	 output IRQ,
	 input KEYBOARD_CLK,
    input KEYBOARD_DATA
    );
	 
	wire OE;
	assign OE = !R;
	
	reg [7:0] scancode;
	reg [1:0] ps2_state;
	reg [2:0] ps2_idx;
	reg irq_reg;
	
	initial
	begin
		ps2_state <= `PS2_IDLE;
		ps2_idx <= 0;
		scancode <= 0;
		irq_reg <= 0;
	end
	
	assign DATA[7:0] = OE ? scancode : 8'bZ ;
	assign IRQ = irq_reg;
	
	always @ ( posedge KEYBOARD_CLK or posedge OE) begin
		if(OE)
		begin
			irq_reg <= 0;
		end
		else
		begin
			if(ps2_state == `PS2_IDLE && !KEYBOARD_DATA)
			begin
				ps2_state <= `PS2_DATA;
				ps2_idx <= 0;
			end
			else if(ps2_state == `PS2_DATA && ps2_idx <= 7)
			begin
				scancode[6:0] <= scancode[7:1];
				scancode[7:7] <= KEYBOARD_DATA;
				
				if(ps2_idx == 7)
				begin
					ps2_state <= `PS2_PARITY;
				end
				else
				begin
					ps2_idx <= ps2_idx + 1;
				end
			end
			else if(ps2_state == `PS2_PARITY)
			begin
				ps2_state <= `PS2_STOP;
			end
			else if(ps2_state == `PS2_STOP)
			begin
				ps2_state <= `PS2_IDLE;
				irq_reg <= 1;
			end
		end
	end

endmodule
