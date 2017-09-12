--------------------------------------------------------------------------------
--     This file is owned and controlled by Xilinx and must be used           --
--     solely for design, simulation, implementation and creation of          --
--     design files limited to Xilinx devices or technologies. Use            --
--     with non-Xilinx devices or technologies is expressly prohibited        --
--     and immediately terminates your license.                               --
--                                                                            --
--     XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS"          --
--     SOLELY FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR                --
--     XILINX DEVICES.  BY PROVIDING THIS DESIGN, CODE, OR INFORMATION        --
--     AS ONE POSSIBLE IMPLEMENTATION OF THIS FEATURE, APPLICATION            --
--     OR STANDARD, XILINX IS MAKING NO REPRESENTATION THAT THIS              --
--     IMPLEMENTATION IS FREE FROM ANY CLAIMS OF INFRINGEMENT,                --
--     AND YOU ARE RESPONSIBLE FOR OBTAINING ANY RIGHTS YOU MAY REQUIRE       --
--     FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY DISCLAIMS ANY               --
--     WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE                --
--     IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR         --
--     REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF        --
--     INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS        --
--     FOR A PARTICULAR PURPOSE.                                              --
--                                                                            --
--     Xilinx products are not intended for use in life support               --
--     appliances, devices, or systems. Use in such applications are          --
--     expressly prohibited.                                                  --
--                                                                            --
--     (c) Copyright 1995-2009 Xilinx, Inc.                                   --
--     All rights reserved.                                                   --
--------------------------------------------------------------------------------
-- You must compile the wrapper file av_accumulator.vhd when simulating
-- the core, av_accumulator. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
Library XilinxCoreLib;
-- synthesis translate_on
ENTITY av_accumulator IS
	port (
	b: IN std_logic_VECTOR(40 downto 0);
	clk: IN std_logic;
	ce: IN std_logic;
	sclr: IN std_logic;
	q: OUT std_logic_VECTOR(40 downto 0));
END av_accumulator;

ARCHITECTURE av_accumulator_a OF av_accumulator IS
-- synthesis translate_off
component wrapped_av_accumulator
	port (
	b: IN std_logic_VECTOR(40 downto 0);
	clk: IN std_logic;
	ce: IN std_logic;
	sclr: IN std_logic;
	q: OUT std_logic_VECTOR(40 downto 0));
end component;

-- Configuration specification 
	for all : wrapped_av_accumulator use entity XilinxCoreLib.c_accum_v11_0(behavioral)
		generic map(
			c_out_width => 41,
			c_add_mode => 0,
			c_b_type => 0,
			c_ce_overrides_sclr => 0,
			c_implementation => 1,
			c_has_sclr => 1,
			c_verbosity => 0,
			c_latency => 2,
			c_has_bypass => 0,
			c_ainit_val => "0",
			c_bypass_low => 0,
			c_has_ce => 1,
			c_sclr_overrides_sset => 1,
			c_scale => 0,
			c_sinit_val => "0",
			c_has_sset => 0,
			c_has_c_in => 0,
			c_has_sinit => 0,
			c_xdevicefamily => "spartan3adsp",
			c_b_width => 41);
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_av_accumulator
		port map (
			b => b,
			clk => clk,
			ce => ce,
			sclr => sclr,
			q => q);
-- synthesis translate_on

END av_accumulator_a;

