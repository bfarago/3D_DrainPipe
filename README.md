# 3D Model - Parametric Drain Pipe Joint

## User Story
To connect a dishwasher to the handwash sink, we need a joint between the siphon and the sink that allows the dishwasher to connect to the pipe. The pipe diameters may vary by country. If a 41mm upper connection diameter joint is not available in the shop, we may need to model and print a middle part to connect the two pieces.

## This Project
This project serves as a sandbox to experiment with OpenSCAD, Visual Studio Code, Git, and PartCAD extensions. It illustrates how mechanical work can be documented in textual projects like this.

![Model](img/dp2.png?raw=true "Model")

## Input File
- **File Name**: `dp2.scad`
- **Description**: This file can be opened with the Visual Studio Code OpenSCAD extension and other OpenSCAD tools. It allows parameterization, rendering, and generation of the model.

## Output File
- **File Name**: `out/dpModel41.stl` ![Click here to view 3D model in github](out/dpModel41.stl)
- **Description**: This file can be opened with 3D printer slicer software to prepare for printing.

## Photos

![Photo 1](img/IMG_6407.JPG?raw=true "Photo 1")

![Photo 2](img/IMG_6397.JPG?raw=true "Photo 2")

## Requirements

### Functional Requirements
1. **Connection to Sink Pipe**
   - The part should have a 1 1/3 inch or 41mm diameter inner thread to connect to the handwash drain pipe at the top.
2. **Connection to Drain Pipe**
   - The bottom side of the part should have a 1 3/4 inch or 45mm diameter outer thread to connect to the drain pipe.
3. **Mechanical Specifications**
   - The maximum height of the part should be limited to fit below the sink, with a height less than 2 inches or 50mm.
   - The part should allow water to flow freely inside.
   - The exterior of the part should have a tool or grip shape to facilitate screwing the pipes together.
   - The material used should be waterproof to minimize water leakage.

### Non-Functional Requirements
1. **Resin Optimization**
   - The pipe walls should be narrow to minimize the amount of resin needed for printing.
2. **Model**
   - The model should be parametric to allow for adjustments in diameters and lengths.

## Diagrams

```plantuml
@startuml
database Sink
database Drain
Sink --> (Part)
(Part) --> Drain
@enduml