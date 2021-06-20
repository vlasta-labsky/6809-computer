`timescale 1ns / 1ps

`define UART_IDLE  0
`define UART_START 1
`define UART_TX    2
`define UART_STOP  3

module uart(
    input CLK,
    inout [7:0] DATA,
    input W,
	 input R,
	 input [0:0] ADDR,
	 output TXD
    );

	reg [1:0] uart_state;
	reg [2:0] uart_txidx;
	
	reg [7:0] uart_data;
		
	reg uart_txd;
		
	wire OE, IE;
	assign OE = !R;
	assign IE = !W;
	
	assign TXD = uart_txd;
	assign RDY = uart_state == `UART_IDLE;
	
	assign DATA[7:0] = OE ? (RDY ? 8'h1 : 8'h0) : 8'bZ ;
	
	initial
	begin
		uart_state <= `UART_IDLE;
		uart_txd <= 1'b1;
	end
	
	always @(posedge CLK or posedge IE)
	begin
		if(IE)
		begin
			uart_state <= `UART_START;
			uart_data[7:0] <= DATA[7:0];
		end
		else
		begin
			if(uart_state == `UART_IDLE)
			begin
				uart_txd <= 1;
			end
			else if(uart_state == `UART_START)
			begin
				uart_txd   <= 0;
				uart_txidx <= 0;
				uart_state <= `UART_TX;
			end
			else if(uart_state == `UART_TX)
			begin
				uart_txidx <= uart_txidx + 1;
				uart_txd   <= uart_data[0:0];
				
				uart_data[6:0] <= uart_data[7:1];
				uart_data[7:7] <= 1'b0;
				
				if(uart_txidx == 7)
				begin
					uart_state <= `UART_STOP;
				end
			end
			else if(uart_state == `UART_STOP)
			begin
				uart_txd <= 1;
				uart_state <= `UART_IDLE;
			end
		end
	end

endmodule
