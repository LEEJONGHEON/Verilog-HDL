`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:30:55 11/07/2020
// Design Name:   five
// Module Name:   C:/store/five/five_tb.v
// Project Name:  five
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: five
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module five_tb;

	// Inputs
	reg clk;
	reg reset;
	reg [1:0] sig;

	// Outputs
	wire [1:0] status;

	// Instantiate the Unit Under Test (UUT)
	five uut (
		.clk(clk), 
		.reset(reset), 
		.sig(sig), 
		.status(status)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 1;
		sig = 0;


		// Wait 100 ns for global reset to finish
		#4; //4
		reset = 0;
		
		#10 // 14
		sig = 2;
		#30 // 44
		sig = 1;
        
		// Add stimulus here

	end
   always #5 clk = ~clk;
endmodule

