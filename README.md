# Water Level Indicator Using Verilog HDL

## Overview

This project implements a digital Water Level Indicator using Verilog HDL.

The system accepts the water level as a percentage from 0% to 100% and activates an appropriate indicator according to the water level.

Python is used to process the simulation data and generate a graphical representation of the water level.

## Features

- Verilog HDL implementation
- Automated testbench
- Multiple water-level test cases
- VCD waveform generation
- CSV simulation output
- Python-based graphical visualization
- Suitable for FPGA/HDL learning

## Water Level Conditions

| Water Level | Indicator |
|-------------|-----------|
| 0%          | EMPTY |
| 1% - 25%    | 25% LEVEL |
| 26% - 50%   | 50% LEVEL |
| 51% - 75%   | 75% LEVEL |
| 76% - 100%  | FULL |

## Block Diagram

```text
       Water Level Input
          0% - 100%
               |
               v
   +-----------------------+
   | Water Level Indicator |
   |      Verilog HDL      |
   +-----------------------+
               |
       +-------+-------+
       |       |       |
       v       v       v
     EMPTY   LEVEL    FULL
             LEDs
               |
               v
       Simulation Output
               |
               v
          Python Graph
