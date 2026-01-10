# 5-Stage Pipelined Adder in Verilog

This project contains a **5-stage pipelined adder** written in Verilog, along with a testbench and sample simulation results.  
The code is designed for learning and internship demonstration purposes, and shows basic pipelining concepts suitable for beginners with some experience.

## Files

- `pipe5.v` : Main Verilog module implementing a 5-stage integer adder pipeline (8-bit inputs, 9-bit output).
- `t_pipe5.v` : Verilog testbench for simulation and verification of the `pipe5` design.

## How Pipelining Works in This Project

The adder is split into 5 stages, each separated by a set of registers.  
On each clock edge, data is moved from one stage to the next:
1. **Stage 1:** Latch inputs `a`, `b`
2. **Stage 2:** Pass inputs along
3. **Stage 3:** Perform addition
4. **Stage 4:** Pass sum along
5. **Stage 5:** Output final sum

The result (`sum`) appears after a latency of 5 clock cycles—this models a simple pipelined datapath.

## Simulation

A sample testbench (`t_pipe5.v`) applies several input pairs on each clock cycle.  
After the pipeline fills, the output `sum` will display the correct results in order, with the expected 5-cycle delay.

### Example Waveform

| Cycle | Input A | Input B | Sum (after 5 cycles) |
|-------|---------|---------|----------------------|
| 1     | 7       | 9       | 16                   |
| 2     | 12      | 24      | 36                   |
| 3     | 31      | 1       | 32                   |
| 4     | 15      | 11      | 26                   |
| 5     | 3       | 4       | 7                    |

> See waveform in `/images/` or simulation screenshot for verification.

## Running the Simulation

1. Open the project in Vivado or other Verilog simulator.
2. Add both `pipe5.v` and `t_pipe5.v` to your project.
3. Set `t_pipe5` as the simulation top module.
4. Run simulation and view waveform to verify pipelined output behavior.

## Author

- [Your Name]
- For internship/project screening at IIT

---

**Educational Use Only. For questions or improvements, feel free to open an issue or PR.**
