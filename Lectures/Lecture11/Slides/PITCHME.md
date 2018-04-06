## EECS 301

**Digital Logic Laboratory**

**Week 11**

4/6/2018

Note:

Topics

* Lab 8 Review
* Direct Digital Synthesis
	* Applications
	* Digital Phase Wheel Examples
	* DDS Architecture
	* Phase Accumulator
	* 
* WM8731 Audio Codec
* Finite Impulse Response (FIR)
* Digitizer	
* Lab 9 Demo

---

# Lab 8 Review

Questions? Issues? Feedback?

Note:
Lab 8 Questions, Issues, Feedback?

---

### Direct Digital Synthesis (DDS)

* Arbitrary Waveform Generation
* Precision Phase Control
* Very Fine Frequency Resolution (mHz to uHz)
* Wide Frequency output range (MHz to mHz)
* Fast Waveform Switching
* Seamless Frequency and Phase Shifting

---

### DDS Applications

* RF Communications
	* AM, FM, FSK, PSK Modulation
	* Spread Spectrum Frequency Hopping
* Instrumentation
	* Time-domain Reflectometry
	* Impedance Spectroscopy
	* Arbitrary Testing Waveforms

---?image=https://raw.githubusercontent.com/CWRU-EECS301-S18/syllabus/master/Lectures/Lecture11/Slides/images/DigitalPhaseWheel_n2.png&size=90% auto

---?image=https://raw.githubusercontent.com/CWRU-EECS301-S18/syllabus/master/Lectures/Lecture11/Slides/images/DigitalPhaseWheel_n4.png&size=90% auto

---?image=https://raw.githubusercontent.com/CWRU-EECS301-S18/syllabus/master/Lectures/Lecture11/Slides/images/DigitalPhaseWheel_n8M1.png&size=90% auto

---?image=https://raw.githubusercontent.com/CWRU-EECS301-S18/syllabus/master/Lectures/Lecture11/Slides/images/DigitalPhaseWheel_n8M2.png&size=90% auto

---?image=https://raw.githubusercontent.com/CWRU-EECS301-S18/syllabus/master/Lectures/Lecture11/Slides/images/DigitalPhaseWheel_n8M3.png&size=90% auto

Note:
Nyquist

---

![DDS Waveform Demo](https://raw.githubusercontent.com/CWRU-EECS301-S18/syllabus/master/Lectures/Lecture11/Slides/images/Generator-Demo.jpg)

---?image=https://raw.githubusercontent.com/CWRU-EECS301-S18/syllabus/master/Lectures/Lecture11/Slides/images/DDS_Architecture.png&size=90% auto

---

### Phase Accumulator

* Simple Counter Register
* Tuning Word **M** added at constant rate **f<sub>o</sub>**
* Frequency Resolution determined by Width
	* f<sub>res</sub> = f<sub>o</sub> / 2<sup>N</sup>
* Frequency Output determined by Tuning Word
	* f<sub>out</sub> = M * f<sub>o</sub> / 2<sup>N</sup>
* Upper bits used to index memory pattern

---

### WM8731 Audio Codec

![WM8731 Block Diagram](https://raw.githubusercontent.com/CWRU-EECS301-S18/syllabus/master/Lectures/Lecture11/Slides/images/WM8731_Block_Diagram.png)

---

### Audio Bus

![WM8731 Audio Bus Timing](https://raw.githubusercontent.com/CWRU-EECS301-S18/syllabus/master/Lectures/Lecture11/Slides/images/WM8731_Audio_Bus_Timing.png)

---

### Sample Rate Parameters

* Sample Data = 16-bit
* Sample Rate (fs) = 48kHz
* Two Audio Channels
* BCLK Rate = 48000 x 16 x 2 = 1.536MHz
* Base Over-sample = 384fs
* XCK Rate = 48000 x 384 = 18.432MHz

---

### Finite Impulse Response (FIR)

* Many DSP applications
	* High, Low or Band-pass filters
* No feedback loop
* Deterministic timing
* Easy to implement in FPGA logic
* IP Cores available

---

### FIR Band-pass Filter

![FFT Bandpass Filter](https://raw.githubusercontent.com/CWRU-EECS301-S18/syllabus/master/Lectures/Lecture11/Slides/images/FFT_Bandpass_Freq_Resp.png)

---

![Lab 6 Scope Plot](https://raw.githubusercontent.com/CWRU-EECS301-S18/syllabus/master/Lectures/Lecture11/Slides/images/Lab6_ScopePlot.png)

---

### Signal Digitizer

* Capture digital waveforms to memory buffer
* Common applications
	* Oscilloscope
	* Data Acquisition 
	* Audio Recording
* Used in Lab 9 to capture DDS waveforms

---

### Digitized Waveform

* Fixed interval sampling

![Sampled Waveform](https://raw.githubusercontent.com/CWRU-EECS301-S18/syllabus/master/Lectures/Lecture11/Slides/images/Sampled_Waveform.png)

Note:
* Fixed sample rate doesn't require time samples
* Variable sample rate requires time stamps time domain correlation

---

### SCPI Trigger Model

* Basis for most Instrumentation Trigger Systems
* SCPI Trigger Model Layers
	* Idle
	* Initiate
	* Arm
	* Trigger
	* Device Action
* http://www.ivifoundation.org/docs/scpi-99.pdf

Note:
Standard Commands for Programmable Instruments (SCPI)
IVI Foundation Standard
SCPI Standard defines Trigger Model used by many instrumentation products.
http://www.ivifoundation.org/docs/scpi-99.pdf

---?image=https://raw.githubusercontent.com/CWRU-EECS301-S18/syllabus/master/Lectures/Lecture11/Slides/images/TriggerModel.png&size=auto 90%

---?image=https://raw.githubusercontent.com/CWRU-EECS301-S18/syllabus/master/Lectures/Lecture11/Slides/images/TriggerModelSamplingExample.png&size=90% auto


---

# Lab 9 Demo


