## EECS 301

**Digital Logic Laboratory**

**Week 13**

4/20/2018

Note:

Topics

* Lab 9 Questions
* CRC Algorithm
	* LFSR
* SHA-256 Algorithm
* 


---

### Ethernet 802.3 Layer 2 Frame

![Ethernet L2 Frame](https://upload.wikimedia.org/wikipedia/commons/thumb/1/13/Ethernet_Type_II_Frame_format.svg/1280px-Ethernet_Type_II_Frame_format.svg.png)

Note:

* EtherType 0x8000 is IPv4 Datagram
* CRC Checksum is a 32-bit CRC

---

#### Cyclic Redundancy Check (CRC)

* Data Block Error Detection
* Fixed-Width Checksum Value
* Remainder from Polynomial Division
* Simple Error Correction Possible
* Uses
	* Ethernet L2 Frames (32-bit)
	* USB (5-bit & 16-bit)
	* Many other [protocols](https://en.wikipedia.org/wiki/Cyclic_redundancy_check#Polynomial_representations_of_cyclic_redundancy_checks)

Note:

* A single fixed-width CRC is computed for a block of data

---

#### CRC Algorithm

* CRC type defined by bit-width and polynomial
* Algorithm implemented with a Linear-Feedback Shift Register
* Example: CRC-5-USB
	* Used for USB Token Packets
	* 5-bit CRC value
	* Polynomial P(x) = x<sup>5</sup> + x<sup>2</sup> + 1

Note:

* USB Token Packets indicate the type of the next transaction on the bus.

---?image=https://raw.githubusercontent.com/CWRU-EECS301-S18/syllabus/master/Lectures/Lecture13/Slides/images/LFSR_CRC5_Diagram.png&size=90% auto

---

#### Parallel Data Optimization

* LFSR normally feeds one bit at a time
* Many applications use 4, 8, or wider data paths
* Feed multiple bits per cycle by tracking bit positions over multiple steps
* Adjust the shift register input equations based on finial positions
* Unwind the Loop

---?image=https://raw.githubusercontent.com/CWRU-EECS301-S18/syllabus/master/Lectures/Lecture13/Slides/images/Loop_Unwind_Step0.png&size=90% auto
---?image=https://raw.githubusercontent.com/CWRU-EECS301-S18/syllabus/master/Lectures/Lecture13/Slides/images/Loop_Unwind_Step1.png&size=90% auto
<!-- .slide: data-background-transition="none" -->
---?image=https://raw.githubusercontent.com/CWRU-EECS301-S18/syllabus/master/Lectures/Lecture13/Slides/images/Loop_Unwind_Step2.png&size=90% auto
<!-- .slide: data-background-transition="none" -->
---?image=https://raw.githubusercontent.com/CWRU-EECS301-S18/syllabus/master/Lectures/Lecture13/Slides/images/Loop_Unwind_Step3.png&size=90% auto
<!-- .slide: data-background-transition="none" -->
---?image=https://raw.githubusercontent.com/CWRU-EECS301-S18/syllabus/master/Lectures/Lecture13/Slides/images/Loop_Unwind_Step4.png&size=90% auto
<!-- .slide: data-background-transition="none" -->

---?image=https://raw.githubusercontent.com/CWRU-EECS301-S18/syllabus/master/Lectures/Lecture13/Slides/images/CRC5_Code_Example.png&size=90% auto
<!-- .slide: data-background-transition="none" -->

---

#### Ethernet L2 Frame CRC-32

* 32-bit CRC value
* P(x) = x<sup>32</sup> + x<sup>26</sup> + x<sup>23</sup> + x<sup>22</sup> + x<sup>16</sup> + x<sup>12</sup> + x<sup>11</sup> + x<sup>10</sup> + x<sup>8</sup> + x<sup>7</sup> + x<sup>5</sup> + x<sup>4</sup> + x<sup>2</sup> + x + 1
* Leading and Trailing 0's Corrections
	* Initial Value set to 0xFFFFFFFF
	* Post Invert CRC Value before sending
* 8-bit Parallel Data Input works best

Note:

* Ethernet Data Payloads are often padded with 0's
* Setting Initial Value to all 1's prevents leading 0's from being ignored
* Post Inverting CRC value prevents trailing (or padded) 0's from being ignored

---

#### Hash Functions

* A Hash Function produces a fixed-width value from an arbitrary amount of data
* CRC is a form of hash function
* Some have cryptographic security, some don't
* Other Common Examples
	* MD5
	* SHA-256
	* [Many More](https://en.wikipedia.org/wiki/List_of_hash_functions)

---

### SHA-256

* Cryptographic Hash Function
* Applications
	* Encryption Keys
	* BitCoin Mining
	* [Many More](https://en.wikipedia.org/wiki/SHA-2)

Note:

[Online SHA-256 Calculator](http://www.md5calc.com)

---

#### Compression Function

![Diagram](https://upload.wikimedia.org/wikipedia/commons/thumb/7/7d/SHA-2.svg/1280px-SHA-2.svg.png)

---

### Lab 10 Demo

---

# Questions

