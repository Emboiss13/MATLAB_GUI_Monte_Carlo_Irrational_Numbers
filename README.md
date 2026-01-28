# 🪷 Monte Carlo Irrational Numbers Simulation GUI

This MATLAB App Designer GUI is designed to perform Monte Carlo simulations for estimating irrational numbers, specifically π, √2, and √3, using different geometric shapes. The simulations include calculations for estimating π using needles and squares, √2 using squares, and √3 using hexagons.

Watch video of simulation in my [Youtube Channel](https://www.youtube.com/watch?v=S43QEow82iM&ab_channel=Giuliana)!!

## Table of Contents
- [Introduction](#introduction)
- [Key Features](#key-features)
  - [Visual Representation](#visual-representation)
  - [Code Structure](#code-structure)
- [Installation](#installation)
- [Usage](#usage)
- [Parameters](#parameters)
- [Result Visualization](#result-visualization)
- [Contributing](#contributing)

## Introduction
The GUI follows an object-oriented structure based on classes, objects, methods, and functions. It allows users to set various parameters, such as width, length, throws, and the number of parallel planks, to customise the simulations. The calculations are visualized in real-time on the UIAxes component, providing users with an interactive and informative experience.

## Key Features
### Visual Representation
- Plots are generated in real-time on the UIAxes component to visually represent the simulations.
- Different geometric shapes are employed to estimate specific irrational numbers.

### Code Structure
These methods utilise Buffon's Needle algorithm to simulate the procedural steps involved in dropping needles or sketching geometric shapes on a virtual plane. I thought of creating a single external function that could do the plotting of each calculation to maybe call them and avoid a large file, but opted for the opposite in the end. My conclusion was to make things very clear by having every function in one place.

- The code is organised into methods for each type of simulation:
  - `RunNeedlesPi`: Estimate π using Buffon's Needle algorithm.
  - `RunSquaresPi`: Estimate π using a square-based simulation.
  - `RunSquareRootTwo`: Estimate √2 using a square-root-two-based simulation.
  - `RunHexagonRootThree`: Estimate √3 using a hexagon-based simulation.

- External functions were considered for plotting, but the decision was made to keep every function in one place for clarity and readability. 
- Each method encapsulates the specific functionality associated with its simulation type.

## Installation
1. Clone the repository to your local machine.
2. Open MATLAB and navigate to the cloned directory.
3. Run the main MATLAB file, e.g., `simulation.mlapp`.

## Usage
1. Launch the MATLAB App.
2. Set simulation parameters using the provided UI components.
3. Choose the simulation type using the radio buttons.
4. Check the "RUN" checkbox to initiate the simulation.
5. Monitor the real-time visualisation and view the final estimation.

## Parameters
- **Width (comp.Width_input):** Width parameter for the chosen geometric shape.
- **Length (comp.Length_input):** Length parameter for the chosen geometric shape.
- **Throws (comp.Throws_input):** Number of random throws for the Monte Carlo simulation.
- **Parallel Planks (comp.Planks):** Adjust the number of parallel planks for the simulation.

## Result Visualisation
- The estimated value of the irrational number is displayed in the GUI.
- Real-time plots on UIAxes show the progress and results of the simulations.
