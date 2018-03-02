## EECS 301

**Digital Logic Laboratory**

**Week 7**

3/2/2018

Note:

Topics

* Lab 6 Review
* Lab 7
	* First two week project
* Accelerometer
	* I2C Bus
* RGB Ring
	* OneWire Protocol
* Sector Computation
	* FPGA Math
	* Signed math in Verilog
	* DSP Blocks
* Lab 7 Overview
* Lab 7 Demo
	* RGB Ring, Accelerometer
	* Logic Analyzer I2C Bus Demo


---

# Lab 6 Review

Questions? Issues? Feedback?

Note:
Lab 6 Questions, Issues, Feedback?

---

## Lab 7 Overview

* First Two-Week Lab
* Two new devices
	* Accelerometer (I<sup>2</sup>C)
	* Neopixel RGB Ring (OneWire)
* Fixed-Point Math (using DSP Blocks)
* Project Customization
	* Create your own State Machine Design

---

### Two-Week Labs

* Introduce devices found in real-world FPGA designs
	* Accelerometers, RGB LEDs Displays, LCD Panels, Audio Codecs, etc
* Independent Design Components
	* Opportunity to apply learned design techniques to create your own design ideas
	* Framework provides starting infrastructure to simplify and focus the design work
* Targeted time expenditure 12 hours per person over the two-weeks

Note:
Design ideas are limited to the given project Framework for the most part.


---

### ADXL345 Accelerometer

* 3-Axis MEMS Accelerometer
* Dynamic Acceleration (Motion/Shock)
	* Inertial Tracking
* Static Acceleration (Gravity)
	* Tilt Sensing
* I<sup>2</sup>C Bus Interface
* Tilt direction computed using Fixed-Point math

---

### Fixed-Point Number System

* Fractional Number Representation
* Fixed Exponent
* Signed or Unsigned Numbers
* Lower cost than Floating-Point
* Resolution optimized to algorithm
* Ideal for FPGA designs

---?image=https://raw.githubusercontent.com/CWRU-EECS301-S18/syllabus/master/Lectures/Lecture07/Slides/images/Lecture7_FixedPointNumberFormat.png&size=90% auto

---?image=https://raw.githubusercontent.com/CWRU-EECS301-S18/syllabus/master/Lectures/Lecture07/Slides/images/Lecture7_FixedPointMultiplication.png&size=90% auto

---

### FPGA Computations

* FPGA fabric ALMs optimized for addition
	* 2-bits per ALM (Cyclone V)
	* Fast-Carry Chains
* Possible to implement Multipliers with ALMs
	* Requires lots of resources
	* Limited clock rates due to combinatorial layers
* Most FPGA architectures provide Hard-IP multipliers
	* In the Cyclone V these are DSP Blocks

---

## FPGA DSP Blocks

* Hard-IP to support Digital Signal Processing
* Optimized propagation times for high clock rates
* Fused Multiplier and Accumulators (FMA)
* Internal Pipeline Registers
* Fast Carry-chains to combine multiple DSP Blocks
* Tailored for most common MAC algorithms
* 5CSEMA5F31 FPGA has 87 DSP Blocks

Note:
Hard-IP are FPGA features implemented in Silicon instead of FPGA fabric.
MAC = Multiply-accumulate
Fused Multiply Accumulate (A*B + C) maintains precision by having an adder wide enough to accept the multiplier outputs without rounding.

---?image=https://raw.githubusercontent.com/CWRU-EECS301-S18/syllabus/master/Lectures/Lecture08/Slides/images/DSPBlockArchitecture.png&size=auto 90%

---

### Multiply-Accumulate Algorithms

* Dot Products
* FFT and FIR Filters
* Polynomials
* Matrix Multiplications

Note:
https://en.wikipedia.org/wiki/Multiply–accumulate_operation

---?image=https://raw.githubusercontent.com/CWRU-EECS301-S18/syllabus/master/Lectures/Lecture08/Slides/images/DotProductExample.png&size=auto 90%

---?image=https://raw.githubusercontent.com/CWRU-EECS301-S18/syllabus/master/Lectures/Lecture08/Slides/images/Sector_Diagram.png&size=auto 90%

---

### Signed Math in Verilog

```verilog
wire signed [15:0] a, b;
wire signed [31:0] q;

assign q = a * 16'sh0123 + b * 16'sh8123;
```

---

### WS2812 RGB LED

* OneWire Bus Interface
* Daisy chain topologies
* 24-bit RGB Data
* Widely used for RGB strip lighting

---

### Project Customization

* Lab Framework provides starting module
* Design a State Machine to control LED Ring
* Framework provides 
	* Key, Switch, and Accelerometer Input
	* RGB Ring and Buzzer Output
* Free to reuse other modules (PS/2, UART, etc)
* Project Ideas
	* Games (Pong, Simon, ???)
	* Telemetry (Impact Sensor)

Note:
Serial UART and PS/2 Keyboard are not in Framework but could be added.

---

# Lab 7 Demo

---?image=https://raw.githubusercontent.com/CWRU-EECS301-S18/syllabus/master/Lectures/Lecture07/Slides/images/Lab7_DevBoardLayout.png&size=auto 90%

---

## Logic Analyzer Demo

---?image=https://raw.githubusercontent.com/CWRU-EECS301-S18/syllabus/master/Lectures/Lecture07/Slides/images/Accel_I2C_DataRead.png&size=auto 90%

---

# Questions?
