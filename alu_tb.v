module alu_tb;

  reg [3:0] A, B;
  reg [2:0] Op;
  wire [3:0] alu_out;

  alu uut (
    .A(A),
    .B(B),
    .Op(Op),
    .alu_out(alu_out)
  );

  initial begin
    $monitor("Time=%0t | A=%b | B=%b | Op=%b | Output=%b", $time, A, B, Op, alu_out);

    A = 4'b0101; B = 4'b0011;

    Op = 3'b000; #10;  // Zero
    Op = 3'b001; #10;  // Add
    Op = 3'b010; #10;  // Sub
    Op = 3'b011; #10;  // AND
    Op = 3'b100; #10;  // OR
    Op = 3'b101; #10;  // NOT A
    Op = 3'b110; #10;  // NOT B
    Op = 3'b111; #10;  // Reserved
    $finish;
  end

endmodule