////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2010 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: M.63c
//  \   \         Application: netgen
//  /   /         Filename: counter_mod_3.v
// /___/   /\     Timestamp: Fri Jul 21 16:26:23 2017
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -w -sim -ofmt verilog ./tmp/_cg/counter_mod_3.ngc ./tmp/_cg/counter_mod_3.v 
// Device	: 3sd3400acs484-5
// Input file	: ./tmp/_cg/counter_mod_3.ngc
// Output file	: ./tmp/_cg/counter_mod_3.v
// # of Modules	: 1
// Design Name	: counter_mod_3
// Xilinx        : /opt/Xilinx/12.2/ISE_DS/ISE/
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module counter_mod_3 (
  sclr, ce, clk, q
)/* synthesis syn_black_box syn_noprune=1 */;
  input sclr;
  input ce;
  input clk;
  output [2 : 0] q;
  
  // synthesis translate_off
  
  wire \BU2/N0 ;
  wire \BU2/thresh0 ;
  wire NLW_VCC_P_UNCONNECTED;
  wire NLW_GND_G_UNCONNECTED;
  wire \NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_CARRYOUT_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_P<47>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_P<46>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_P<45>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_P<44>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_P<43>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_P<42>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_P<41>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_P<40>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_P<39>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_P<38>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_P<37>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_P<36>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_P<35>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_P<34>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_P<33>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_P<32>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_P<31>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_P<30>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_P<29>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_P<28>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_P<27>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_P<26>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_P<25>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_P<24>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_P<23>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_P<22>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_P<21>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_P<20>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_P<19>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_P<18>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_P<17>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_P<16>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_P<15>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_P<14>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_P<13>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_P<12>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_P<11>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_P<10>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_P<9>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_P<8>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_P<7>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_P<6>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_P<5>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_P<4>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_P<3>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_PCOUT<47>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_PCOUT<46>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_PCOUT<45>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_PCOUT<44>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_PCOUT<43>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_PCOUT<42>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_PCOUT<41>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_PCOUT<40>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_PCOUT<39>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_PCOUT<38>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_PCOUT<37>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_PCOUT<36>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_PCOUT<35>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_PCOUT<34>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_PCOUT<33>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_PCOUT<32>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_PCOUT<31>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_PCOUT<30>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_PCOUT<29>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_PCOUT<28>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_PCOUT<27>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_PCOUT<26>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_PCOUT<25>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_PCOUT<24>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_PCOUT<23>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_PCOUT<22>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_PCOUT<21>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_PCOUT<20>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_PCOUT<19>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_PCOUT<18>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_PCOUT<17>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_PCOUT<16>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_PCOUT<15>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_PCOUT<14>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_PCOUT<13>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_PCOUT<12>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_PCOUT<11>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_PCOUT<10>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_PCOUT<9>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_PCOUT<8>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_PCOUT<7>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_PCOUT<6>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_PCOUT<5>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_PCOUT<4>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_PCOUT<3>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_PCOUT<2>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_PCOUT<1>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_PCOUT<0>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_BCOUT<17>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_BCOUT<16>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_BCOUT<15>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_BCOUT<14>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_BCOUT<13>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_BCOUT<12>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_BCOUT<11>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_BCOUT<10>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_BCOUT<9>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_BCOUT<8>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_BCOUT<7>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_BCOUT<6>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_BCOUT<5>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_BCOUT<4>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_BCOUT<3>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_BCOUT<2>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_BCOUT<1>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_BCOUT<0>_UNCONNECTED ;
  wire [2 : 0] q_2;
  wire [2 : 0] \BU2/l ;
  assign
    q[2] = q_2[2],
    q[1] = q_2[1],
    q[0] = q_2[0];
  VCC   VCC_0 (
    .P(NLW_VCC_P_UNCONNECTED)
  );
  GND   GND_1 (
    .G(NLW_GND_G_UNCONNECTED)
  );
  DSP48A #(
    .A0REG ( 0 ),
    .A1REG ( 0 ),
    .B0REG ( 0 ),
    .B1REG ( 0 ),
    .CARRYINREG ( 0 ),
    .CARRYINSEL ( "OPMODE5" ),
    .CREG ( 0 ),
    .DREG ( 0 ),
    .MREG ( 0 ),
    .OPMODEREG ( 0 ),
    .PREG ( 1 ),
    .RSTTYPE ( "SYNC" ))
  \BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive  (
    .CARRYIN(\BU2/N0 ),
    .CARRYOUT(\NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_CARRYOUT_UNCONNECTED ),
    .CLK(clk),
    .RSTA(\BU2/N0 ),
    .RSTB(\BU2/N0 ),
    .RSTM(\BU2/N0 ),
    .RSTP(sclr),
    .RSTC(\BU2/N0 ),
    .RSTD(\BU2/N0 ),
    .RSTCARRYIN(\BU2/N0 ),
    .RSTOPMODE(\BU2/N0 ),
    .CEA(\BU2/N0 ),
    .CEB(\BU2/N0 ),
    .CEM(\BU2/N0 ),
    .CEP(ce),
    .CEC(\BU2/N0 ),
    .CED(\BU2/N0 ),
    .CECARRYIN(\BU2/N0 ),
    .CEOPMODE(\BU2/N0 ),
    .A({\BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , 
\BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 }),
    .B({\BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , 
\BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/thresh0 }),
    .D({\BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , 
\BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 }),
    .C({\BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , 
\BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , 
\BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , 
\BU2/N0 , \BU2/l [2], \BU2/l [1], \BU2/l [0]}),
    .P({\NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_P<47>_UNCONNECTED , 
\NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_P<46>_UNCONNECTED , 
\NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_P<45>_UNCONNECTED , 
\NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_P<44>_UNCONNECTED , 
\NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_P<43>_UNCONNECTED , 
\NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_P<42>_UNCONNECTED , 
\NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_P<41>_UNCONNECTED , 
\NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_P<40>_UNCONNECTED , 
\NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_P<39>_UNCONNECTED , 
\NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_P<38>_UNCONNECTED , 
\NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_P<37>_UNCONNECTED , 
\NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_P<36>_UNCONNECTED , 
\NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_P<35>_UNCONNECTED , 
\NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_P<34>_UNCONNECTED , 
\NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_P<33>_UNCONNECTED , 
\NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_P<32>_UNCONNECTED , 
\NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_P<31>_UNCONNECTED , 
\NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_P<30>_UNCONNECTED , 
\NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_P<29>_UNCONNECTED , 
\NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_P<28>_UNCONNECTED , 
\NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_P<27>_UNCONNECTED , 
\NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_P<26>_UNCONNECTED , 
\NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_P<25>_UNCONNECTED , 
\NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_P<24>_UNCONNECTED , 
\NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_P<23>_UNCONNECTED , 
\NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_P<22>_UNCONNECTED , 
\NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_P<21>_UNCONNECTED , 
\NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_P<20>_UNCONNECTED , 
\NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_P<19>_UNCONNECTED , 
\NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_P<18>_UNCONNECTED , 
\NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_P<17>_UNCONNECTED , 
\NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_P<16>_UNCONNECTED , 
\NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_P<15>_UNCONNECTED , 
\NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_P<14>_UNCONNECTED , 
\NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_P<13>_UNCONNECTED , 
\NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_P<12>_UNCONNECTED , 
\NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_P<11>_UNCONNECTED , 
\NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_P<10>_UNCONNECTED , 
\NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_P<9>_UNCONNECTED , 
\NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_P<8>_UNCONNECTED , 
\NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_P<7>_UNCONNECTED , 
\NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_P<6>_UNCONNECTED , 
\NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_P<5>_UNCONNECTED , 
\NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_P<4>_UNCONNECTED , 
\NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_P<3>_UNCONNECTED , q_2[2], q_2[1], q_2[0]}),
    .OPMODE({\BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/thresh0 , \BU2/N0 , \BU2/thresh0 , \BU2/thresh0 }),
    .PCIN({\BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 
, \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 
, \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 
, \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 }),
    .PCOUT({\NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_PCOUT<47>_UNCONNECTED , 
\NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_PCOUT<46>_UNCONNECTED , 
\NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_PCOUT<45>_UNCONNECTED , 
\NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_PCOUT<44>_UNCONNECTED , 
\NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_PCOUT<43>_UNCONNECTED , 
\NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_PCOUT<42>_UNCONNECTED , 
\NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_PCOUT<41>_UNCONNECTED , 
\NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_PCOUT<40>_UNCONNECTED , 
\NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_PCOUT<39>_UNCONNECTED , 
\NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_PCOUT<38>_UNCONNECTED , 
\NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_PCOUT<37>_UNCONNECTED , 
\NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_PCOUT<36>_UNCONNECTED , 
\NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_PCOUT<35>_UNCONNECTED , 
\NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_PCOUT<34>_UNCONNECTED , 
\NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_PCOUT<33>_UNCONNECTED , 
\NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_PCOUT<32>_UNCONNECTED , 
\NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_PCOUT<31>_UNCONNECTED , 
\NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_PCOUT<30>_UNCONNECTED , 
\NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_PCOUT<29>_UNCONNECTED , 
\NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_PCOUT<28>_UNCONNECTED , 
\NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_PCOUT<27>_UNCONNECTED , 
\NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_PCOUT<26>_UNCONNECTED , 
\NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_PCOUT<25>_UNCONNECTED , 
\NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_PCOUT<24>_UNCONNECTED , 
\NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_PCOUT<23>_UNCONNECTED , 
\NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_PCOUT<22>_UNCONNECTED , 
\NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_PCOUT<21>_UNCONNECTED , 
\NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_PCOUT<20>_UNCONNECTED , 
\NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_PCOUT<19>_UNCONNECTED , 
\NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_PCOUT<18>_UNCONNECTED , 
\NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_PCOUT<17>_UNCONNECTED , 
\NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_PCOUT<16>_UNCONNECTED , 
\NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_PCOUT<15>_UNCONNECTED , 
\NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_PCOUT<14>_UNCONNECTED , 
\NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_PCOUT<13>_UNCONNECTED , 
\NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_PCOUT<12>_UNCONNECTED , 
\NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_PCOUT<11>_UNCONNECTED , 
\NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_PCOUT<10>_UNCONNECTED , 
\NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_PCOUT<9>_UNCONNECTED , 
\NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_PCOUT<8>_UNCONNECTED , 
\NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_PCOUT<7>_UNCONNECTED , 
\NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_PCOUT<6>_UNCONNECTED , 
\NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_PCOUT<5>_UNCONNECTED , 
\NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_PCOUT<4>_UNCONNECTED , 
\NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_PCOUT<3>_UNCONNECTED , 
\NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_PCOUT<2>_UNCONNECTED , 
\NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_PCOUT<1>_UNCONNECTED , 
\NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_PCOUT<0>_UNCONNECTED }),
    .BCOUT({\NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_BCOUT<17>_UNCONNECTED , 
\NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_BCOUT<16>_UNCONNECTED , 
\NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_BCOUT<15>_UNCONNECTED , 
\NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_BCOUT<14>_UNCONNECTED , 
\NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_BCOUT<13>_UNCONNECTED , 
\NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_BCOUT<12>_UNCONNECTED , 
\NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_BCOUT<11>_UNCONNECTED , 
\NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_BCOUT<10>_UNCONNECTED , 
\NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_BCOUT<9>_UNCONNECTED , 
\NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_BCOUT<8>_UNCONNECTED , 
\NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_BCOUT<7>_UNCONNECTED , 
\NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_BCOUT<6>_UNCONNECTED , 
\NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_BCOUT<5>_UNCONNECTED , 
\NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_BCOUT<4>_UNCONNECTED , 
\NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_BCOUT<3>_UNCONNECTED , 
\NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_BCOUT<2>_UNCONNECTED , 
\NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_BCOUT<1>_UNCONNECTED , 
\NLW_BU2/U0/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_sp3adsp.i_dsp48a_wrap/i_primitive_BCOUT<0>_UNCONNECTED })
  );
  VCC   \BU2/XST_VCC  (
    .P(\BU2/thresh0 )
  );
  GND   \BU2/XST_GND  (
    .G(\BU2/N0 )
  );

// synthesis translate_on

endmodule

// synthesis translate_off

`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

// synthesis translate_on
