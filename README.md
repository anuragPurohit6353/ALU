# 🔢 4-bit ALU in Verilog

This project implements a **4-bit Arithmetic Logic Unit (ALU)** using **Verilog HDL**, capable of performing basic arithmetic and logic operations.

## 📁 Files

- `alu.v` – Verilog module for ALU
- `alu_tb.v` – Testbench to verify ALU functionality

---

## ⚙️ Features

The ALU supports the following operations based on the 3-bit `Op` input:

| Op Code | Operation     | Description        |
|---------|---------------|--------------------|
| `000`   | Zero          | Outputs 0          |
| `001`   | Add           | `A + B`            |
| `010`   | Subtract      | `A - B`            |
| `011`   | AND           | `A & B`            |
| `100`   | OR            | `A \| B`           |
| `101`   | NOT A         | `~A`               |
| `110`   | NOT B         | `~B`               |
| `111`   | Zero          | Reserved (0)       |

---

## 🧪 Testbench Output

The `alu_tb.v` file provides test scenarios that display the output of all operations:

```verilog
A = 4'b0101; B = 4'b0011;

Op = 3'b001; // Output = 8  (Addition)
Op = 3'b010; // Output = 2  (Subtraction)
Op = 3'b011; // Output = 1  (AND)
Op = 3'b100; // Output = 7  (OR)
Op = 3'b101; // Output = ~A = 1010
