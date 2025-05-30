# 8Bits-Microcontroller-on-FPGA-7Artix-series
# 🧠 8-bit Microcontroller on FPGA (Artix-7)

A self-driven project to design and implement a simple **8-bit microcontroller** on an **FPGA (Nexys 4 DDR – Artix-7)** using **VHDL**. This microcontroller is fully simulated and built in modular stages, with one goal: complete the full system in **7 days**, with **daily updates shared on LinkedIn**.

> ⚙️ Project Timeline: **Day 1 → Day 7**  
> 📍 Location: Internship in Thailand 🇹🇭  
> 🎓 Student Engineer: Polytech Dijon (5th Year) – Electronics & Embedded Systems

---

## ✅ Project Overview

### ✔️ Core Features

- **8-bit Processor**
- **128-byte Program Memory**
- **96-byte RAM**
- **16×8-bit Input & Output Ports**
- **ALU (Arithmetic Logic Unit)**  
  Supports: ADD, SUB, AND, OR, INC, DEC  
  Flags: **Negative, **Zero, **Overflow, **Carry

- **Fully written in VHDL**
- **Testbench-based simulation**
- **Vivado 2023.2 Compatible**

---

## 🔍 Architecture

```text
+-------------------+
|  Program Memory   |
|     (128 B)       |
+--------+----------+
         |
         v
+--------+----------+      +-------------+
|    Control Unit   | ---> |   ALU (8b)  |
+--------+----------+      +------+------+
         |                        |
         v                        v
+--------+----------+     +---------------+
|       RAM (96 B)  |     |   I/O Ports   |
+-------------------+     +---------------+