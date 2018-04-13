## Generated SDC file "EECS301_Lab8_TopLevel.sdc"

## Copyright (C) 2017  Intel Corporation. All rights reserved.
## Your use of Intel Corporation's design tools, logic functions 
## and other software and tools, and its AMPP partner logic 
## functions, and any output files from any of the foregoing 
## (including device programming or simulation files), and any 
## associated documentation or information are expressly subject 
## to the terms and conditions of the Intel Program License 
## Subscription Agreement, the Intel Quartus Prime License Agreement,
## the Intel MegaCore Function License Agreement, or other 
## applicable license agreement, including, without limitation, 
## that your use is for the sole purpose of programming logic 
## devices manufactured by Intel and sold by Intel or its 
## authorized distributors.  Please refer to the applicable 
## agreement for further details.


## VENDOR  "Altera"
## PROGRAM "Quartus Prime"
## VERSION "Version 17.0.0 Build 595 04/25/2017 SJ Lite Edition"

## DATE    "Sat Oct 21 19:03:08 2017"

##
## DEVICE  "5CSEMA5F31C6"
##


#**************************************************************
# Time Information
#**************************************************************

set_time_format -unit ns -decimal_places 3



#**************************************************************
# Create Clock
#**************************************************************

create_clock -name {CLOCK_50} -period 20.000 -waveform { 0.000 10.000 } [get_ports {CLOCK_50}]
create_clock -name {ext_input_vclk} -period 20.000 -waveform { 0.000 10.000 } 
create_clock -name {ext_output_vclk} -period 20.000 -waveform { 0.000 10.000 } 


#**************************************************************
# Create Generated Clock
#**************************************************************

create_generated_clock -name {sys_clk_gen|lcd_clk_pll|lcd_clock_pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL|vcoph[0]} -source [get_pins {sys_clk_gen|lcd_clk_pll|lcd_clock_pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL|refclkin}] -duty_cycle 50/1 -multiply_by 44 -divide_by 5 -master_clock {CLOCK_50} [get_pins {sys_clk_gen|lcd_clk_pll|lcd_clock_pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL|vcoph[0]}] 
create_generated_clock -name {sys_clk_gen|lcd_clk_pll|lcd_clock_pll_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk} -source [get_pins {sys_clk_gen|lcd_clk_pll|lcd_clock_pll_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|vco0ph[0]}] -duty_cycle 50/1 -multiply_by 1 -divide_by 10 -master_clock {sys_clk_gen|lcd_clk_pll|lcd_clock_pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL|vcoph[0]} [get_pins {sys_clk_gen|lcd_clk_pll|lcd_clock_pll_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk}] 

create_generated_clock -name {sys_clk_gen|aud_clk_pll|audio_clock_pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL|vcoph[0]} -source [get_pins {sys_clk_gen|aud_clk_pll|audio_clock_pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL|refclkin}] -duty_cycle 50/1 -multiply_by 519 -divide_by 64 -master_clock {CLOCK_50} [get_pins {sys_clk_gen|aud_clk_pll|audio_clock_pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL|vcoph[0]}] 
create_generated_clock -name {sys_clk_gen|aud_clk_pll|audio_clock_pll_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk} -source [get_pins {sys_clk_gen|aud_clk_pll|audio_clock_pll_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|vco0ph[0]}] -duty_cycle 50/1 -multiply_by 1 -divide_by 22 -master_clock {sys_clk_gen|aud_clk_pll|audio_clock_pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL|vcoph[0]} [get_pins {sys_clk_gen|aud_clk_pll|audio_clock_pll_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk}] 



#**************************************************************
# Set Clock Latency
#**************************************************************



#**************************************************************
# Set Clock Uncertainty
#**************************************************************

derive_clock_uncertainty


#**************************************************************
# Set Input Delay
#**************************************************************

set_input_delay -add_delay  -clock [get_clocks {ext_input_vclk}] -max 0.000 [get_ports {KEY[*]}]
set_input_delay -add_delay  -clock [get_clocks {ext_input_vclk}] -min 0.000 [get_ports {KEY[*]}]
set_input_delay -add_delay  -clock [get_clocks {ext_input_vclk}] -max 0.000 [get_ports {SW[*]}]
set_input_delay -add_delay  -clock [get_clocks {ext_input_vclk}] -min 0.000 [get_ports {SW[*]}]
set_input_delay -add_delay  -clock [get_clocks {ext_input_vclk}] -max 0.000 [get_ports {LCD_SDO}]
set_input_delay -add_delay  -clock [get_clocks {ext_input_vclk}] -min 0.000 [get_ports {LCD_SDO}]
set_input_delay -add_delay  -clock [get_clocks {ext_input_vclk}] -max 0.000 [get_ports {FPGA_I2C_SDAT}]
set_input_delay -add_delay  -clock [get_clocks {ext_input_vclk}] -min 0.000 [get_ports {FPGA_I2C_SDAT}]
set_input_delay -add_delay  -clock [get_clocks {ext_input_vclk}] -max 0.000 [get_ports {AUD_ADCDAT}]
set_input_delay -add_delay  -clock [get_clocks {ext_input_vclk}] -min 0.000 [get_ports {AUD_ADCDAT}]


#**************************************************************
# Set Output Delay
#**************************************************************

set_output_delay -add_delay  -clock [get_clocks {ext_output_vclk}]  2.000 [get_ports {HEX0[*]}]
set_output_delay -add_delay  -clock [get_clocks {ext_output_vclk}]  2.000 [get_ports {HEX1[*]}]
set_output_delay -add_delay  -clock [get_clocks {ext_output_vclk}]  2.000 [get_ports {HEX2[*]}]
set_output_delay -add_delay  -clock [get_clocks {ext_output_vclk}]  2.000 [get_ports {HEX3[*]}]
set_output_delay -add_delay  -clock [get_clocks {ext_output_vclk}]  2.000 [get_ports {HEX4[*]}]
set_output_delay -add_delay  -clock [get_clocks {ext_output_vclk}]  2.000 [get_ports {HEX5[*]}]
set_output_delay -add_delay  -clock [get_clocks {ext_output_vclk}]  2.000 [get_ports {LEDR[*]}]
set_output_delay -add_delay  -clock [get_clocks {ext_output_vclk}]  2.000 [get_ports {LCD_R0}]
set_output_delay -add_delay  -clock [get_clocks {ext_output_vclk}]  2.000 [get_ports {LCD_R1}]
set_output_delay -add_delay  -clock [get_clocks {ext_output_vclk}]  2.000 [get_ports {LCD_R2}]
set_output_delay -add_delay  -clock [get_clocks {ext_output_vclk}]  2.000 [get_ports {LCD_R3}]
set_output_delay -add_delay  -clock [get_clocks {ext_output_vclk}]  2.000 [get_ports {LCD_R4}]
set_output_delay -add_delay  -clock [get_clocks {ext_output_vclk}]  2.000 [get_ports {LCD_R5}]
set_output_delay -add_delay  -clock [get_clocks {ext_output_vclk}]  2.000 [get_ports {LCD_G0}]
set_output_delay -add_delay  -clock [get_clocks {ext_output_vclk}]  2.000 [get_ports {LCD_G1}]
set_output_delay -add_delay  -clock [get_clocks {ext_output_vclk}]  2.000 [get_ports {LCD_G2}]
set_output_delay -add_delay  -clock [get_clocks {ext_output_vclk}]  2.000 [get_ports {LCD_G3}]
set_output_delay -add_delay  -clock [get_clocks {ext_output_vclk}]  2.000 [get_ports {LCD_G4}]
set_output_delay -add_delay  -clock [get_clocks {ext_output_vclk}]  2.000 [get_ports {LCD_G5}]
set_output_delay -add_delay  -clock [get_clocks {ext_output_vclk}]  2.000 [get_ports {LCD_B0}]
set_output_delay -add_delay  -clock [get_clocks {ext_output_vclk}]  2.000 [get_ports {LCD_B1}]
set_output_delay -add_delay  -clock [get_clocks {ext_output_vclk}]  2.000 [get_ports {LCD_B2}]
set_output_delay -add_delay  -clock [get_clocks {ext_output_vclk}]  2.000 [get_ports {LCD_B3}]
set_output_delay -add_delay  -clock [get_clocks {ext_output_vclk}]  2.000 [get_ports {LCD_B4}]
set_output_delay -add_delay  -clock [get_clocks {ext_output_vclk}]  2.000 [get_ports {LCD_B5}]
set_output_delay -add_delay  -clock [get_clocks {ext_output_vclk}]  2.000 [get_ports {LCD_HSYNC}]
set_output_delay -add_delay  -clock [get_clocks {ext_output_vclk}]  2.000 [get_ports {LCD_VSYNC}]
set_output_delay -add_delay  -clock [get_clocks {ext_output_vclk}]  2.000 [get_ports {LCD_RESET}]
set_output_delay -add_delay  -clock [get_clocks {ext_output_vclk}]  2.000 [get_ports {LCD_DEN}]
set_output_delay -add_delay  -clock [get_clocks {ext_output_vclk}]  2.000 [get_ports {LCD_DOTCLK}]
set_output_delay -add_delay  -clock [get_clocks {ext_output_vclk}]  2.000 [get_ports {LCD_WR}]
set_output_delay -add_delay  -clock [get_clocks {ext_output_vclk}]  2.000 [get_ports {LCD_CS}]
set_output_delay -add_delay  -clock [get_clocks {ext_output_vclk}]  2.000 [get_ports {LCD_DC}]
set_output_delay -add_delay  -clock [get_clocks {ext_output_vclk}]  2.000 [get_ports {LCD_LED_CTRL_N}]
set_output_delay -add_delay  -clock [get_clocks {ext_output_vclk}]  2.000 [get_ports {LCD_RD}]
set_output_delay -add_delay  -clock [get_clocks {ext_output_vclk}]  2.000 [get_ports {LCD_SCK}]
set_output_delay -add_delay  -clock [get_clocks {ext_output_vclk}]  2.000 [get_ports {LCD_SDI}]
set_output_delay -add_delay  -clock [get_clocks {ext_output_vclk}]  2.000 [get_ports {AUD_ADCLRCK}]
set_output_delay -add_delay  -clock [get_clocks {ext_output_vclk}]  2.000 [get_ports {AUD_BCLK}]
set_output_delay -add_delay  -clock [get_clocks {ext_output_vclk}]  2.000 [get_ports {AUD_DACDAT}]
set_output_delay -add_delay  -clock [get_clocks {ext_output_vclk}]  2.000 [get_ports {AUD_DACLRCK}]
set_output_delay -add_delay  -clock [get_clocks {ext_output_vclk}]  2.000 [get_ports {AUD_XCK}]
set_output_delay -add_delay  -clock [get_clocks {ext_output_vclk}]  2.000 [get_ports {FPGA_I2C_SCLK}]
set_output_delay -add_delay  -clock [get_clocks {ext_output_vclk}]  2.000 [get_ports {FPGA_I2C_SDAT}]


#**************************************************************
# Set Clock Groups
#**************************************************************

set_clock_groups -asynchronous -group [get_clocks { CLOCK_50 }] -group [get_clocks { ext_input_vclk }] -group [get_clocks { ext_output_vclk }]
set_clock_groups -asynchronous -group [get_clocks { sys_clk_gen|lcd_clk_pll|lcd_clock_pll_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk }] -group [get_clocks { ext_input_vclk }] -group [get_clocks { ext_output_vclk }]
set_clock_groups -asynchronous -group [get_clocks { sys_clk_gen|aud_clk_pll|audio_clock_pll_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk }] -group [get_clocks { ext_input_vclk }] -group [get_clocks { ext_output_vclk }]


#**************************************************************
# Set False Path
#**************************************************************




#**************************************************************
# Set Multicycle Path
#**************************************************************



#**************************************************************
# Set Maximum Delay
#**************************************************************



#**************************************************************
# Set Minimum Delay
#**************************************************************



#**************************************************************
# Set Input Transition
#**************************************************************

