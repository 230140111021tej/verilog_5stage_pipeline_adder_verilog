# 5-Stage Pipelined Adder (Verilog)

This repository contains a simple 5-stage pipelined adder implemented in Verilog, including its testbench and supporting simulation images.  
The project is suitable for beginners who want to learn about pipelining and simulation in digital design.

## Files

- `Pipe.v` — Verilog module for the 5-stage pipelined adder
- `Pipetb.v` — Testbench for `Pipe.v`
- `RTL_schematic.png` — RTL schematic generated after synthesis
- `Technological_schematic.png` — Technology-level schematic of the design
- `waveform.png` — Output simulation waveform

## How it Works

- The pipeline consists of 5 stages. At every clock edge, input values move through registers, with the sum computed and passed forward.
- This pipelined approach means the output sum appears after 5 clock cycles (latency), demonstrating how pipelining can increase throughput.

## Usage

1. Add `Pipe.v` and `Pipetb.v` to your favorite simulator (Vivado, ModelSim, etc.).
2. Set `Pipetb.v` as the simulation top.
3. Synthesize the design for schematics, and run simulation to verify the waveform.

## Output Verification

See `waveform.png` for the correct simulation result.  
- You should see sums of input pairs appearing after five clock cycles.
- Example: if you input A=3, B=4, after the pipeline delay you’ll see the sum output as 7.

Refer to `RTL_schematic.png` and `Technological_schematic.png` for block and netlist views of the synthesized circuit.

## Author

- Designed for internship/project review.
- Feel free to use or modify for educational purposes.

---
For questions, open an issue or contact via GitHub.
