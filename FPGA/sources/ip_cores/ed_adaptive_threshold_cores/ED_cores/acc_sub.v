////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2010 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: M.63c
//  \   \         Application: netgen
//  /   /         Filename: acc_sub.v
// /___/   /\     Timestamp: Fri Jul 21 16:02:23 2017
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -w -sim -ofmt verilog ./tmp/_cg/acc_sub.ngc ./tmp/_cg/acc_sub.v 
// Device	: 3sd3400acs484-5
// Input file	: ./tmp/_cg/acc_sub.ngc
// Output file	: ./tmp/_cg/acc_sub.v
// # of Modules	: 1
// Design Name	: acc_sub
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

module acc_sub (
  sclr, ce, clk, add, b, q
)/* synthesis syn_black_box syn_noprune=1 */;
  input sclr;
  input ce;
  input clk;
  input add;
  input [31 : 0] b;
  output [36 : 0] q;
  
  // synthesis translate_off
  
  wire \BU2/U0/i_ADDf ;
  wire \BU2/N1 ;
  wire \BU2/N0 ;
  wire NLW_VCC_P_UNCONNECTED;
  wire NLW_GND_G_UNCONNECTED;
  wire \NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_CARRYOUT_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_P<47>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_P<46>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_P<45>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_P<44>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_P<43>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_P<42>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_P<41>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_P<40>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_P<39>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_P<38>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_P<37>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_PCOUT<47>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_PCOUT<46>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_PCOUT<45>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_PCOUT<44>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_PCOUT<43>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_PCOUT<42>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_PCOUT<41>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_PCOUT<40>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_PCOUT<39>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_PCOUT<38>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_PCOUT<37>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_PCOUT<36>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_PCOUT<35>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_PCOUT<34>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_PCOUT<33>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_PCOUT<32>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_PCOUT<31>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_PCOUT<30>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_PCOUT<29>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_PCOUT<28>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_PCOUT<27>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_PCOUT<26>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_PCOUT<25>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_PCOUT<24>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_PCOUT<23>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_PCOUT<22>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_PCOUT<21>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_PCOUT<20>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_PCOUT<19>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_PCOUT<18>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_PCOUT<17>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_PCOUT<16>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_PCOUT<15>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_PCOUT<14>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_PCOUT<13>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_PCOUT<12>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_PCOUT<11>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_PCOUT<10>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_PCOUT<9>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_PCOUT<8>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_PCOUT<7>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_PCOUT<6>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_PCOUT<5>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_PCOUT<4>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_PCOUT<3>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_PCOUT<2>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_PCOUT<1>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_PCOUT<0>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_BCOUT<17>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_BCOUT<16>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_BCOUT<15>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_BCOUT<14>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_BCOUT<13>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_BCOUT<12>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_BCOUT<11>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_BCOUT<10>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_BCOUT<9>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_BCOUT<8>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_BCOUT<7>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_BCOUT<6>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_BCOUT<5>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_BCOUT<4>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_BCOUT<3>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_BCOUT<2>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_BCOUT<1>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_BCOUT<0>_UNCONNECTED ;
  wire [31 : 0] b_2;
  wire [36 : 0] q_3;
  assign
    b_2[31] = b[31],
    b_2[30] = b[30],
    b_2[29] = b[29],
    b_2[28] = b[28],
    b_2[27] = b[27],
    b_2[26] = b[26],
    b_2[25] = b[25],
    b_2[24] = b[24],
    b_2[23] = b[23],
    b_2[22] = b[22],
    b_2[21] = b[21],
    b_2[20] = b[20],
    b_2[19] = b[19],
    b_2[18] = b[18],
    b_2[17] = b[17],
    b_2[16] = b[16],
    b_2[15] = b[15],
    b_2[14] = b[14],
    b_2[13] = b[13],
    b_2[12] = b[12],
    b_2[11] = b[11],
    b_2[10] = b[10],
    b_2[9] = b[9],
    b_2[8] = b[8],
    b_2[7] = b[7],
    b_2[6] = b[6],
    b_2[5] = b[5],
    b_2[4] = b[4],
    b_2[3] = b[3],
    b_2[2] = b[2],
    b_2[1] = b[1],
    b_2[0] = b[0],
    q[36] = q_3[36],
    q[35] = q_3[35],
    q[34] = q_3[34],
    q[33] = q_3[33],
    q[32] = q_3[32],
    q[31] = q_3[31],
    q[30] = q_3[30],
    q[29] = q_3[29],
    q[28] = q_3[28],
    q[27] = q_3[27],
    q[26] = q_3[26],
    q[25] = q_3[25],
    q[24] = q_3[24],
    q[23] = q_3[23],
    q[22] = q_3[22],
    q[21] = q_3[21],
    q[20] = q_3[20],
    q[19] = q_3[19],
    q[18] = q_3[18],
    q[17] = q_3[17],
    q[16] = q_3[16],
    q[15] = q_3[15],
    q[14] = q_3[14],
    q[13] = q_3[13],
    q[12] = q_3[12],
    q[11] = q_3[11],
    q[10] = q_3[10],
    q[9] = q_3[9],
    q[8] = q_3[8],
    q[7] = q_3[7],
    q[6] = q_3[6],
    q[5] = q_3[5],
    q[4] = q_3[4],
    q[3] = q_3[3],
    q[2] = q_3[2],
    q[1] = q_3[1],
    q[0] = q_3[0];
  VCC   VCC_0 (
    .P(NLW_VCC_P_UNCONNECTED)
  );
  GND   GND_1 (
    .G(NLW_GND_G_UNCONNECTED)
  );
  INV   \BU2/U0/i_ADDf1_INV_0  (
    .I(add),
    .O(\BU2/U0/i_ADDf )
  );
  DSP48A #(
    .A0REG ( 0 ),
    .A1REG ( 1 ),
    .B0REG ( 0 ),
    .B1REG ( 1 ),
    .CARRYINREG ( 0 ),
    .CARRYINSEL ( "OPMODE5" ),
    .CREG ( 1 ),
    .DREG ( 1 ),
    .MREG ( 0 ),
    .OPMODEREG ( 1 ),
    .PREG ( 1 ),
    .RSTTYPE ( "SYNC" ))
  \BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive  (
    .CARRYIN(\BU2/N0 ),
    .CARRYOUT
(\NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_CARRYOUT_UNCONNECTED )
,
    .CLK(clk),
    .RSTA(sclr),
    .RSTB(sclr),
    .RSTM(\BU2/N0 ),
    .RSTP(sclr),
    .RSTC(sclr),
    .RSTD(sclr),
    .RSTCARRYIN(\BU2/N0 ),
    .RSTOPMODE(sclr),
    .CEA(ce),
    .CEB(ce),
    .CEM(\BU2/N0 ),
    .CEP(ce),
    .CEC(ce),
    .CED(ce),
    .CECARRYIN(\BU2/N0 ),
    .CEOPMODE(ce),
    .A({b_2[31], b_2[31], b_2[31], b_2[31], b_2[31], b_2[30], b_2[29], b_2[28], b_2[27], b_2[26], b_2[25], b_2[24], b_2[23], b_2[22], b_2[21], b_2[20]
, b_2[19], b_2[18]}),
    .B({b_2[17], b_2[16], b_2[15], b_2[14], b_2[13], b_2[12], b_2[11], b_2[10], b_2[9], b_2[8], b_2[7], b_2[6], b_2[5], b_2[4], b_2[3], b_2[2], b_2[1]
, b_2[0]}),
    .D({b_2[31], b_2[31], b_2[31], b_2[31], b_2[31], b_2[31], b_2[31], b_2[31], b_2[31], b_2[31], b_2[31], b_2[31], b_2[31], b_2[31], b_2[31], b_2[31]
, b_2[31], b_2[31]}),
    .C({\BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , 
\BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , 
\BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , 
\BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 }),
    .P({
\NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_P<47>_UNCONNECTED 
, 
\NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_P<46>_UNCONNECTED 
, 
\NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_P<45>_UNCONNECTED 
, 
\NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_P<44>_UNCONNECTED 
, 
\NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_P<43>_UNCONNECTED 
, 
\NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_P<42>_UNCONNECTED 
, 
\NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_P<41>_UNCONNECTED 
, 
\NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_P<40>_UNCONNECTED 
, 
\NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_P<39>_UNCONNECTED 
, 
\NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_P<38>_UNCONNECTED 
, 
\NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_P<37>_UNCONNECTED 
, q_3[36], q_3[35], q_3[34], q_3[33], q_3[32], q_3[31], q_3[30], q_3[29], q_3[28], q_3[27], q_3[26], q_3[25], q_3[24], q_3[23], q_3[22], q_3[21], 
q_3[20], q_3[19], q_3[18], q_3[17], q_3[16], q_3[15], q_3[14], q_3[13], q_3[12], q_3[11], q_3[10], q_3[9], q_3[8], q_3[7], q_3[6], q_3[5], q_3[4], 
q_3[3], q_3[2], q_3[1], q_3[0]}),
    .OPMODE({\BU2/U0/i_ADDf , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N1 , \BU2/N0 , \BU2/N1 , \BU2/N1 }),
    .PCIN({\BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 
, \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 
, \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 
, \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 }),
    .PCOUT({
\NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_PCOUT<47>_UNCONNECTED 
, 
\NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_PCOUT<46>_UNCONNECTED 
, 
\NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_PCOUT<45>_UNCONNECTED 
, 
\NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_PCOUT<44>_UNCONNECTED 
, 
\NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_PCOUT<43>_UNCONNECTED 
, 
\NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_PCOUT<42>_UNCONNECTED 
, 
\NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_PCOUT<41>_UNCONNECTED 
, 
\NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_PCOUT<40>_UNCONNECTED 
, 
\NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_PCOUT<39>_UNCONNECTED 
, 
\NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_PCOUT<38>_UNCONNECTED 
, 
\NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_PCOUT<37>_UNCONNECTED 
, 
\NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_PCOUT<36>_UNCONNECTED 
, 
\NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_PCOUT<35>_UNCONNECTED 
, 
\NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_PCOUT<34>_UNCONNECTED 
, 
\NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_PCOUT<33>_UNCONNECTED 
, 
\NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_PCOUT<32>_UNCONNECTED 
, 
\NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_PCOUT<31>_UNCONNECTED 
, 
\NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_PCOUT<30>_UNCONNECTED 
, 
\NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_PCOUT<29>_UNCONNECTED 
, 
\NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_PCOUT<28>_UNCONNECTED 
, 
\NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_PCOUT<27>_UNCONNECTED 
, 
\NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_PCOUT<26>_UNCONNECTED 
, 
\NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_PCOUT<25>_UNCONNECTED 
, 
\NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_PCOUT<24>_UNCONNECTED 
, 
\NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_PCOUT<23>_UNCONNECTED 
, 
\NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_PCOUT<22>_UNCONNECTED 
, 
\NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_PCOUT<21>_UNCONNECTED 
, 
\NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_PCOUT<20>_UNCONNECTED 
, 
\NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_PCOUT<19>_UNCONNECTED 
, 
\NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_PCOUT<18>_UNCONNECTED 
, 
\NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_PCOUT<17>_UNCONNECTED 
, 
\NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_PCOUT<16>_UNCONNECTED 
, 
\NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_PCOUT<15>_UNCONNECTED 
, 
\NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_PCOUT<14>_UNCONNECTED 
, 
\NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_PCOUT<13>_UNCONNECTED 
, 
\NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_PCOUT<12>_UNCONNECTED 
, 
\NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_PCOUT<11>_UNCONNECTED 
, 
\NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_PCOUT<10>_UNCONNECTED 
, 
\NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_PCOUT<9>_UNCONNECTED 
, 
\NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_PCOUT<8>_UNCONNECTED 
, 
\NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_PCOUT<7>_UNCONNECTED 
, 
\NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_PCOUT<6>_UNCONNECTED 
, 
\NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_PCOUT<5>_UNCONNECTED 
, 
\NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_PCOUT<4>_UNCONNECTED 
, 
\NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_PCOUT<3>_UNCONNECTED 
, 
\NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_PCOUT<2>_UNCONNECTED 
, 
\NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_PCOUT<1>_UNCONNECTED 
, 
\NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_PCOUT<0>_UNCONNECTED 
}),
    .BCOUT({
\NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_BCOUT<17>_UNCONNECTED 
, 
\NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_BCOUT<16>_UNCONNECTED 
, 
\NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_BCOUT<15>_UNCONNECTED 
, 
\NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_BCOUT<14>_UNCONNECTED 
, 
\NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_BCOUT<13>_UNCONNECTED 
, 
\NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_BCOUT<12>_UNCONNECTED 
, 
\NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_BCOUT<11>_UNCONNECTED 
, 
\NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_BCOUT<10>_UNCONNECTED 
, 
\NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_BCOUT<9>_UNCONNECTED 
, 
\NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_BCOUT<8>_UNCONNECTED 
, 
\NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_BCOUT<7>_UNCONNECTED 
, 
\NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_BCOUT<6>_UNCONNECTED 
, 
\NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_BCOUT<5>_UNCONNECTED 
, 
\NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_BCOUT<4>_UNCONNECTED 
, 
\NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_BCOUT<3>_UNCONNECTED 
, 
\NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_BCOUT<2>_UNCONNECTED 
, 
\NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_BCOUT<1>_UNCONNECTED 
, 
\NLW_BU2/U0/i_baseip.i_xbip_accum/dsp48_implementation.use_usecase.i_xbip_dsp48_acc/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_BCOUT<0>_UNCONNECTED 
})
  );
  VCC   \BU2/XST_VCC  (
    .P(\BU2/N1 )
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
