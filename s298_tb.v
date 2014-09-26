`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:05:41 09/17/2014
// Design Name:   TopLevel298
// Module Name:   J:/xilinx/s298/s298_tb.v
// Project Name:  s298
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: TopLevel298
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module s298_tb;

	// Inputs
	reg Clock;
	reg [2:0] I;
	// Outputs
	wire [1:0] R;
	wire [1:0] Y;
	wire [1:0] G;

	// Instantiate the Unit Under Test (UUT)
	TopLevel298 uut (
		.Clock(Clock), 
		.I(I), 
		.R(R), 
		.Y(Y), 
		.G(G)
	);

	initial 
	begin
		// Initialize Inputs
		I = 3'b001; //Reset Circuit & Initialize flip flops
		#20 I = 3'b000; //Must wait at least one cycle before returning to Normal Model in order to initialize the flip flops
		//680 ns passes for one complete normal cycle
		#1060 I = 3'b010;
		#20 I = 3'b000;
		#1100 I = 3'b100;
		#20 I = 3'b000;
		$stop;
		
	end

	initial 
	begin
	Clock = 1'b0;
	forever #10 Clock = ~Clock;
      	end
	
	initial
	begin
	#3000 $finish;
	end

endmodule

