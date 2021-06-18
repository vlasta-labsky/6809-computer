`timescale 1ns / 1ps

module test;

	// Inputs
	reg [15:0] ADDR;
	reg RW;
	reg E;
	reg Q;

	// Outputs
	wire R;
	wire W;
	wire RAM;
	wire ROM;
	wire RESET;
	wire HALT;
	wire IRQ;
	wire TXD;
	wire TXD2;

	// Bidirs
	wire [7:0] DATA;

	// Instantiate the Unit Under Test (UUT)
	top uut (
		.ADDR(ADDR), 
		.DATA(DATA), 
		.RW(RW), 
		.R(R), 
		.W(W), 
		.RAM(RAM), 
		.ROM(ROM), 
		.E(E), 
		.Q(Q), 
		.RESET(RESET), 
		.HALT(HALT), 
		.IRQ(IRQ), 
		.TXD(TXD), 
		.TXD2(TXD2)
	);

	initial begin
		// Initialize Inputs
		ADDR = 0;
		RW = 0;
		E = 1;
		Q = 0;

		#100;
      
		ADDR = 0;
		RW = 1;
		
		#100;
		
		ADDR = 16'hc000;
		
		#100;
		
		ADDR = 16'hc100;
		
		#100;
		
		ADDR = 16'hc200;
		
		#100;
		
		ADDR = 16'hff00;

		#100;
		
		RW = 0;

		#100;
		
		ADDR = 16'hc000;
		
		#100;
		
		ADDR = 16'hc100;
		
		#100;
		
		ADDR = 16'hff00;

		#100;

	end
      
endmodule

