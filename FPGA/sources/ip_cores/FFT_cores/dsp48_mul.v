////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2010 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: M.63c
//  \   \         Application: netgen
//  /   /         Filename: dsp48_mul.v
// /___/   /\     Timestamp: Thu Jul 27 15:34:04 2017
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -w -sim -ofmt verilog ./tmp/_cg/dsp48_mul.ngc ./tmp/_cg/dsp48_mul.v 
// Device	: 3sd3400acs484-5
// Input file	: ./tmp/_cg/dsp48_mul.ngc
// Output file	: ./tmp/_cg/dsp48_mul.v
// # of Modules	: 1
// Design Name	: dsp48_mul
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

module dsp48_mul (
  sclr, ce, clk, a, b, p
)/* synthesis syn_black_box syn_noprune=1 */;
  input sclr;
  input ce;
  input clk;
  input [15 : 0] a;
  input [15 : 0] b;
  output [31 : 0] p;
  
  // synthesis translate_off
  
  wire \BU2/U0/i_synth_option.i_synth_model/carryin_r3 ;
  wire \BU2/U0/i_synth_option.i_synth_model/i_carryin123/first_q ;
  wire \BU2/U0/i_synth_option.i_synth_model/i_op4/first_q[7] ;
  wire \BU2/U0/i_synth_option.i_synth_model/c_i4<1>_0 ;
  wire \BU2/U0/i_synth_option.i_synth_model/i_carryin4/first_q ;
  wire \BU2/U0/i_synth_option.i_synth_model/i_op4/first_q[0] ;
  wire \BU2/N1 ;
  wire \BU2/carrycascout ;
  wire \BU2/carryin ;
  wire NLW_VCC_P_UNCONNECTED;
  wire NLW_GND_G_UNCONNECTED;
  wire \NLW_BU2/U0/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_P<47>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_P<46>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_P<45>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_P<44>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_P<43>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_P<42>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_P<41>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_P<40>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_P<39>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_P<38>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_P<37>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_P<36>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_P<35>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_P<34>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_P<33>_UNCONNECTED ;
  wire \NLW_BU2/U0/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_P<32>_UNCONNECTED ;
  wire [15 : 0] a_2;
  wire [15 : 0] b_3;
  wire [31 : 0] p_4;
  wire [7 : 7] \BU2/U0/i_synth_option.i_synth_model/i_op3/first_q ;
  wire [1 : 1] \BU2/U0/i_synth_option.i_synth_model/c_i4 ;
  wire [47 : 0] \BU2/pcin ;
  wire [17 : 0] \BU2/acout ;
  wire [47 : 0] \BU2/pcout ;
  wire [0 : 0] \BU2/bcout ;
  assign
    a_2[15] = a[15],
    a_2[14] = a[14],
    a_2[13] = a[13],
    a_2[12] = a[12],
    a_2[11] = a[11],
    a_2[10] = a[10],
    a_2[9] = a[9],
    a_2[8] = a[8],
    a_2[7] = a[7],
    a_2[6] = a[6],
    a_2[5] = a[5],
    a_2[4] = a[4],
    a_2[3] = a[3],
    a_2[2] = a[2],
    a_2[1] = a[1],
    a_2[0] = a[0],
    b_3[15] = b[15],
    b_3[14] = b[14],
    b_3[13] = b[13],
    b_3[12] = b[12],
    b_3[11] = b[11],
    b_3[10] = b[10],
    b_3[9] = b[9],
    b_3[8] = b[8],
    b_3[7] = b[7],
    b_3[6] = b[6],
    b_3[5] = b[5],
    b_3[4] = b[4],
    b_3[3] = b[3],
    b_3[2] = b[2],
    b_3[1] = b[1],
    b_3[0] = b[0],
    p[31] = p_4[31],
    p[30] = p_4[30],
    p[29] = p_4[29],
    p[28] = p_4[28],
    p[27] = p_4[27],
    p[26] = p_4[26],
    p[25] = p_4[25],
    p[24] = p_4[24],
    p[23] = p_4[23],
    p[22] = p_4[22],
    p[21] = p_4[21],
    p[20] = p_4[20],
    p[19] = p_4[19],
    p[18] = p_4[18],
    p[17] = p_4[17],
    p[16] = p_4[16],
    p[15] = p_4[15],
    p[14] = p_4[14],
    p[13] = p_4[13],
    p[12] = p_4[12],
    p[11] = p_4[11],
    p[10] = p_4[10],
    p[9] = p_4[9],
    p[8] = p_4[8],
    p[7] = p_4[7],
    p[6] = p_4[6],
    p[5] = p_4[5],
    p[4] = p_4[4],
    p[3] = p_4[3],
    p[2] = p_4[2],
    p[1] = p_4[1],
    p[0] = p_4[0];
  VCC   VCC_0 (
    .P(NLW_VCC_P_UNCONNECTED)
  );
  GND   GND_1 (
    .G(NLW_GND_G_UNCONNECTED)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_synth_option.i_synth_model/i_c4/first_q_0_1  (
    .C(clk),
    .CE(ce),
    .D(\BU2/bcout [0]),
    .R(sclr),
    .Q(\BU2/U0/i_synth_option.i_synth_model/c_i4<1>_0 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \BU2/U0/i_synth_option.i_synth_model/carryin_r31  (
    .I0(\BU2/U0/i_synth_option.i_synth_model/c_i4 [1]),
    .I1(\BU2/U0/i_synth_option.i_synth_model/i_carryin123/first_q ),
    .O(\BU2/U0/i_synth_option.i_synth_model/carryin_r3 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_synth_option.i_synth_model/i_op4/first_q_7  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/i_synth_option.i_synth_model/i_op3/first_q [7]),
    .R(sclr),
    .Q(\BU2/U0/i_synth_option.i_synth_model/i_op4/first_q[7] )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_synth_option.i_synth_model/i_op4/first_q_18  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/i_synth_option.i_synth_model/c_i4 [1]),
    .R(sclr),
    .Q(\BU2/U0/i_synth_option.i_synth_model/i_op4/first_q[0] )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_synth_option.i_synth_model/i_op3/first_q_7  (
    .C(clk),
    .CE(ce),
    .D(\BU2/N1 ),
    .R(sclr),
    .Q(\BU2/U0/i_synth_option.i_synth_model/i_op3/first_q [7])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_synth_option.i_synth_model/i_carryin4/first_q_0  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/i_synth_option.i_synth_model/carryin_r3 ),
    .R(sclr),
    .Q(\BU2/U0/i_synth_option.i_synth_model/i_carryin4/first_q )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_synth_option.i_synth_model/i_carryin123/first_q_0  (
    .C(clk),
    .CE(ce),
    .D(\BU2/carryin ),
    .R(sclr),
    .Q(\BU2/U0/i_synth_option.i_synth_model/i_carryin123/first_q )
  );
  DSP48A #(
    .A0REG ( 1 ),
    .A1REG ( 1 ),
    .B0REG ( 1 ),
    .B1REG ( 1 ),
    .CARRYINREG ( 1 ),
    .CARRYINSEL ( "OPMODE5" ),
    .CREG ( 1 ),
    .DREG ( 1 ),
    .MREG ( 1 ),
    .OPMODEREG ( 0 ),
    .PREG ( 1 ),
    .RSTTYPE ( "SYNC" ))
  \BU2/U0/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive  (
    .CARRYIN(\BU2/bcout [0]),
    .CARRYOUT(\BU2/carrycascout ),
    .CLK(clk),
    .RSTA(sclr),
    .RSTB(sclr),
    .RSTM(sclr),
    .RSTP(sclr),
    .RSTC(sclr),
    .RSTD(sclr),
    .RSTCARRYIN(sclr),
    .RSTOPMODE(\BU2/bcout [0]),
    .CEA(ce),
    .CEB(ce),
    .CEM(ce),
    .CEP(ce),
    .CEC(ce),
    .CED(ce),
    .CECARRYIN(ce),
    .CEOPMODE(\BU2/bcout [0]),
    .A({b_3[15], b_3[15], b_3[15], b_3[14], b_3[13], b_3[12], b_3[11], b_3[10], b_3[9], b_3[8], b_3[7], b_3[6], b_3[5], b_3[4], b_3[3], b_3[2], b_3[1]
, b_3[0]}),
    .B({a_2[15], a_2[15], a_2[15], a_2[14], a_2[13], a_2[12], a_2[11], a_2[10], a_2[9], a_2[8], a_2[7], a_2[6], a_2[5], a_2[4], a_2[3], a_2[2], a_2[1]
, a_2[0]}),
    .D({\BU2/bcout [0], \BU2/bcout [0], \BU2/bcout [0], \BU2/bcout [0], \BU2/bcout [0], \BU2/bcout [0], \BU2/bcout [0], \BU2/bcout [0], \BU2/bcout [0]
, \BU2/bcout [0], \BU2/bcout [0], \BU2/bcout [0], \BU2/bcout [0], \BU2/bcout [0], \BU2/bcout [0], \BU2/bcout [0], \BU2/bcout [0], \BU2/bcout [0]}),
    .C({\BU2/U0/i_synth_option.i_synth_model/c_i4 [1], \BU2/U0/i_synth_option.i_synth_model/c_i4 [1], \BU2/U0/i_synth_option.i_synth_model/c_i4 [1], 
\BU2/U0/i_synth_option.i_synth_model/c_i4 [1], \BU2/U0/i_synth_option.i_synth_model/c_i4 [1], \BU2/U0/i_synth_option.i_synth_model/c_i4 [1], 
\BU2/U0/i_synth_option.i_synth_model/c_i4 [1], \BU2/U0/i_synth_option.i_synth_model/c_i4 [1], \BU2/U0/i_synth_option.i_synth_model/c_i4 [1], 
\BU2/U0/i_synth_option.i_synth_model/c_i4 [1], \BU2/U0/i_synth_option.i_synth_model/c_i4 [1], \BU2/U0/i_synth_option.i_synth_model/c_i4 [1], 
\BU2/U0/i_synth_option.i_synth_model/c_i4 [1], \BU2/U0/i_synth_option.i_synth_model/c_i4 [1], \BU2/U0/i_synth_option.i_synth_model/c_i4 [1], 
\BU2/U0/i_synth_option.i_synth_model/c_i4 [1], \BU2/U0/i_synth_option.i_synth_model/c_i4 [1], \BU2/U0/i_synth_option.i_synth_model/c_i4 [1], 
\BU2/U0/i_synth_option.i_synth_model/c_i4 [1], \BU2/U0/i_synth_option.i_synth_model/c_i4 [1], \BU2/U0/i_synth_option.i_synth_model/c_i4 [1], 
\BU2/U0/i_synth_option.i_synth_model/c_i4 [1], \BU2/U0/i_synth_option.i_synth_model/c_i4 [1], \BU2/U0/i_synth_option.i_synth_model/c_i4 [1], 
\BU2/U0/i_synth_option.i_synth_model/c_i4 [1], \BU2/U0/i_synth_option.i_synth_model/c_i4 [1], \BU2/U0/i_synth_option.i_synth_model/c_i4 [1], 
\BU2/U0/i_synth_option.i_synth_model/c_i4 [1], \BU2/U0/i_synth_option.i_synth_model/c_i4 [1], \BU2/U0/i_synth_option.i_synth_model/c_i4 [1], 
\BU2/U0/i_synth_option.i_synth_model/c_i4 [1], \BU2/U0/i_synth_option.i_synth_model/c_i4 [1], \BU2/U0/i_synth_option.i_synth_model/c_i4 [1], 
\BU2/U0/i_synth_option.i_synth_model/c_i4 [1], \BU2/U0/i_synth_option.i_synth_model/c_i4 [1], \BU2/U0/i_synth_option.i_synth_model/c_i4 [1], 
\BU2/U0/i_synth_option.i_synth_model/c_i4 [1], \BU2/U0/i_synth_option.i_synth_model/c_i4 [1], \BU2/U0/i_synth_option.i_synth_model/c_i4 [1], 
\BU2/U0/i_synth_option.i_synth_model/c_i4 [1], \BU2/U0/i_synth_option.i_synth_model/c_i4 [1], \BU2/U0/i_synth_option.i_synth_model/c_i4 [1], 
\BU2/U0/i_synth_option.i_synth_model/c_i4 [1], \BU2/U0/i_synth_option.i_synth_model/c_i4 [1], \BU2/U0/i_synth_option.i_synth_model/c_i4 [1], 
\BU2/U0/i_synth_option.i_synth_model/c_i4 [1], \BU2/U0/i_synth_option.i_synth_model/c_i4 [1], \BU2/U0/i_synth_option.i_synth_model/c_i4 [1]}),
    .P({\NLW_BU2/U0/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_P<47>_UNCONNECTED , 
\NLW_BU2/U0/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_P<46>_UNCONNECTED , 
\NLW_BU2/U0/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_P<45>_UNCONNECTED , 
\NLW_BU2/U0/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_P<44>_UNCONNECTED , 
\NLW_BU2/U0/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_P<43>_UNCONNECTED , 
\NLW_BU2/U0/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_P<42>_UNCONNECTED , 
\NLW_BU2/U0/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_P<41>_UNCONNECTED , 
\NLW_BU2/U0/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_P<40>_UNCONNECTED , 
\NLW_BU2/U0/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_P<39>_UNCONNECTED , 
\NLW_BU2/U0/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_P<38>_UNCONNECTED , 
\NLW_BU2/U0/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_P<37>_UNCONNECTED , 
\NLW_BU2/U0/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_P<36>_UNCONNECTED , 
\NLW_BU2/U0/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_P<35>_UNCONNECTED , 
\NLW_BU2/U0/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_P<34>_UNCONNECTED , 
\NLW_BU2/U0/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_P<33>_UNCONNECTED , 
\NLW_BU2/U0/i_synth_option.i_synth_model/opt_sp3adsp.i_uniwrap/i_primitive_P<32>_UNCONNECTED , p_4[31], p_4[30], p_4[29], p_4[28], p_4[27], p_4[26], 
p_4[25], p_4[24], p_4[23], p_4[22], p_4[21], p_4[20], p_4[19], p_4[18], p_4[17], p_4[16], p_4[15], p_4[14], p_4[13], p_4[12], p_4[11], p_4[10], p_4[9]
, p_4[8], p_4[7], p_4[6], p_4[5], p_4[4], p_4[3], p_4[2], p_4[1], p_4[0]}),
    .OPMODE({\BU2/U0/i_synth_option.i_synth_model/i_op4/first_q[0] , \BU2/U0/i_synth_option.i_synth_model/c_i4 [1], 
\BU2/U0/i_synth_option.i_synth_model/i_carryin4/first_q , \BU2/U0/i_synth_option.i_synth_model/c_i4<1>_0 , 
\BU2/U0/i_synth_option.i_synth_model/i_op4/first_q[0] , \BU2/U0/i_synth_option.i_synth_model/i_op4/first_q[0] , 
\BU2/U0/i_synth_option.i_synth_model/i_op4/first_q[0] , \BU2/U0/i_synth_option.i_synth_model/i_op4/first_q[7] }),
    .PCIN({\BU2/pcin [47], \BU2/pcin [46], \BU2/pcin [45], \BU2/pcin [44], \BU2/pcin [43], \BU2/pcin [42], \BU2/pcin [41], \BU2/pcin [40], 
\BU2/pcin [39], \BU2/pcin [38], \BU2/pcin [37], \BU2/pcin [36], \BU2/pcin [35], \BU2/pcin [34], \BU2/pcin [33], \BU2/pcin [32], \BU2/pcin [31], 
\BU2/pcin [30], \BU2/pcin [29], \BU2/pcin [28], \BU2/pcin [27], \BU2/pcin [26], \BU2/pcin [25], \BU2/pcin [24], \BU2/pcin [23], \BU2/pcin [22], 
\BU2/pcin [21], \BU2/pcin [20], \BU2/pcin [19], \BU2/pcin [18], \BU2/pcin [17], \BU2/pcin [16], \BU2/pcin [15], \BU2/pcin [14], \BU2/pcin [13], 
\BU2/pcin [12], \BU2/pcin [11], \BU2/pcin [10], \BU2/pcin [9], \BU2/pcin [8], \BU2/pcin [7], \BU2/pcin [6], \BU2/pcin [5], \BU2/pcin [4], 
\BU2/pcin [3], \BU2/pcin [2], \BU2/pcin [1], \BU2/pcin [0]}),
    .PCOUT({\BU2/pcout [47], \BU2/pcout [46], \BU2/pcout [45], \BU2/pcout [44], \BU2/pcout [43], \BU2/pcout [42], \BU2/pcout [41], \BU2/pcout [40], 
\BU2/pcout [39], \BU2/pcout [38], \BU2/pcout [37], \BU2/pcout [36], \BU2/pcout [35], \BU2/pcout [34], \BU2/pcout [33], \BU2/pcout [32], 
\BU2/pcout [31], \BU2/pcout [30], \BU2/pcout [29], \BU2/pcout [28], \BU2/pcout [27], \BU2/pcout [26], \BU2/pcout [25], \BU2/pcout [24], 
\BU2/pcout [23], \BU2/pcout [22], \BU2/pcout [21], \BU2/pcout [20], \BU2/pcout [19], \BU2/pcout [18], \BU2/pcout [17], \BU2/pcout [16], 
\BU2/pcout [15], \BU2/pcout [14], \BU2/pcout [13], \BU2/pcout [12], \BU2/pcout [11], \BU2/pcout [10], \BU2/pcout [9], \BU2/pcout [8], \BU2/pcout [7], 
\BU2/pcout [6], \BU2/pcout [5], \BU2/pcout [4], \BU2/pcout [3], \BU2/pcout [2], \BU2/pcout [1], \BU2/pcout [0]}),
    .BCOUT({\BU2/acout [17], \BU2/acout [16], \BU2/acout [15], \BU2/acout [14], \BU2/acout [13], \BU2/acout [12], \BU2/acout [11], \BU2/acout [10], 
\BU2/acout [9], \BU2/acout [8], \BU2/acout [7], \BU2/acout [6], \BU2/acout [5], \BU2/acout [4], \BU2/acout [3], \BU2/acout [2], \BU2/acout [1], 
\BU2/acout [0]})
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/i_synth_option.i_synth_model/i_c4/first_q_0  (
    .C(clk),
    .CE(ce),
    .D(\BU2/bcout [0]),
    .R(sclr),
    .Q(\BU2/U0/i_synth_option.i_synth_model/c_i4 [1])
  );
  VCC   \BU2/XST_VCC  (
    .P(\BU2/N1 )
  );
  GND   \BU2/XST_GND  (
    .G(\BU2/bcout [0])
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
