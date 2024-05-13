`timescale 1ns / 1ps

module top(
    input [15:0] ADDR,
    inout [7:0] DATA,
    input RW,
    output R,
    output W,
    output RAM,
    output ROM,
    input E,
    input Q,
    input RESET,
    output HALT,
    output IRQ,
	 
	 output TXD,
	 output TXD2,
	 
	 input KEYBOARD_CLK,
	 input KEYBOARD_DATA
    );

	reg HALT_D;
	wire UART;

	initial
	begin
		HALT_D      <= 1'b1;
	end
	
	wire clk_uart;
	
	uni_div divUart(.CLK_IN(E), .CLK_OUT(clk_uart));
	defparam divUart.SIZE = 8;
	defparam divUart.DIV = 208;
	
	assign HALT = HALT_D;

	assign RAM = ADDR[15:15];
	assign ROM = !(ADDR[15:15] && ADDR[14:14] && ADDR[13:13]);
	assign UART = !(ADDR[15:8] == 8'hc0);
	assign UART2 = !(ADDR[15:8] == 8'hc1);
	assign PS2 = !(ADDR[15:8] == 8'hc2);
	
	assign R = !(RW && E);
	assign W = !(!RW && E);
	

	wire UART_R, UART_W;
	wire [7:0] UART_DATA;
	assign UART_R = !(!UART && !R);
	assign UART_W = !(!UART && !W);
	assign UART_DATA[7:0] = !UART_R ? 8'bz : DATA[7:0];

	uart uart_inst1(
		.ADDR(ADDR[0:0]), .DATA(UART_DATA), 
		.W(UART_W), .R(UART_R), .CLK(clk_uart), .TXD(TXD)
	);
	
	
	wire UART2_R, UART2_W;
	wire [7:0] UART2_DATA;
	assign UART2_R = !(!UART2 && !R);
	assign UART2_W = !(!UART2 && !W);
	assign UART2_DATA[7:0] = !UART2_R ? 8'bz : DATA[7:0];

	uart uart_inst2(
		.ADDR(ADDR[0:0]), .DATA(UART2_DATA),
		.W(UART2_W), .R(UART2_R), .CLK(clk_uart), .TXD(TXD2)
	);
	
	
	wire [7:0] PS2_DATA;
	wire PS2_IRQ;
	assign PS2_R = !(!PS2 && !R);
	assign PS2_W = !(!PS2 && !W);
	assign PS2_DATA[7:0] = !PS2_R ? 8'bz : DATA[7:0];
	
	ps2 ps2_inst1(.ADDR(ADDR[0:0]), .DATA(PS2_DATA), .R(PS2_R), .IRQ(PS2_IRQ),
	              .KEYBOARD_CLK(KEYBOARD_CLK), .KEYBOARD_DATA(KEYBOARD_DATA));
	
	assign DATA[7:0] = !UART_R  ? UART_DATA[7:0] 
	                 : !UART2_R ? UART2_DATA[7:0] 
						  : !PS2_R ? PS2_DATA[7:0]
						  : 8'bz;
						  
	assign IRQ = !PS2_IRQ;
						  
endmodule
