## EECS 301

**Digital Logic Laboratory**

**Week 4**

2/9/2018

---

# Lab 3 Review

Note:
Lab 3 Questions, Issues, Feedback?

---?image=https://raw.githubusercontent.com/CWRU-EECS301-S18/syllabus/master/Lectures/Lecture01/Slides/images/LabTopicsOverview.png&size=auto 90%

---

### Project Pin Assignments 

* Top Level signals map to FPGA pins
* Set I/O Standard, Strength, Slew Rate, etc...
* FPGA pins divided into Banks
* Bank power rails may differ
* Lots of caveats so read datasheet carefully

---?image=https://raw.githubusercontent.com/CWRU-EECS301-S18/syllabus/master/Lectures/Lecture04/Slides/images/PinPlannerWindow.png&size=90% auto

---?image=https://raw.githubusercontent.com/CWRU-EECS301-S18/syllabus/master/Lectures/Lecture04/Slides/images/PinAssignmentsQSF.png&size=auto 90%


---

### Multiplexer Structures

---?image=https://raw.githubusercontent.com/CWRU-EECS301-S18/syllabus/master/Lectures/Lecture04/Slides/images/CombMux.png&size=90% auto

---?image=https://raw.githubusercontent.com/CWRU-EECS301-S18/syllabus/master/Lectures/Lecture04/Slides/images/RegMux.png&size=90% auto

---

#### Cyclone V ALM

![Cyclone V ALM](https://raw.githubusercontent.com/CWRU-EECS301-F17/syllabus/master/Lectures/Lecture04/Slides/images/cv_alm01.png)

FPGA cells contain both combinatorial and registered multiplexers

Note: 
Every ALM in the FPGA can make both a combinatorial and registered multiplexer.

---

## Test Bench Overview

---

### Types of Test Benches

* **Functional Check**
	* Development Testing
	* Manual Results Checking
	* Expert Knowledge Required
* **Functional Verification**
	* Automated Results Checking
	* Development & Regression Testing
	* Simple Pass/Fail Status 

Note:

* These names are not standardized.
* Functional Check refers to a test bench where the results have to manually checked by the developer.  This is used during initial development and requires expert knowledge.
* Functional Verification has automated results checking and can be used as regression tests with a simple pass/fail output.  

* Functional Check Test Bench
	* Quick tests for debugging without hardware
	* Manual output checking (ModelSim waveforms)
	* Requires knowledge of expected UUT operation
	* Full access to UUT signals for code debugging

* Functional Verification Test Bench
	* Automated result verification
	* Pass/Fail results do not require full UUT knowledge
	* Regression testing for later design phases
	* Full coverage testing (Ideally)

---?image=https://raw.githubusercontent.com/CWRU-EECS301-S18/syllabus/master/Lectures/Lecture04/Slides/images/TestBenchArchitecture.png&size=90% auto


---

# State Machines

(When Counters Aren't Good Enough)

---

### State Machine Uses

* Scalable from simple to complex algorithms 
* Manage sequential action flows
* Complex reactive decision-making
* Supervise computational data flows

---?image=https://raw.githubusercontent.com/CWRU-EECS301-S18/syllabus/master/Lectures/Lecture04/Slides/images/StateFlowDiagram.png&size=auto 90%

---

### State Encoding

* Binary
* Gray Code
* Hamming (Fault Tolerant)
* One-Hot

---

### Binary Encoding

Simple Encoding to Minimize Registers

| State | Encoding |
|:-----:|:--------:|
|  S0   |    00    |
|  S1   |    01    |
|  S2   |    10    |
|  S3   |    11    |

---

### Gray Encoding

One-bit Change Per Transition

| State | Encoding |
|:-----:|:--------:|
|  S0   |   00   |
|  S1   |   01   |
|  S2   |   11   |
|  S3   |   10   |

---

### One-Hot Encoding

One Register Per State

| State | Encoding |
|:-----:|:--------:|
|  S0   |   0001   |
|  S1   |   0010   |
|  S2   |   0100   |
|  S3   |   1000   |


---?image=https://raw.githubusercontent.com/CWRU-EECS301-S18/syllabus/master/Lectures/Lecture04/Slides/images/StateEncoding.png&size=auto 90%


---?image=https://raw.githubusercontent.com/CWRU-EECS301-S18/syllabus/master/Lectures/Lecture04/Slides/images/StateMachineProcessBlock.png&size=auto 90%

Note:
State Machine Process Block Overview
If statement for Reset condition, case statement for State decoding.

---?image=https://raw.githubusercontent.com/CWRU-EECS301-S18/syllabus/master/Lectures/Lecture04/Slides/images/StateMachineActionTransition.png&size=auto 90%

Note:
State Actions and Transitions

---?image=https://raw.githubusercontent.com/CWRU-EECS301-S18/syllabus/master/Lectures/Lecture04/Slides/images/StateChartDiagrams.png&size=auto 90%

---

### State Machine Guidelines

* Use the **Combined Single Process** shown
* Minimize State Usage (split large FSM)
* All signals synchronous to single clock domain
* Provide Reset value for all signal assignments
* One State Machine per module
* **Lab 4: State Machine Guide** has more details

Note:
* Use Combined Single Process instead of Split Two Process (see State Machine Guide for why)
* Minimize State Usage (break up larger State Machines into multiple smaller State Machines)
* Eliminate Metastability using single clock domain
* One State per module to make managing design easier

---

# Lab 4 Overview

---?image=https://raw.githubusercontent.com/CWRU-EECS301-S18/syllabus/master/Lectures/Lecture04/Slides/images/Lab4-DevBoardLayout.png&size=90% auto

---

## Quick Binary to Decimal

+++?image=https://raw.githubusercontent.com/CWRU-EECS301-S18/syllabus/master/Lectures/Lecture04/Slides/images/Bin2DecS01.png&size=100% auto
<!-- .slide: data-background-transition="none" -->
+++?image=https://raw.githubusercontent.com/CWRU-EECS301-S18/syllabus/master/Lectures/Lecture04/Slides/images/Bin2DecS02.png&size=100% auto
<!-- .slide: data-background-transition="none" -->
+++?image=https://raw.githubusercontent.com/CWRU-EECS301-S18/syllabus/master/Lectures/Lecture04/Slides/images/Bin2DecS03.png&size=100% auto
<!-- .slide: data-background-transition="none" -->
+++?image=https://raw.githubusercontent.com/CWRU-EECS301-S18/syllabus/master/Lectures/Lecture04/Slides/images/Bin2DecS04.png&size=100% auto
<!-- .slide: data-background-transition="none" -->
+++?image=https://raw.githubusercontent.com/CWRU-EECS301-S18/syllabus/master/Lectures/Lecture04/Slides/images/Bin2DecS05.png&size=100% auto
<!-- .slide: data-background-transition="none" -->
+++?image=https://raw.githubusercontent.com/CWRU-EECS301-S18/syllabus/master/Lectures/Lecture04/Slides/images/Bin2DecS06.png&size=100% auto
<!-- .slide: data-background-transition="none" -->
+++?image=https://raw.githubusercontent.com/CWRU-EECS301-S18/syllabus/master/Lectures/Lecture04/Slides/images/Bin2DecS07.png&size=100% auto
<!-- .slide: data-background-transition="none" -->
+++?image=https://raw.githubusercontent.com/CWRU-EECS301-S18/syllabus/master/Lectures/Lecture04/Slides/images/Bin2DecS08.png&size=100% auto
<!-- .slide: data-background-transition="none" -->
+++?image=https://raw.githubusercontent.com/CWRU-EECS301-S18/syllabus/master/Lectures/Lecture04/Slides/images/Bin2DecS09.png&size=100% auto
<!-- .slide: data-background-transition="none" -->
+++?image=https://raw.githubusercontent.com/CWRU-EECS301-S18/syllabus/master/Lectures/Lecture04/Slides/images/Bin2DecS10.png&size=100% auto
<!-- .slide: data-background-transition="none" -->
+++?image=https://raw.githubusercontent.com/CWRU-EECS301-S18/syllabus/master/Lectures/Lecture04/Slides/images/Bin2DecS11.png&size=100% auto
<!-- .slide: data-background-transition="none" -->
+++?image=https://raw.githubusercontent.com/CWRU-EECS301-S18/syllabus/master/Lectures/Lecture04/Slides/images/Bin2DecS12.png&size=100% auto
<!-- .slide: data-background-transition="none" -->

---
