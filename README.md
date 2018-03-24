# EECS301 Digital Logic Laboratory

## ABET Course Description

This course is an introductory experimental laboratory for digital logic synthesis. The course introduces students to the process of design, analysis, simulation, synthesis and implementation of digital logic networks utilizing current Field Programmable Gate Array (FPGA) design techniques. The course covers the design of combinational circuits, registers, counters, metastability mitigation, synchronous/asynchronous Finite State Machines, registered based designs, arithmetic computational blocks and the instantiation of custom Intellectual Property (IP) blocks within the FPGA design. 

## Pre-req: EECS 281

## Course Overview

The EECS301 laboratory introduces students to the hardware and software design techniques required when implementing FPGA systems, with a focus on the skills needed when working in a real-world production environment.

FPGA-based designs require a different programming paradigm than used by CPU-based systems to deal with the massively parallel logic fabric offered by the FPGA architecture.  All labs use Hardware Definition Languages (HDL), Verilog and/or VHDL, to describe the FPGA logic implementation.  High-level logic abstraction, using HDLs, allow large design projects to be created and managed more efficiently.  Modular design techniques are presented which simplify code management and enable parameterization of modules for code reuse/refactoring (a must in production environments).

Students will gain an in-depth understanding of the Quartus FPGA Design Software  for developing, debugging, and loading FPGA designs.  Emphasis is placed on debugging FPGA logic using the ModelSim logic simulator, as well as techniques for full-coverage design verification and regression testing.  The labs will also introduce other hardware debugging skills, such as using a logic analyzer to capture serial bus waveforms.

Students will work with design code for many high-end peripherals commonly found in FPGA designs.  Industry standard serial communication protocols such as SPI, I<sup>2</sup>C, I<sup>2</sup>S, UNI/O (1-wire), asynchronous UART protocols, and Ethernet GMII will communicate with various devices.  Utilized devices include LEDs, Switches, Audio Codec, Accelerometer and LCD.  Advanced topics such as critical path timing and metastability mitigation are presented.

Labs include both individual and team projects.  The labs are distributed using GitHub Classroom which simplifies team collaboration and provides students an opportunity to use an industry standard source control system they may encounter in the workplace.  Each lab repository is distributed with the lab guide documents and a starting code framework. Once students complete the lab, they commit their code and lab report back to the repository and push all the work to GitHub for grading.

## Textbook

A textbook for the course will not be required.  The lab assignments will include all necessary documentation to complete the project designs.  Additional reference material suggestions will be included with the lab guides.

### Useful Starting Reference Material:

* [DE1-SoC DevKit Overview](DE1-SoC/README.md)
* [Intel Quartus Prime Support](https://www.altera.com/products/design-software/fpga-design/quartus-prime/support.html)
* [Cyclone V Device Overview](https://www.altera.com/documentation/sam1403480548153.html)<sup>*</sup>
* [Cyclone V Device Handbook](https://www.altera.com/documentation/sam1403481100977.html)<sup>*</sup>

	<sup>*</sup> NOTE: These are large documents you don't have to read though to get started but skimming through them may be interesting for perspective.

## Course Structure

* All lab assignments will be assigned and collected via [GitHub Classroom](https://github.com) (details of which will be described in the first lab).
* The course consists of 6 one-week labs and 4 two-week labs.
* The first 4 labs will be solo projects and the remaining 6 labs will be two-person team projects.
* Two-person teams will be formed on the first day of class.
* An [FPGA Development Kit](http://www.terasic.com.tw/cgi-bin/page/archive.pl?Language=English&No=836) will be assigned to each team to share for the projects.
* FPGA design software is available on the machines in the Glennan 312 Design Lab or may be setup on personal computers (details are included with the first lab).

### [Teams Roster](EECS301_S18_TeamRoster.md)

## Course Content and Requirements

### Course Ethics and Policies

* _All work turned in should be that of your own._
* Study groups are encouraged, but, again,
* _All work turned in should be your own._
* Neither copy another student's work nor allow your work to be copied.
* Please refer to the [University's Academic Integrity Standards](http://www.case.edu/provost/ugstudies/acintegrity.htm)
* Ultimately cheating only hurts yourself - short term success may seem appealing to meet a deadline, but in the long term not learning the material will come back to bite you in ways you can't anticipate.   Punishments for engaging in this kind of activity are VERY severe and non-reversible.  So simply don't go there.

### EECS301 Spring 2018 Lecture Schedule

|                  |     Date     |
|------------------|:------------:|
| **Lecture 1**    | Jan 19, 2018 |
| **Lecture 2**    | Jan 26, 2018 |
| **Lecture 3**    | Feb  2, 2018 |
| **Lecture 4**    | Feb  9, 2018 |
| **Lecture 5**    | Feb 16, 2018 |
| **Lecture 6**    | Feb 23, 2018 |
| **Lecture 7**    | Mar  2, 2018 |
| **Lecture 8**    | Mar  9, 2018 |
| **Spring Break** | Mar 16, 2018 |
| **Lecture 9**    | Mar 23, 2018 |
| **Lecture 10**   | Mar 30, 2018 |
| **Lecture 11**   | Apr  6, 2018 |
| **Lecture 12**   | Apr 13, 2018 |
| **Lecture 13**   | Apr 20, 2018 |
| **Lecture 14**   | Apr 27, 2018 |

* First Day of Classes - Jan 16, 2018
* Spring Break - Mar 12-16, 2018
* Last Day of Classes - Apr 30, 2018
* Finals - May 3 to May 10, 2018

### Lab Schedule

|            |   Assigned   |      Due     |  Cutoff Date |  Point Value |
|------------|:------------:|:------------:|:------------:|:------------:|
| **Lab 1**  | Jan 19, 2018 | Jan 26, 2018 | Feb  9, 2018 |  140 Points  |
| **Lab 2**  | Jan 26, 2018 | Feb  2, 2018 | Feb 16, 2018 |  160 Points  |
| **Lab 3**  | Feb  2, 2018 | Feb  9, 2018 | Feb 23, 2018 |  290 Points  |
| **Lab 4**  | Feb  9, 2018 | Feb 16, 2018 | Mar  2, 2018 |  140 Points  |
| **Lab 5**  | Feb 16, 2018 | Feb 23, 2018 | Mar  9, 2018 |  210 Points  |
| **Lab 6**  | Feb 23, 2018 | Mar  2, 2018 | Mar 16, 2018 |  330 Points  |
| **Lab 7**  | Mar  2, 2018 | Mar 23, 2018 | Apr  6, 2018 |  560 Points  |
| **Lab 8**  | Mar 23, 2018 | Apr  9, 2018 | Apr 20, 2018 |  530 Points  |
| **Lab 9**  | Apr  9, 2018 | Apr 20, 2018 | May  4, 2018 |  275 Points  |
| **Lab 10** | Apr 20, 2018 | May  4, 2018 | May 10, 2018 |  225 Points  |

* Lab Dev Kits **MUST** be returned to the lockers by 4:15pm May 10, 2018

### Grading Policy

(A: 90-100%, B: 80-90%, C: 70-80%, D: 60-70%, F: 0-60%)  

:warning: _curve possible at instructor's discretion_


### Lab Submission Rubrics

* Labs are due at 3:00 pm EST on date specified in above table.
* The lab deadlines are implemented to keep you on track - once you 'git' behind, it's very difficult to catch up.
* Late penalty is -5 points per day late, on a simple subtractive basis (max late penalty is -50 points or 10 days).
* If labs are more than 10 days late then clearly something is wrong and we need to talk about it.
* Labs 1-9 have an absolute cutoff deadline of 2 weeks after assignment.  No submissions are accepted after that date for credit.
* Lab 10 has an absolute cutoff deadline of May 10, 2010 @ 12:14pm.  No submissions are accepted after that date for credit.
* Lab Reports should be submitted as a Markdown file (submitted thru GitHub) and the PDF (submitted thru Canvas) generated from it. Each submitted file is worth 5 points (for a total of 10 points of the final grade).
* For the demonstration portions of the labs, if the demo of the lab is submitted after the listed due date/time, the point value for the demo portion is only worth 50% of the original value. This is independent of how late it is submitted - from 1 femto-second late up to when the lab is no longer accepted (at which point the value becomes 0%).
* Opportunities will be given throughout the course for extra credit points (to achieve more advanced concepts).  Take them!!
* No special labs will be created for extra credit.  Take advantage of the extra credit points opportunities when given.
