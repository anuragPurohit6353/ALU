module alu (
  input [3:0] A, B,
  input [2:0] Op,
  output reg [3:0] alu_out
);

always @(*) begin
  case (Op)
    3'b000: alu_out = 4'b0000;      // Zero
    3'b001: alu_out = A + B;        // Addition
    3'b010: alu_out = A - B;        // Subtraction
    3'b011: alu_out = A & B;        // AND
    3'b100: alu_out = A | B;        // OR
    3'b101: alu_out = ~A;           // NOT A
    3'b110: alu_out = ~B;           // NOT B
    3'b111: alu_out = 4'b0000;      // Reserved or Zero
    default: alu_out = 4'b0000;
  endcase
end

endmodule