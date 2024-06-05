`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:38:24 06/05/2024
// Design Name:   full_adder
// Module Name:   /home/ise/fulladder/full_adder_tb.v
// Project Name:  fulladder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: full_adder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module full_adder_tb;

	// Inputs
	reg I0;
	reg I1;
	reg I2;

	// Outputs
	wire sum;
	wire carry;

	// Instantiate the Unit Under Test (UUT)
	full_adder uut (
		.I0(I0), 
		.I1(I1), 
		.I2(I2), 
		.sum(sum), 
		.carry(carry)
	);

	initial begin
		// Initialize Inputs
		   I0 = 0;I1 = 0;I2 = 0;
	      #60 I0 = 0;I1 = 1;I2 = 1;
			#60 I0 = 1;I1 = 0;I2 = 0;
			#60 I0 = 1;I1 = 1;I2 = 1;
		
		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

