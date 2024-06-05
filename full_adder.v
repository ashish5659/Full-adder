`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:22:37 06/05/2024 
// Design Name: 
// Module Name:    full_adder 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module full_adder(I0,I1,I2,sum,carry);
input I0,I1,I2;
output sum, carry;
   
assign sum = I0^I1^I2;
assign carry = (I0&I1) |(I1&I2) |(I2&I0);

endmodule
