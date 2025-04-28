# Digital Clock Display on 7-Segment using Verilog

This project implements a simple digital clock that displays **hours**, **minutes**, and **seconds** on 7-segment displays using Verilog HDL.  
It consists of two main modules:

- `clock_disp.v`: Clock-to-7-segment decoder module.
- `clock_display.v`: Top-level module connecting the clock signals to the display.

## Project Structure

| File | Description |
| --- | --- |
| `clock_disp.v` | Maps hours, minutes, and seconds to corresponding 7-segment display patterns. |
| `clock_display.v` | Top module managing input/output connections and invoking `clock_disp`. |

## How It Works

- **Inputs**:
  - `hour`  (0-23)
  - `minute` (0-59)
  - `second` (0-59)

- **Outputs**:
  - `seg_hh1`, `seg_hh0`: Two 7-segment displays for the hour digits.
  - `seg_mm1`, `seg_mm0`: Two 7-segment displays for the minute digits.
  - `seg_ss1`, `seg_ss0`: Two 7-segment displays for the second digits.

- Each time unit (hour, minute, second) is split into two digits, and each digit is converted to the appropriate 7-segment code using a combinational logic design.

## Simulation

To simulate the design:

1. Use any Verilog simulator (ModelSim, Vivado, etc.).
2. Provide different values of `hour`, `minute`, and `second`.
3. Observe the 7-segment outputs (`seg_hh1`, `seg_hh0`, etc.) updating accordingly.

## Example Mapping

| Time Input | Display |
| :--- | :--- |
| 12:34:56 | Displays "1" "2" : "3" "4" : "5" "6" |
| 00:00:00 | Displays "0" "0" : "0" "0" : "0" "0" |
| 23:59:59 | Displays "2" "3" : "5" "9" : "5" "9" |

*Each digit is individually encoded to its corresponding 7-segment representation.*

## Requirements

- Basic understanding of Verilog HDL
- Verilog simulator or FPGA tools (ModelSim, Vivado, Quartus Prime, etc.)
- FPGA board with 7-segment displays (optional for hardware testing)

## Author

Anikait Sarkar  
RSA SEIP VLSI Trainee
