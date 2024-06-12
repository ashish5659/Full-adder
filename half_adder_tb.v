module half_adder_tb;

    // Inputs
    reg a;
    reg b;

    // Outputs
    wire sum;
    wire carry;

    // Instantiate the Unit Under Test (UUT)
    half_adder uut (
        .a(a),
        .b(b),
        .sum(sum),
        .carry(carry)
    );

    // Inputs
    initial begin
       $dumpfile("dump.vcd");
        $dumpvars(0, half_adder_tb);
      
        // Test case 1: a=0, b=0
        a = 0; b = 0; #10;
        $display("a = %b, b = %b, sum = %b, carry = %b", a, b, sum, carry);

        // Test case 2: a=0, b=1
        a = 0; b = 1; #10;
        $display("a = %b, b = %b, sum = %b, carry = %b", a, b, sum, carry);

        // Test case 3: a=1, b=0
        a = 1; b = 0; #10;
        $display("a = %b, b = %b, sum = %b, carry = %b", a, b, sum, carry);

        // Test case 4: a=1, b=1
        a = 1; b = 1; #10;
        $display("a = %b, b = %b, sum = %b, carry = %b", a, b, sum, carry);

        // Finish simulation
        $finish;
    end

endmodule
