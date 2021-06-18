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
    output RESET,
    output HALT,
    output IRQ,
	 
	 output TXD,
	 output TXD2
    );

	reg RESET_D, HALT_D, IRQ_D;
	wire UART;

	initial
	begin
		RESET_D = 1'b1;
		HALT_D  = 1'b1;
		IRQ_D	= 1'b1;
	end
	
	assign RESET = RESET_D;
	assign HALT = HALT_D;
	assign IRQ = IRQ_D;

	assign RAM = ADDR[15:15];
	assign ROM = !(ADDR[15:15] && ADDR[14:14] && ADDR[13:13]);
	assign UART = !(ADDR[15:8] == 8'hc0);
	assign UART2 = !(ADDR[15:8] == 8'hc1);
	
	assign R = !(RW && E);
	assign W = !(!RW && E);
	

	wire UART_R, UART_W;
	wire [7:0] UART_DATA;
	assign UART_R = !(!UART && !R);
	assign UART_W = !(!UART && !W);
	assign UART_DATA[7:0] = !UART_R ? 8'bz : DATA[7:0];

	uart uart_inst1(
		.ADDR(ADDR[0:0]), .DATA(UART_DATA), 
		.W(UART_W), .R(UART_R), .CLK(Q), .TXD(TXD)
	);
	
	
	wire UART2_R, UART2_W;
	wire [7:0] UART2_DATA;
	assign UART2_R = !(!UART2 && !R);
	assign UART2_W = !(!UART2 && !W);
	assign UART2_DATA[7:0] = !UART2_R ? 8'bz : DATA[7:0];

	uart uart_inst2(
		.ADDR(ADDR[0:0]), .DATA(UART2_DATA),
		.W(UART2_W), .R(UART2_R), .CLK(Q), .TXD(TXD2)
	);
	
	assign DATA[7:0] = !UART_R  ? UART_DATA[7:0] 
	                 : !UART2_R ? UART2_DATA[7:0] 
						  : 8'bz;
						  
endmodule
