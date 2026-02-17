# 🏨 Hotel Booking & Resource Planning (PDDL)

This repository contains the automated planning system developed for the **Artificial Intelligence (ABIA)** laboratory at **UPC** (Academic Year 2025/26). The project focuses on solving complex resource allocation and scheduling problems within a hotel management context using PDDL.

### 🧠 Project Overview

The core objective is to design a planning system capable of managing hotel reservations over a 30-day period. The system assigns guest bookings to rooms while strictly adhering to capacity constraints and preventing temporal overlaps, ensuring a conflict-free schedule.

### 🚀 Optimization Features

Beyond basic assignment, the system implements several optimization levels (Extensions) to improve operational efficiency:
- **Booking Maximization:** Prioritizing the highest number of successful assignments.
- **Preference Satisfaction:** Matching guests with their preferred room orientation.
- **Waste Minimization:** Reducing the gap between room capacity and guest group size.
- **Resource Efficiency:** Minimizing the total number of rooms used to reduce operational costs.

### 🛠 Tech Stack & Tools

- **Language:** PDDL (Planning Domain Definition Language).
- **Planner:** `metric-ff` (Fast-Forward heuristic-based planner).
- **Scripts:** Python for problem generation and experimental data collection.

### 🧱 Project Structure

- `basic/`: Foundation PDDL domain and problem files.
- `extensions/`: Advanced versions (Ext 1-4) featuring numeric fluents and optimization metrics.
- `figures/`: Visualizations of the performance analysis and optimization results.
- `INFORME.pdf`: Detailed technical report with experimental conclusions.

### 💻 Usage

To run the planner with a specific domain and problem:

```bash
./programa/metricff.exe -o <path_to_domain.pddl> -f <path_to_problem.pddl> -O
```
*The `-O` flag is used to enable metric-based optimization defined within the PDDL files.*
