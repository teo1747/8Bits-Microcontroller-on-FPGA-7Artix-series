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
 
🚀 Progress Log
✅ Day	Module	Status	Notes
Day 1	ALU	✅ Done	Simulation passed, all flags tested
Day 2	RAM (96 B)	🔜 Pending	
Day 3	Program Memory	🔜 Pending	
Day 4	I/O Ports	🔜 Pending	
Day 5	Control Unit	🔜 Pending	
Day 6	Integration	🔜 Pending	
Day 7	Final Tests & Demo	🔜 Pending	

 
🛠 Tools & Technologies
•	Vivado (Simulation & Synthesis)
•	VHDL
•	Nexys 4 DDR (Artix-7)
•	GitHub & LinkedIn for documentation
 
📷 Screenshots
Vivado Simulation: Day 1 — ALU Working with NZVC Flags
 
💾 Repository Structure
├── ALU/                  # ALU VHDL code & testbench
├── RAM/                  # RAM design (to come)
├── ProgramMemory/        # Program Memory (to come)
├── IO/                   # Input/Output port logic
├── ControlUnit/          # Microcontroller brain
├── Integration/          # Top-level architecture
├── images/               # Simulation screenshots
└── README.md             # This file

 
🔗 External Links
•	🔗 LinkedIn project updates: @teo1747
•	🔗 Nexys 4 DDR Board Reference
 
🙋‍♂️ Author

Mambo Junior Deogracias
👨‍🎓 Étudiant en 5ᵉ année – Polytech Dijon
💡 Spécialité : Électronique & Systèmes Embarqués
📍 Actuellement en stage à KMUTT (Thaïlande)
🔗 LinkedIn
 
📫 Contributions & Feedback

Open to suggestions, optimizations, and collaboration.
Feel free to fork, star ⭐, or create a pull request!
 
Let me know if you'd like:
- A **README badge** section (e.g., license, status)
- A **demo GIF** once integration is complete
- French version of the README

Would you like help adding a `LICENSE` file too?

