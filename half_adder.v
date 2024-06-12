module half_adder(
  input a,b,
  output reg sum, carry
  );
  assign sum = a^b;
  assign carry = a&b;
endmodule
  
