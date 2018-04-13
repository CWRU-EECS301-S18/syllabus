## EECS 301

**Digital Logic Laboratory**

**Week 12**

4/13/2018

Note:

Topics

* Lab 9 Questions
* Clock Domains
	* Sync Structures
* Timing Constraints
	* Clock
	* Input/Output Delays
* TimeQuest Demo
* 

---

### Industry Workshop

#### Intel Programmable Solutions Group

**Introduction to FPGAs and Embedded Systems Design**

Tuesday April 17th, 5:00 - 8:00PM, Glennan 408

Bring your laptop - Dinner Provided

---

## Clock Domains

* Large designs may contain multiple clock sources
* A **Clock Domain** contains all logic synchronized by one clock source
* Metastable events can occur when passing signals between domains
* Always use proper synchronization structures when crossing domains

---

### Clock Domain Crossing (CDC)

* Signals crossing from one domain to another are **asynchronous**
* Asynchronous inputs can cause metastability

![Clock Domain Crossing](https://raw.githubusercontent.com/CWRU-EECS301-S18/syllabus/master/Lectures/Lecture12/Slides/images/Clock_Domains_01.png)

---

### Synchronization Buffers

* Same method used for Key and Push Button inputs
* Works for slow clock to fast clock domains

![Clock Domain Crossing](https://raw.githubusercontent.com/CWRU-EECS301-S18/syllabus/master/Lectures/Lecture12/Slides/images/Clock_Domains_02.png)

---

### Sync with Edge Detection

* Generate single clock pulse on edge transition

![Clock Domain Crossing](https://raw.githubusercontent.com/CWRU-EECS301-S18/syllabus/master/Lectures/Lecture12/Slides/images/Clock_Domains_03.png)

---

### Other CDC Structures

* [Flancter](https://www.doulos.com/knowhow/fpga/fastcounter/)
* True-Dual Port Block RAM
* FIFO
* Mailbox

---


### FPGA Timing Constraints

* All FPGA signals require timing constraints
* Timing constraints set the allowed propagation time between registers
* Insuring register setup and hold times prevent metastability
* Constraints are used when mapping RTL logic onto the FPGA fabric

---

### Quartus Timing Constraints

* Quartus constraint files have an **.sdc** extension
* Every lab project has had a constraints file included
* TimeQuest Timing Analyzer provides timing reports
* Refer to this [User Guide](http://www.alterawiki.com/uploads/3/3f/TimeQuest_User_Guide.pdf) for detailed information about setting constraints in Quartus

---

### Clock Constraints

* Clock Constraints must be provided
* All registered signals reference a Clock
* Quartus can derive signal constraints automatically from the Clock constraint
* Most signals in the system will be derived

---?image=https://raw.githubusercontent.com/CWRU-EECS301-S18/syllabus/master/Lectures/Lecture12/Slides/images/Clock_Constraint_Example.png&size=auto 90%

---

#### Quartus Constraints GUI

* Graphical interface to create constraints

![Create Clock GUI](https://raw.githubusercontent.com/CWRU-EECS301-S18/syllabus/master/Lectures/Lecture12/Slides/images/Timing_Create_Clock.png)

---

#### Input/Output Signal Constraints

* Input/Output Constraints specify timing related to what is **outside** the FPGA
* The actual parameters are counter-intuitive
* The [User Guide](http://www.alterawiki.com/uploads/3/3f/TimeQuest_User_Guide.pdf) has a good description and methodology for setting the input and output constraints 

---

### Other Constraints

* Multi-cycle
* False Paths
* Clock Relationships
* See the [User Guide](http://www.alterawiki.com/uploads/3/3f/TimeQuest_User_Guide.pdf)

---

# Questions

