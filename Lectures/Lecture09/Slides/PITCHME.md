## EECS 301

**Digital Logic Laboratory**

**Week 9**

3/23/2018

Note:

Topics

* Lab 7 Review
* Lab 8 Overview
* LCD Panel

---

# Lab 7 Review

Questions? Issues? Feedback?

Note:
Lab 7 Questions, Issues, Feedback?

---

## Lab 8 Overview

* LCD Panel
	* Parallel 18-bit RGB Bus
* IP Core Generation
* On-the-Fly Graphics Rendering
* Example Frame Generators
	* Test Patterns
	* Ball Demo using Accelerometer 
	* Vector Computation Demo
* Custom Designed Frame Generator

---

## LCD Panel

![LCD](https://raw.githubusercontent.com/CWRU-EECS301-S18/syllabus/master/Lectures/Lecture09/Slides/images/LCD_Image.png)

---?image=https://raw.githubusercontent.com/CWRU-EECS301-S18/syllabus/master/Lectures/Lecture09/Slides/images/FPGA_to_LCD_Communications.png&size=90% auto

---?image=https://raw.githubusercontent.com/CWRU-EECS301-S18/syllabus/master/Lectures/Lecture09/Slides/images/LCD_HSYNC_TimingDiagram.png&size=90% auto

---?image=https://raw.githubusercontent.com/CWRU-EECS301-S18/syllabus/master/Lectures/Lecture09/Slides/images/LCD_VSYNC_TimingDiagram.png&size=90% auto

---?image=https://raw.githubusercontent.com/CWRU-EECS301-S18/syllabus/master/Lectures/Lecture09/Slides/images/LCD_Pixel_Data_Pipeline.png&size=90% auto

---

### Test Patterns

* Simple Color Patterns
	* Patterns based on Row/Col index
* Four Example Patterns
	* Outline
	* Solid Color (Red/Green/Blue)
	* Checker Pattern
	* Complex Pattern

---?image=https://raw.githubusercontent.com/CWRU-EECS301-S18/syllabus/master/Lectures/Lecture09/Slides/images/TestPattern-Checker.png&size=90% auto

---?image=https://raw.githubusercontent.com/CWRU-EECS301-S18/syllabus/master/Lectures/Lecture09/Slides/images/TestPattern-Complex.png&size=90% auto


---

### Sprites

* State of the Art 1980's Technology

![boo](https://raw.githubusercontent.com/CWRU-EECS301-S18/syllabus/master/Lectures/Lecture09/Slides/images/boo_image.png)

---?image=https://raw.githubusercontent.com/CWRU-EECS301-S18/syllabus/master/Lectures/Lecture09/Slides/images/pixilart_screen.png&size=90% auto

---?image=https://raw.githubusercontent.com/CWRU-EECS301-S18/syllabus/master/Lectures/Lecture09/Slides/images/Sprite_ROM_Initialization.png&size=auto 90%

Note:

* This sprite example uses a reduced color pallet and a transparency mask so the stored image only takes 3-bits per pixel.
* The actual color would be applied when the image is rendered.

---?image=https://raw.githubusercontent.com/CWRU-EECS301-S18/syllabus/master/Lectures/Lecture09/Slides/images/Sprite_Direction_Sectors_01.png&size=90% auto

---?image=https://raw.githubusercontent.com/CWRU-EECS301-S18/syllabus/master/Lectures/Lecture09/Slides/images/Sprite_Direction_Sectors_02.png&size=90% auto

---?image=https://raw.githubusercontent.com/CWRU-EECS301-S18/syllabus/master/Lectures/Lecture09/Slides/images/Sprite_Direction_Sectors_03.png&size=90% auto

---

### Custom Design Module

* Frame Generator options
	* Complex Pattern using Math
	* Sprites
	* Interactive Controls
	* etc...

---

### Lab Code Refactoring

* Library of modules from the previous labs
	* Switch / Keyboard Synchronizers
	* PS/2 Keyboard Module
	* LED Fadeout Controller
	* Serial Terminal Parser
	* Serial Message Generator
	* Accelerometer 
	* Sector Position Computation

---?image=https://raw.githubusercontent.com/CWRU-EECS301-S18/syllabus/master/Lectures/Lecture09/Slides/images/Sprite_Keyboard_Control_Architecture.png&size=90% auto

---

# Lab 8 Demo

---?image=https://raw.githubusercontent.com/CWRU-EECS301-S18/syllabus/master/Lectures/Lecture09/Slides/images/Lab8-DevBoardLayout.png&size=auto 90%

---

# Questions?

