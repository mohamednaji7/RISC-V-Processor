-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "02/25/2021 04:55:18"

-- 
-- Device: Altera EP4CGX110DF31C7 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	EXECUTE IS
    PORT (
	ALUFunct : IN std_logic_vector(3 DOWNTO 0);
	BSEL : IN std_logic_vector(2 DOWNTO 0);
	ASEL : IN std_logic;
	WDSEL : IN std_logic_vector(1 DOWNTO 0);
	PCSEL : IN std_logic_vector(1 DOWNTO 0);
	WP : IN std_logic_vector(4 DOWNTO 0);
	immI : IN std_logic_vector(31 DOWNTO 0);
	immS_B : IN std_logic_vector(31 DOWNTO 0);
	immU_J : IN std_logic_vector(31 DOWNTO 0);
	Memo_READ_Data : IN std_logic_vector(31 DOWNTO 0);
	Memory_Address : OUT std_logic_vector(31 DOWNTO 0);
	Memory_WriteData : OUT std_logic_vector(31 DOWNTO 0);
	rs1 : IN std_logic_vector(31 DOWNTO 0);
	rs2 : IN std_logic_vector(31 DOWNTO 0);
	rd_port : OUT std_logic_vector(4 DOWNTO 0);
	WB_to_rd : OUT std_logic_vector(31 DOWNTO 0);
	PC : IN std_logic_vector(31 DOWNTO 0);
	CacheMISS_stopFetch : OUT std_logic;
	WB_nextPC : OUT std_logic_vector(31 DOWNTO 0)
	);
END EXECUTE;

-- Design Ports Information
-- Memory_Address[0]	=>  Location: PIN_H28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memory_Address[1]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memory_Address[2]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memory_Address[3]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memory_Address[4]	=>  Location: PIN_U25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memory_Address[5]	=>  Location: PIN_Y28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memory_Address[6]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memory_Address[7]	=>  Location: PIN_R26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memory_Address[8]	=>  Location: PIN_N26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memory_Address[9]	=>  Location: PIN_AA29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memory_Address[10]	=>  Location: PIN_AJ21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memory_Address[11]	=>  Location: PIN_AA28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memory_Address[12]	=>  Location: PIN_AK27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memory_Address[13]	=>  Location: PIN_T26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memory_Address[14]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memory_Address[15]	=>  Location: PIN_AA30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memory_Address[16]	=>  Location: PIN_AG20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memory_Address[17]	=>  Location: PIN_P27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memory_Address[18]	=>  Location: PIN_N29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memory_Address[19]	=>  Location: PIN_L30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memory_Address[20]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memory_Address[21]	=>  Location: PIN_K24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memory_Address[22]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memory_Address[23]	=>  Location: PIN_K30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memory_Address[24]	=>  Location: PIN_D26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memory_Address[25]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memory_Address[26]	=>  Location: PIN_J28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memory_Address[27]	=>  Location: PIN_J26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memory_Address[28]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memory_Address[29]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memory_Address[30]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memory_Address[31]	=>  Location: PIN_G27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memory_WriteData[0]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memory_WriteData[1]	=>  Location: PIN_F24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memory_WriteData[2]	=>  Location: PIN_E28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memory_WriteData[3]	=>  Location: PIN_F26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memory_WriteData[4]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memory_WriteData[5]	=>  Location: PIN_AA27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memory_WriteData[6]	=>  Location: PIN_AE29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memory_WriteData[7]	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memory_WriteData[8]	=>  Location: PIN_G24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memory_WriteData[9]	=>  Location: PIN_AE25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memory_WriteData[10]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memory_WriteData[11]	=>  Location: PIN_AK10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memory_WriteData[12]	=>  Location: PIN_B30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memory_WriteData[13]	=>  Location: PIN_AH30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memory_WriteData[14]	=>  Location: PIN_AD23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memory_WriteData[15]	=>  Location: PIN_AJ22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memory_WriteData[16]	=>  Location: PIN_AG9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memory_WriteData[17]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memory_WriteData[18]	=>  Location: PIN_AK29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memory_WriteData[19]	=>  Location: PIN_AG14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memory_WriteData[20]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memory_WriteData[21]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memory_WriteData[22]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memory_WriteData[23]	=>  Location: PIN_AG8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memory_WriteData[24]	=>  Location: PIN_AH13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memory_WriteData[25]	=>  Location: PIN_AK8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memory_WriteData[26]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memory_WriteData[27]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memory_WriteData[28]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memory_WriteData[29]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memory_WriteData[30]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memory_WriteData[31]	=>  Location: PIN_AG7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd_port[0]	=>  Location: PIN_D28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd_port[1]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd_port[2]	=>  Location: PIN_AG25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd_port[3]	=>  Location: PIN_AE23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd_port[4]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WB_to_rd[0]	=>  Location: PIN_B24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WB_to_rd[1]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WB_to_rd[2]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WB_to_rd[3]	=>  Location: PIN_K26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WB_to_rd[4]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WB_to_rd[5]	=>  Location: PIN_AG24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WB_to_rd[6]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WB_to_rd[7]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WB_to_rd[8]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WB_to_rd[9]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WB_to_rd[10]	=>  Location: PIN_Y30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WB_to_rd[11]	=>  Location: PIN_AK23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WB_to_rd[12]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WB_to_rd[13]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WB_to_rd[14]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WB_to_rd[15]	=>  Location: PIN_AF28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WB_to_rd[16]	=>  Location: PIN_T27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WB_to_rd[17]	=>  Location: PIN_D30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WB_to_rd[18]	=>  Location: PIN_B27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WB_to_rd[19]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WB_to_rd[20]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WB_to_rd[21]	=>  Location: PIN_G29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WB_to_rd[22]	=>  Location: PIN_Y18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WB_to_rd[23]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WB_to_rd[24]	=>  Location: PIN_C24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WB_to_rd[25]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WB_to_rd[26]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WB_to_rd[27]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WB_to_rd[28]	=>  Location: PIN_G26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WB_to_rd[29]	=>  Location: PIN_A26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WB_to_rd[30]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WB_to_rd[31]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CacheMISS_stopFetch	=>  Location: PIN_AH2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WB_nextPC[0]	=>  Location: PIN_C30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WB_nextPC[1]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WB_nextPC[2]	=>  Location: PIN_G23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WB_nextPC[3]	=>  Location: PIN_H27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WB_nextPC[4]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WB_nextPC[5]	=>  Location: PIN_W30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WB_nextPC[6]	=>  Location: PIN_AJ25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WB_nextPC[7]	=>  Location: PIN_AJ19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WB_nextPC[8]	=>  Location: PIN_R25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WB_nextPC[9]	=>  Location: PIN_AH24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WB_nextPC[10]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WB_nextPC[11]	=>  Location: PIN_AC30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WB_nextPC[12]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WB_nextPC[13]	=>  Location: PIN_AH23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WB_nextPC[14]	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WB_nextPC[15]	=>  Location: PIN_AF22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WB_nextPC[16]	=>  Location: PIN_AF21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WB_nextPC[17]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WB_nextPC[18]	=>  Location: PIN_D23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WB_nextPC[19]	=>  Location: PIN_A24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WB_nextPC[20]	=>  Location: PIN_C28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WB_nextPC[21]	=>  Location: PIN_A29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WB_nextPC[22]	=>  Location: PIN_H24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WB_nextPC[23]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WB_nextPC[24]	=>  Location: PIN_G28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WB_nextPC[25]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WB_nextPC[26]	=>  Location: PIN_K27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WB_nextPC[27]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WB_nextPC[28]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WB_nextPC[29]	=>  Location: PIN_L27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WB_nextPC[30]	=>  Location: PIN_C26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WB_nextPC[31]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUFunct[1]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUFunct[2]	=>  Location: PIN_N25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs2[0]	=>  Location: PIN_AG11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immI[0]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BSEL[1]	=>  Location: PIN_H30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BSEL[2]	=>  Location: PIN_C29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immS_B[0]	=>  Location: PIN_B25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[0]	=>  Location: PIN_V30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BSEL[0]	=>  Location: PIN_V29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immU_J[0]	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs1[0]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ASEL	=>  Location: PIN_N24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUFunct[0]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immU_J[29]	=>  Location: PIN_M28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs1[29]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs2[29]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immI[29]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immS_B[29]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[29]	=>  Location: PIN_E30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs1[27]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immU_J[27]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs2[27]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immI[27]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immS_B[27]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[27]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immU_J[26]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs1[26]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs2[26]	=>  Location: PIN_AH14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immI[26]	=>  Location: PIN_R30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immS_B[26]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[26]	=>  Location: PIN_D24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immU_J[24]	=>  Location: PIN_M25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs1[24]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs2[24]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immI[24]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immS_B[24]	=>  Location: PIN_J27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[24]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immU_J[25]	=>  Location: PIN_K19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs1[25]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs2[25]	=>  Location: PIN_AJ9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immI[25]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immS_B[25]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[25]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immU_J[30]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs1[30]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs2[30]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immI[30]	=>  Location: PIN_A25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immS_B[30]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[30]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immU_J[28]	=>  Location: PIN_M29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs1[28]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs2[28]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immI[28]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immS_B[28]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[28]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs2[31]	=>  Location: PIN_AH7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immI[31]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immS_B[31]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[31]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immU_J[31]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs1[31]	=>  Location: PIN_J25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs2[20]	=>  Location: PIN_AG13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immI[20]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immS_B[20]	=>  Location: PIN_M27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[20]	=>  Location: PIN_C25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs2[19]	=>  Location: PIN_AK7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immI[19]	=>  Location: PIN_AG15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immS_B[19]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[19]	=>  Location: PIN_G30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs2[18]	=>  Location: PIN_AH26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immI[18]	=>  Location: PIN_P25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immS_B[18]	=>  Location: PIN_A23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[18]	=>  Location: PIN_T28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs2[17]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immI[17]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immS_B[17]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[17]	=>  Location: PIN_AE21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immU_J[17]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs1[17]	=>  Location: PIN_AK22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immU_J[18]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs1[18]	=>  Location: PIN_R27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immU_J[19]	=>  Location: PIN_AJ15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs1[19]	=>  Location: PIN_AK17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immU_J[20]	=>  Location: PIN_AJ13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs1[20]	=>  Location: PIN_AK15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immU_J[21]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs1[21]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs2[21]	=>  Location: PIN_AJ7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immI[21]	=>  Location: PIN_AH15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immS_B[21]	=>  Location: PIN_K28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[21]	=>  Location: PIN_B28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immU_J[22]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs1[22]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs2[22]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immI[22]	=>  Location: PIN_AK12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immS_B[22]	=>  Location: PIN_F30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[22]	=>  Location: PIN_J29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immU_J[23]	=>  Location: PIN_AJ12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs1[23]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs2[23]	=>  Location: PIN_AH8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immI[23]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immS_B[23]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[23]	=>  Location: PIN_D25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immU_J[16]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs1[16]	=>  Location: PIN_N27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs2[16]	=>  Location: PIN_AH10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immI[16]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immS_B[16]	=>  Location: PIN_W29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[16]	=>  Location: PIN_V28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immU_J[15]	=>  Location: PIN_T23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs1[15]	=>  Location: PIN_N28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs2[15]	=>  Location: PIN_AK21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immI[15]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immS_B[15]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[15]	=>  Location: PIN_C23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immU_J[14]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs1[14]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs2[14]	=>  Location: PIN_AG26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immI[14]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immS_B[14]	=>  Location: PIN_AE20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[14]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immU_J[13]	=>  Location: PIN_M26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs1[13]	=>  Location: PIN_AK20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs2[13]	=>  Location: PIN_AH29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immI[13]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immS_B[13]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[13]	=>  Location: PIN_AG22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immU_J[12]	=>  Location: PIN_AK19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs1[12]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs2[12]	=>  Location: PIN_F23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immI[12]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immS_B[12]	=>  Location: PIN_AE22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[12]	=>  Location: PIN_AK25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immU_J[11]	=>  Location: PIN_AK14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs1[11]	=>  Location: PIN_P30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs2[11]	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immI[11]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immS_B[11]	=>  Location: PIN_AD22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[11]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immU_J[10]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs1[10]	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs2[10]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immI[10]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immS_B[10]	=>  Location: PIN_AD29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[10]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs2[3]	=>  Location: PIN_F27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immI[3]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immS_B[3]	=>  Location: PIN_F29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[3]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs2[2]	=>  Location: PIN_F28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immI[2]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immS_B[2]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[2]	=>  Location: PIN_A27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs2[1]	=>  Location: PIN_F25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immI[1]	=>  Location: PIN_K25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immS_B[1]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[1]	=>  Location: PIN_H25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immU_J[1]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs1[1]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immU_J[2]	=>  Location: PIN_AD16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs1[2]	=>  Location: PIN_AK11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immU_J[3]	=>  Location: PIN_J30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs1[3]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs2[4]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immI[4]	=>  Location: PIN_V26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immS_B[4]	=>  Location: PIN_V27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[4]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immU_J[4]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs1[4]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immU_J[5]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs1[5]	=>  Location: PIN_N30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs2[5]	=>  Location: PIN_AG29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immI[5]	=>  Location: PIN_U28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immS_B[5]	=>  Location: PIN_AK28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[5]	=>  Location: PIN_AJ27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immU_J[6]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs1[6]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs2[6]	=>  Location: PIN_AE30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immI[6]	=>  Location: PIN_AK26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immS_B[6]	=>  Location: PIN_AD28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[6]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immU_J[7]	=>  Location: PIN_M30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs1[7]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs2[7]	=>  Location: PIN_AF30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immI[7]	=>  Location: PIN_AJ24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immS_B[7]	=>  Location: PIN_AK24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[7]	=>  Location: PIN_U27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immU_J[8]	=>  Location: PIN_AK9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs1[8]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs2[8]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immI[8]	=>  Location: PIN_U30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immS_B[8]	=>  Location: PIN_AH22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[8]	=>  Location: PIN_T24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immU_J[9]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs1[9]	=>  Location: PIN_AK13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs2[9]	=>  Location: PIN_AJ30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immI[9]	=>  Location: PIN_AG16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immS_B[9]	=>  Location: PIN_AH25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[9]	=>  Location: PIN_AD30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUFunct[3]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WP[0]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WP[1]	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WP[2]	=>  Location: PIN_AH28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WP[3]	=>  Location: PIN_AG28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WP[4]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WDSEL[0]	=>  Location: PIN_AH20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WDSEL[1]	=>  Location: PIN_R29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memo_READ_Data[0]	=>  Location: PIN_D29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memo_READ_Data[1]	=>  Location: PIN_A28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memo_READ_Data[2]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memo_READ_Data[3]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memo_READ_Data[4]	=>  Location: PIN_AF27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memo_READ_Data[5]	=>  Location: PIN_AB29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memo_READ_Data[6]	=>  Location: PIN_AJ28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memo_READ_Data[7]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memo_READ_Data[8]	=>  Location: PIN_AC16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memo_READ_Data[9]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memo_READ_Data[10]	=>  Location: PIN_AG30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memo_READ_Data[11]	=>  Location: PIN_AB30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memo_READ_Data[12]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memo_READ_Data[13]	=>  Location: PIN_AH16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memo_READ_Data[14]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memo_READ_Data[15]	=>  Location: PIN_T25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memo_READ_Data[16]	=>  Location: PIN_R28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memo_READ_Data[17]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memo_READ_Data[18]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memo_READ_Data[19]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memo_READ_Data[20]	=>  Location: PIN_AJ18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memo_READ_Data[21]	=>  Location: PIN_E27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memo_READ_Data[22]	=>  Location: PIN_AK18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memo_READ_Data[23]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memo_READ_Data[24]	=>  Location: PIN_L28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memo_READ_Data[25]	=>  Location: PIN_K29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memo_READ_Data[26]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memo_READ_Data[27]	=>  Location: PIN_D4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memo_READ_Data[28]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memo_READ_Data[29]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memo_READ_Data[30]	=>  Location: PIN_K18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memo_READ_Data[31]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCSEL[0]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCSEL[1]	=>  Location: PIN_T21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF EXECUTE IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_ALUFunct : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_BSEL : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_ASEL : std_logic;
SIGNAL ww_WDSEL : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_PCSEL : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_WP : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_immI : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_immS_B : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_immU_J : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_Memo_READ_Data : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_Memory_Address : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_Memory_WriteData : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_rs1 : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_rs2 : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_rd_port : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_WB_to_rd : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_PC : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_CacheMISS_stopFetch : std_logic;
SIGNAL ww_WB_nextPC : std_logic_vector(31 DOWNTO 0);
SIGNAL \WB_to_rd[0]~output_o\ : std_logic;
SIGNAL \WB_to_rd[1]~output_o\ : std_logic;
SIGNAL \WB_to_rd[2]~output_o\ : std_logic;
SIGNAL \WB_to_rd[3]~output_o\ : std_logic;
SIGNAL \WB_to_rd[4]~output_o\ : std_logic;
SIGNAL \WB_to_rd[5]~output_o\ : std_logic;
SIGNAL \WB_to_rd[6]~output_o\ : std_logic;
SIGNAL \WB_to_rd[7]~output_o\ : std_logic;
SIGNAL \WB_to_rd[8]~output_o\ : std_logic;
SIGNAL \WB_to_rd[9]~output_o\ : std_logic;
SIGNAL \WB_to_rd[10]~output_o\ : std_logic;
SIGNAL \WB_to_rd[11]~output_o\ : std_logic;
SIGNAL \WB_to_rd[12]~output_o\ : std_logic;
SIGNAL \WB_to_rd[13]~output_o\ : std_logic;
SIGNAL \WB_to_rd[14]~output_o\ : std_logic;
SIGNAL \WB_to_rd[15]~output_o\ : std_logic;
SIGNAL \WB_to_rd[16]~output_o\ : std_logic;
SIGNAL \WB_to_rd[17]~output_o\ : std_logic;
SIGNAL \WB_to_rd[18]~output_o\ : std_logic;
SIGNAL \WB_to_rd[19]~output_o\ : std_logic;
SIGNAL \WB_to_rd[20]~output_o\ : std_logic;
SIGNAL \WB_to_rd[21]~output_o\ : std_logic;
SIGNAL \WB_to_rd[22]~output_o\ : std_logic;
SIGNAL \WB_to_rd[23]~output_o\ : std_logic;
SIGNAL \WB_to_rd[24]~output_o\ : std_logic;
SIGNAL \WB_to_rd[25]~output_o\ : std_logic;
SIGNAL \WB_to_rd[26]~output_o\ : std_logic;
SIGNAL \WB_to_rd[27]~output_o\ : std_logic;
SIGNAL \WB_to_rd[28]~output_o\ : std_logic;
SIGNAL \WB_to_rd[29]~output_o\ : std_logic;
SIGNAL \WB_to_rd[30]~output_o\ : std_logic;
SIGNAL \WB_to_rd[31]~output_o\ : std_logic;
SIGNAL \WB_nextPC[0]~output_o\ : std_logic;
SIGNAL \WB_nextPC[1]~output_o\ : std_logic;
SIGNAL \WB_nextPC[2]~output_o\ : std_logic;
SIGNAL \WB_nextPC[3]~output_o\ : std_logic;
SIGNAL \WB_nextPC[4]~output_o\ : std_logic;
SIGNAL \WB_nextPC[5]~output_o\ : std_logic;
SIGNAL \WB_nextPC[6]~output_o\ : std_logic;
SIGNAL \WB_nextPC[7]~output_o\ : std_logic;
SIGNAL \WB_nextPC[8]~output_o\ : std_logic;
SIGNAL \WB_nextPC[9]~output_o\ : std_logic;
SIGNAL \WB_nextPC[10]~output_o\ : std_logic;
SIGNAL \WB_nextPC[11]~output_o\ : std_logic;
SIGNAL \WB_nextPC[12]~output_o\ : std_logic;
SIGNAL \WB_nextPC[13]~output_o\ : std_logic;
SIGNAL \WB_nextPC[14]~output_o\ : std_logic;
SIGNAL \WB_nextPC[15]~output_o\ : std_logic;
SIGNAL \WB_nextPC[16]~output_o\ : std_logic;
SIGNAL \WB_nextPC[17]~output_o\ : std_logic;
SIGNAL \WB_nextPC[18]~output_o\ : std_logic;
SIGNAL \WB_nextPC[19]~output_o\ : std_logic;
SIGNAL \WB_nextPC[20]~output_o\ : std_logic;
SIGNAL \WB_nextPC[21]~output_o\ : std_logic;
SIGNAL \WB_nextPC[22]~output_o\ : std_logic;
SIGNAL \WB_nextPC[23]~output_o\ : std_logic;
SIGNAL \WB_nextPC[24]~output_o\ : std_logic;
SIGNAL \WB_nextPC[25]~output_o\ : std_logic;
SIGNAL \WB_nextPC[26]~output_o\ : std_logic;
SIGNAL \WB_nextPC[27]~output_o\ : std_logic;
SIGNAL \WB_nextPC[28]~output_o\ : std_logic;
SIGNAL \WB_nextPC[29]~output_o\ : std_logic;
SIGNAL \WB_nextPC[30]~output_o\ : std_logic;
SIGNAL \WB_nextPC[31]~output_o\ : std_logic;
SIGNAL \Memory_Address[0]~output_o\ : std_logic;
SIGNAL \Memory_Address[1]~output_o\ : std_logic;
SIGNAL \Memory_Address[2]~output_o\ : std_logic;
SIGNAL \Memory_Address[3]~output_o\ : std_logic;
SIGNAL \Memory_Address[4]~output_o\ : std_logic;
SIGNAL \Memory_Address[5]~output_o\ : std_logic;
SIGNAL \Memory_Address[6]~output_o\ : std_logic;
SIGNAL \Memory_Address[7]~output_o\ : std_logic;
SIGNAL \Memory_Address[8]~output_o\ : std_logic;
SIGNAL \Memory_Address[9]~output_o\ : std_logic;
SIGNAL \Memory_Address[10]~output_o\ : std_logic;
SIGNAL \Memory_Address[11]~output_o\ : std_logic;
SIGNAL \Memory_Address[12]~output_o\ : std_logic;
SIGNAL \Memory_Address[13]~output_o\ : std_logic;
SIGNAL \Memory_Address[14]~output_o\ : std_logic;
SIGNAL \Memory_Address[15]~output_o\ : std_logic;
SIGNAL \Memory_Address[16]~output_o\ : std_logic;
SIGNAL \Memory_Address[17]~output_o\ : std_logic;
SIGNAL \Memory_Address[18]~output_o\ : std_logic;
SIGNAL \Memory_Address[19]~output_o\ : std_logic;
SIGNAL \Memory_Address[20]~output_o\ : std_logic;
SIGNAL \Memory_Address[21]~output_o\ : std_logic;
SIGNAL \Memory_Address[22]~output_o\ : std_logic;
SIGNAL \Memory_Address[23]~output_o\ : std_logic;
SIGNAL \Memory_Address[24]~output_o\ : std_logic;
SIGNAL \Memory_Address[25]~output_o\ : std_logic;
SIGNAL \Memory_Address[26]~output_o\ : std_logic;
SIGNAL \Memory_Address[27]~output_o\ : std_logic;
SIGNAL \Memory_Address[28]~output_o\ : std_logic;
SIGNAL \Memory_Address[29]~output_o\ : std_logic;
SIGNAL \Memory_Address[30]~output_o\ : std_logic;
SIGNAL \Memory_Address[31]~output_o\ : std_logic;
SIGNAL \Memory_WriteData[0]~output_o\ : std_logic;
SIGNAL \Memory_WriteData[1]~output_o\ : std_logic;
SIGNAL \Memory_WriteData[2]~output_o\ : std_logic;
SIGNAL \Memory_WriteData[3]~output_o\ : std_logic;
SIGNAL \Memory_WriteData[4]~output_o\ : std_logic;
SIGNAL \Memory_WriteData[5]~output_o\ : std_logic;
SIGNAL \Memory_WriteData[6]~output_o\ : std_logic;
SIGNAL \Memory_WriteData[7]~output_o\ : std_logic;
SIGNAL \Memory_WriteData[8]~output_o\ : std_logic;
SIGNAL \Memory_WriteData[9]~output_o\ : std_logic;
SIGNAL \Memory_WriteData[10]~output_o\ : std_logic;
SIGNAL \Memory_WriteData[11]~output_o\ : std_logic;
SIGNAL \Memory_WriteData[12]~output_o\ : std_logic;
SIGNAL \Memory_WriteData[13]~output_o\ : std_logic;
SIGNAL \Memory_WriteData[14]~output_o\ : std_logic;
SIGNAL \Memory_WriteData[15]~output_o\ : std_logic;
SIGNAL \Memory_WriteData[16]~output_o\ : std_logic;
SIGNAL \Memory_WriteData[17]~output_o\ : std_logic;
SIGNAL \Memory_WriteData[18]~output_o\ : std_logic;
SIGNAL \Memory_WriteData[19]~output_o\ : std_logic;
SIGNAL \Memory_WriteData[20]~output_o\ : std_logic;
SIGNAL \Memory_WriteData[21]~output_o\ : std_logic;
SIGNAL \Memory_WriteData[22]~output_o\ : std_logic;
SIGNAL \Memory_WriteData[23]~output_o\ : std_logic;
SIGNAL \Memory_WriteData[24]~output_o\ : std_logic;
SIGNAL \Memory_WriteData[25]~output_o\ : std_logic;
SIGNAL \Memory_WriteData[26]~output_o\ : std_logic;
SIGNAL \Memory_WriteData[27]~output_o\ : std_logic;
SIGNAL \Memory_WriteData[28]~output_o\ : std_logic;
SIGNAL \Memory_WriteData[29]~output_o\ : std_logic;
SIGNAL \Memory_WriteData[30]~output_o\ : std_logic;
SIGNAL \Memory_WriteData[31]~output_o\ : std_logic;
SIGNAL \rd_port[0]~output_o\ : std_logic;
SIGNAL \rd_port[1]~output_o\ : std_logic;
SIGNAL \rd_port[2]~output_o\ : std_logic;
SIGNAL \rd_port[3]~output_o\ : std_logic;
SIGNAL \rd_port[4]~output_o\ : std_logic;
SIGNAL \CacheMISS_stopFetch~output_o\ : std_logic;
SIGNAL \Memo_READ_Data[0]~input_o\ : std_logic;
SIGNAL \WDSEL[1]~input_o\ : std_logic;
SIGNAL \WDSEL[0]~input_o\ : std_logic;
SIGNAL \PC[0]~input_o\ : std_logic;
SIGNAL \immI[0]~input_o\ : std_logic;
SIGNAL \BSEL[1]~input_o\ : std_logic;
SIGNAL \BSEL[2]~input_o\ : std_logic;
SIGNAL \Mux37~0_combout\ : std_logic;
SIGNAL \BSEL[0]~input_o\ : std_logic;
SIGNAL \Mux37~1_combout\ : std_logic;
SIGNAL \Mux37~2_combout\ : std_logic;
SIGNAL \immS_B[0]~input_o\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \rs2[0]~input_o\ : std_logic;
SIGNAL \Mux0~combout\ : std_logic;
SIGNAL \ASEL~input_o\ : std_logic;
SIGNAL \rs1[0]~input_o\ : std_logic;
SIGNAL \immU_J[0]~input_o\ : std_logic;
SIGNAL \A[0]~0_combout\ : std_logic;
SIGNAL \ALUFunct[0]~input_o\ : std_logic;
SIGNAL \ALUFunct[2]~input_o\ : std_logic;
SIGNAL \immU_J[31]~input_o\ : std_logic;
SIGNAL \rs1[31]~input_o\ : std_logic;
SIGNAL \A[31]~7_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|xToIn[31]~5_combout\ : std_logic;
SIGNAL \rs2[2]~input_o\ : std_logic;
SIGNAL \immI[2]~input_o\ : std_logic;
SIGNAL \PC[2]~input_o\ : std_logic;
SIGNAL \immS_B[2]~input_o\ : std_logic;
SIGNAL \Mux37~3_combout\ : std_logic;
SIGNAL \Mux37~combout\ : std_logic;
SIGNAL \immI[4]~input_o\ : std_logic;
SIGNAL \rs2[4]~input_o\ : std_logic;
SIGNAL \PC[4]~input_o\ : std_logic;
SIGNAL \immS_B[4]~input_o\ : std_logic;
SIGNAL \Mux41~0_combout\ : std_logic;
SIGNAL \Mux41~combout\ : std_logic;
SIGNAL \immI[3]~input_o\ : std_logic;
SIGNAL \immS_B[3]~input_o\ : std_logic;
SIGNAL \PC[3]~input_o\ : std_logic;
SIGNAL \Mux39~0_combout\ : std_logic;
SIGNAL \rs2[3]~input_o\ : std_logic;
SIGNAL \Mux39~combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|z[31]~8_combout\ : std_logic;
SIGNAL \ALUFunct[3]~input_o\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|sftIn~combout\ : std_logic;
SIGNAL \PC[1]~input_o\ : std_logic;
SIGNAL \immS_B[1]~input_o\ : std_logic;
SIGNAL \Mux35~0_combout\ : std_logic;
SIGNAL \rs2[1]~input_o\ : std_logic;
SIGNAL \immI[1]~input_o\ : std_logic;
SIGNAL \Mux35~combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|z[31]~9_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|z[31]~10_combout\ : std_logic;
SIGNAL \rs1[5]~input_o\ : std_logic;
SIGNAL \immU_J[5]~input_o\ : std_logic;
SIGNAL \A[5]~27_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|MUXout1[4]~14_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|MUXout1[31]~15_combout\ : std_logic;
SIGNAL \rs1[21]~input_o\ : std_logic;
SIGNAL \immU_J[21]~input_o\ : std_logic;
SIGNAL \A[21]~12_combout\ : std_logic;
SIGNAL \immU_J[10]~input_o\ : std_logic;
SIGNAL \rs1[10]~input_o\ : std_logic;
SIGNAL \A[10]~22_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|xToIn[21]~6_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|MUXout1[5]~18_combout\ : std_logic;
SIGNAL \immU_J[18]~input_o\ : std_logic;
SIGNAL \rs1[18]~input_o\ : std_logic;
SIGNAL \A[18]~9_combout\ : std_logic;
SIGNAL \rs1[13]~input_o\ : std_logic;
SIGNAL \immU_J[13]~input_o\ : std_logic;
SIGNAL \A[13]~19_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|MUXout0[13]~6_combout\ : std_logic;
SIGNAL \rs1[2]~input_o\ : std_logic;
SIGNAL \immU_J[2]~input_o\ : std_logic;
SIGNAL \A[2]~24_combout\ : std_logic;
SIGNAL \immU_J[29]~input_o\ : std_logic;
SIGNAL \rs1[29]~input_o\ : std_logic;
SIGNAL \A[29]~1_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|xToIn[29]~7_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|MUXout0[13]~7_combout\ : std_logic;
SIGNAL \rs1[26]~input_o\ : std_logic;
SIGNAL \immU_J[26]~input_o\ : std_logic;
SIGNAL \A[26]~2_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|MUXout1[5]~19_combout\ : std_logic;
SIGNAL \rs1[16]~input_o\ : std_logic;
SIGNAL \immU_J[16]~input_o\ : std_logic;
SIGNAL \A[16]~16_combout\ : std_logic;
SIGNAL \immU_J[15]~input_o\ : std_logic;
SIGNAL \rs1[15]~input_o\ : std_logic;
SIGNAL \A[15]~17_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|MUXout0[15]~4_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|MUXout0[15]~5_combout\ : std_logic;
SIGNAL \rs1[24]~input_o\ : std_logic;
SIGNAL \immU_J[24]~input_o\ : std_logic;
SIGNAL \A[24]~3_combout\ : std_logic;
SIGNAL \rs1[7]~input_o\ : std_logic;
SIGNAL \immU_J[7]~input_o\ : std_logic;
SIGNAL \A[7]~29_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|MUXout1[7]~16_combout\ : std_logic;
SIGNAL \immU_J[8]~input_o\ : std_logic;
SIGNAL \rs1[8]~input_o\ : std_logic;
SIGNAL \A[8]~30_combout\ : std_logic;
SIGNAL \immU_J[23]~input_o\ : std_logic;
SIGNAL \rs1[23]~input_o\ : std_logic;
SIGNAL \A[23]~14_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|xToIn[23]~4_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|MUXout1[7]~17_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|MUXout3[5]~5_combout\ : std_logic;
SIGNAL \immU_J[1]~input_o\ : std_logic;
SIGNAL \rs1[1]~input_o\ : std_logic;
SIGNAL \A[1]~23_combout\ : std_logic;
SIGNAL \immU_J[30]~input_o\ : std_logic;
SIGNAL \rs1[30]~input_o\ : std_logic;
SIGNAL \A[30]~5_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|MUXout3[1]~2_combout\ : std_logic;
SIGNAL \rs1[17]~input_o\ : std_logic;
SIGNAL \immU_J[17]~input_o\ : std_logic;
SIGNAL \A[17]~8_combout\ : std_logic;
SIGNAL \rs1[14]~input_o\ : std_logic;
SIGNAL \immU_J[14]~input_o\ : std_logic;
SIGNAL \A[14]~18_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|MUXout3[1]~48_combout\ : std_logic;
SIGNAL \rs1[6]~input_o\ : std_logic;
SIGNAL \immU_J[6]~input_o\ : std_logic;
SIGNAL \A[6]~28_combout\ : std_logic;
SIGNAL \immU_J[25]~input_o\ : std_logic;
SIGNAL \rs1[25]~input_o\ : std_logic;
SIGNAL \A[25]~4_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|xToIn[25]~2_combout\ : std_logic;
SIGNAL \rs1[9]~input_o\ : std_logic;
SIGNAL \immU_J[9]~input_o\ : std_logic;
SIGNAL \A[9]~31_combout\ : std_logic;
SIGNAL \rs1[22]~input_o\ : std_logic;
SIGNAL \immU_J[22]~input_o\ : std_logic;
SIGNAL \A[22]~13_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|MUXout0[9]~2_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|MUXout0[9]~3_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|MUXout3[1]~3_combout\ : std_logic;
SIGNAL \immU_J[27]~input_o\ : std_logic;
SIGNAL \rs1[27]~input_o\ : std_logic;
SIGNAL \A[27]~15_combout\ : std_logic;
SIGNAL \rs1[4]~input_o\ : std_logic;
SIGNAL \immU_J[4]~input_o\ : std_logic;
SIGNAL \A[4]~26_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|xToIn[27]~1_combout\ : std_logic;
SIGNAL \rs1[11]~input_o\ : std_logic;
SIGNAL \immU_J[11]~input_o\ : std_logic;
SIGNAL \A[11]~21_combout\ : std_logic;
SIGNAL \rs1[20]~input_o\ : std_logic;
SIGNAL \immU_J[20]~input_o\ : std_logic;
SIGNAL \A[20]~11_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|MUXout0[11]~0_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|MUXout0[11]~1_combout\ : std_logic;
SIGNAL \rs1[3]~input_o\ : std_logic;
SIGNAL \immU_J[3]~input_o\ : std_logic;
SIGNAL \A[3]~25_combout\ : std_logic;
SIGNAL \rs1[19]~input_o\ : std_logic;
SIGNAL \immU_J[19]~input_o\ : std_logic;
SIGNAL \A[19]~10_combout\ : std_logic;
SIGNAL \rs1[12]~input_o\ : std_logic;
SIGNAL \immU_J[12]~input_o\ : std_logic;
SIGNAL \A[12]~20_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|xToIn[19]~0_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|MUXout2[3]~0_combout\ : std_logic;
SIGNAL \rs1[28]~input_o\ : std_logic;
SIGNAL \immU_J[28]~input_o\ : std_logic;
SIGNAL \A[28]~6_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|MUXout2[3]~1_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|MUXout3[1]~4_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|MUXout3[1]~6_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|xToIn[30]~9_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|MUXout0[14]~8_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|MUXout0[14]~9_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|xToIn[22]~8_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|MUXout1[6]~20_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|MUXout1[6]~21_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|xToIn[28]~11_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|MUXout0[12]~10_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|MUXout0[12]~11_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|xToIn[20]~10_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|MUXout1[4]~22_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|MUXout1[4]~23_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|z[0]~2_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|xToIn[18]~14_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|MUXout2[2]~2_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|xToIn[26]~15_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|MUXout0[10]~14_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|MUXout0[10]~15_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|MUXout2[2]~3_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|xToIn[24]~13_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|MUXout0[8]~12_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|MUXout0[8]~13_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|z[0]~3_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|xToIn[16]~12_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|z[0]~4_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|z[0]~5_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|z[0]~6_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|z[0]~7_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Mux31~2_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Mux31~3_combout\ : std_logic;
SIGNAL \ALUFunct[1]~input_o\ : std_logic;
SIGNAL \immI[7]~input_o\ : std_logic;
SIGNAL \rs2[7]~input_o\ : std_logic;
SIGNAL \PC[7]~input_o\ : std_logic;
SIGNAL \immS_B[7]~input_o\ : std_logic;
SIGNAL \Mux47~0_combout\ : std_logic;
SIGNAL \Mux47~combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|set_a_less_b|wiring|bits07|a_eq_b~2_combout\ : std_logic;
SIGNAL \rs2[5]~input_o\ : std_logic;
SIGNAL \immS_B[5]~input_o\ : std_logic;
SIGNAL \PC[5]~input_o\ : std_logic;
SIGNAL \Mux43~0_combout\ : std_logic;
SIGNAL \immI[5]~input_o\ : std_logic;
SIGNAL \Mux43~combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|set_a_less_b|wiring|bits05|a_eq_b~2_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~16_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~17_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|set_a_less_b|wiring|bits04|a_eq_b~2_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~18_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~19_combout\ : std_logic;
SIGNAL \immI[6]~input_o\ : std_logic;
SIGNAL \PC[6]~input_o\ : std_logic;
SIGNAL \immS_B[6]~input_o\ : std_logic;
SIGNAL \Mux45~0_combout\ : std_logic;
SIGNAL \rs2[6]~input_o\ : std_logic;
SIGNAL \Mux45~combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|set_a_less_b|wiring|bits06|a_eq_b~2_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~20_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~21_combout\ : std_logic;
SIGNAL \PC[8]~input_o\ : std_logic;
SIGNAL \immS_B[8]~input_o\ : std_logic;
SIGNAL \Mux49~0_combout\ : std_logic;
SIGNAL \rs2[8]~input_o\ : std_logic;
SIGNAL \immI[8]~input_o\ : std_logic;
SIGNAL \Mux49~combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|set_a_less_b|wiring|bits08|a_eq_b~2_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~22_combout\ : std_logic;
SIGNAL \PC[9]~input_o\ : std_logic;
SIGNAL \immS_B[9]~input_o\ : std_logic;
SIGNAL \Mux51~0_combout\ : std_logic;
SIGNAL \immI[9]~input_o\ : std_logic;
SIGNAL \rs2[9]~input_o\ : std_logic;
SIGNAL \Mux51~combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|set_a_less_b|wiring|bits09|a_eq_b~2_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~23_combout\ : std_logic;
SIGNAL \PC[11]~input_o\ : std_logic;
SIGNAL \immS_B[11]~input_o\ : std_logic;
SIGNAL \Mux55~0_combout\ : std_logic;
SIGNAL \rs2[11]~input_o\ : std_logic;
SIGNAL \immI[11]~input_o\ : std_logic;
SIGNAL \Mux55~combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|set_a_less_b|wiring|bits11|a_eq_b~2_combout\ : std_logic;
SIGNAL \rs2[12]~input_o\ : std_logic;
SIGNAL \immI[12]~input_o\ : std_logic;
SIGNAL \PC[12]~input_o\ : std_logic;
SIGNAL \immS_B[12]~input_o\ : std_logic;
SIGNAL \Mux57~0_combout\ : std_logic;
SIGNAL \Mux57~combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|set_a_less_b|wiring|bits12|a_eq_b~2_combout\ : std_logic;
SIGNAL \rs2[10]~input_o\ : std_logic;
SIGNAL \immI[10]~input_o\ : std_logic;
SIGNAL \PC[10]~input_o\ : std_logic;
SIGNAL \immS_B[10]~input_o\ : std_logic;
SIGNAL \Mux53~0_combout\ : std_logic;
SIGNAL \Mux53~combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|set_a_less_b|wiring|bits10|a_eq_b~2_combout\ : std_logic;
SIGNAL \PC[15]~input_o\ : std_logic;
SIGNAL \immS_B[15]~input_o\ : std_logic;
SIGNAL \Mux63~0_combout\ : std_logic;
SIGNAL \immI[15]~input_o\ : std_logic;
SIGNAL \rs2[15]~input_o\ : std_logic;
SIGNAL \Mux63~combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|set_a_less_b|wiring|bits15|a_eq_b~2_combout\ : std_logic;
SIGNAL \immI[16]~input_o\ : std_logic;
SIGNAL \rs2[16]~input_o\ : std_logic;
SIGNAL \PC[16]~input_o\ : std_logic;
SIGNAL \immS_B[16]~input_o\ : std_logic;
SIGNAL \Mux65~0_combout\ : std_logic;
SIGNAL \Mux65~combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|set_a_less_b|wiring|bits16|a_eq_b~2_combout\ : std_logic;
SIGNAL \rs2[13]~input_o\ : std_logic;
SIGNAL \PC[13]~input_o\ : std_logic;
SIGNAL \immS_B[13]~input_o\ : std_logic;
SIGNAL \Mux59~0_combout\ : std_logic;
SIGNAL \immI[13]~input_o\ : std_logic;
SIGNAL \Mux59~combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|set_a_less_b|wiring|bits13|a_eq_b~2_combout\ : std_logic;
SIGNAL \immI[14]~input_o\ : std_logic;
SIGNAL \immS_B[14]~input_o\ : std_logic;
SIGNAL \PC[14]~input_o\ : std_logic;
SIGNAL \Mux61~0_combout\ : std_logic;
SIGNAL \rs2[14]~input_o\ : std_logic;
SIGNAL \Mux61~combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|set_a_less_b|wiring|bits14|a_eq_b~2_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~14_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~15_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~24_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~25_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~26_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~27_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~28_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~29_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~30_combout\ : std_logic;
SIGNAL \immI[24]~input_o\ : std_logic;
SIGNAL \rs2[24]~input_o\ : std_logic;
SIGNAL \PC[24]~input_o\ : std_logic;
SIGNAL \immS_B[24]~input_o\ : std_logic;
SIGNAL \Mux81~0_combout\ : std_logic;
SIGNAL \Mux81~combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|set_a_less_b|wiring|bits24|a_eq_b~2_combout\ : std_logic;
SIGNAL \rs2[26]~input_o\ : std_logic;
SIGNAL \PC[26]~input_o\ : std_logic;
SIGNAL \immS_B[26]~input_o\ : std_logic;
SIGNAL \Mux85~0_combout\ : std_logic;
SIGNAL \immI[26]~input_o\ : std_logic;
SIGNAL \Mux85~combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|set_a_less_b|wiring|bits26|a_eq_b~2_combout\ : std_logic;
SIGNAL \rs2[25]~input_o\ : std_logic;
SIGNAL \PC[25]~input_o\ : std_logic;
SIGNAL \immS_B[25]~input_o\ : std_logic;
SIGNAL \Mux83~0_combout\ : std_logic;
SIGNAL \immI[25]~input_o\ : std_logic;
SIGNAL \Mux83~combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|set_a_less_b|wiring|bits24|eqi~0_combout\ : std_logic;
SIGNAL \PC[29]~input_o\ : std_logic;
SIGNAL \immS_B[29]~input_o\ : std_logic;
SIGNAL \Mux91~0_combout\ : std_logic;
SIGNAL \immI[29]~input_o\ : std_logic;
SIGNAL \rs2[29]~input_o\ : std_logic;
SIGNAL \Mux91~combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|set_a_less_b|wiring|bits29|a_eq_b~2_combout\ : std_logic;
SIGNAL \rs2[31]~input_o\ : std_logic;
SIGNAL \immI[31]~input_o\ : std_logic;
SIGNAL \PC[31]~input_o\ : std_logic;
SIGNAL \immS_B[31]~input_o\ : std_logic;
SIGNAL \Mux95~0_combout\ : std_logic;
SIGNAL \Mux95~combout\ : std_logic;
SIGNAL \immI[30]~input_o\ : std_logic;
SIGNAL \rs2[30]~input_o\ : std_logic;
SIGNAL \immS_B[30]~input_o\ : std_logic;
SIGNAL \PC[30]~input_o\ : std_logic;
SIGNAL \Mux93~0_combout\ : std_logic;
SIGNAL \Mux93~combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|set_a_less_b|wiring|bits30|a_eq_b~2_combout\ : std_logic;
SIGNAL \immI[28]~input_o\ : std_logic;
SIGNAL \PC[28]~input_o\ : std_logic;
SIGNAL \immS_B[28]~input_o\ : std_logic;
SIGNAL \Mux89~0_combout\ : std_logic;
SIGNAL \rs2[28]~input_o\ : std_logic;
SIGNAL \Mux89~combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|set_a_less_b|wiring|bits28|a_eq_b~2_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|set_a_less_b|wiring|bits24|eqi~1_combout\ : std_logic;
SIGNAL \immI[27]~input_o\ : std_logic;
SIGNAL \rs2[27]~input_o\ : std_logic;
SIGNAL \immS_B[27]~input_o\ : std_logic;
SIGNAL \PC[27]~input_o\ : std_logic;
SIGNAL \Mux87~0_combout\ : std_logic;
SIGNAL \Mux87~combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|set_a_less_b|wiring|bits27|a_eq_b~0_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|set_a_less_b|wiring|bits24|eqi~2_combout\ : std_logic;
SIGNAL \rs2[19]~input_o\ : std_logic;
SIGNAL \immI[19]~input_o\ : std_logic;
SIGNAL \PC[19]~input_o\ : std_logic;
SIGNAL \immS_B[19]~input_o\ : std_logic;
SIGNAL \Mux71~0_combout\ : std_logic;
SIGNAL \Mux71~combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|set_a_less_b|wiring|bits19|a_eq_b~2_combout\ : std_logic;
SIGNAL \rs2[22]~input_o\ : std_logic;
SIGNAL \PC[22]~input_o\ : std_logic;
SIGNAL \immS_B[22]~input_o\ : std_logic;
SIGNAL \Mux77~0_combout\ : std_logic;
SIGNAL \immI[22]~input_o\ : std_logic;
SIGNAL \Mux77~combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|set_a_less_b|wiring|bits22|a_eq_b~2_combout\ : std_logic;
SIGNAL \immS_B[21]~input_o\ : std_logic;
SIGNAL \PC[21]~input_o\ : std_logic;
SIGNAL \Mux75~0_combout\ : std_logic;
SIGNAL \rs2[21]~input_o\ : std_logic;
SIGNAL \immI[21]~input_o\ : std_logic;
SIGNAL \Mux75~combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|set_a_less_b|wiring|bits21|a_eq_b~2_combout\ : std_logic;
SIGNAL \rs2[20]~input_o\ : std_logic;
SIGNAL \PC[20]~input_o\ : std_logic;
SIGNAL \immS_B[20]~input_o\ : std_logic;
SIGNAL \Mux73~0_combout\ : std_logic;
SIGNAL \immI[20]~input_o\ : std_logic;
SIGNAL \Mux73~combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|set_a_less_b|wiring|bits20|a_eq_b~2_combout\ : std_logic;
SIGNAL \rs2[23]~input_o\ : std_logic;
SIGNAL \immI[23]~input_o\ : std_logic;
SIGNAL \PC[23]~input_o\ : std_logic;
SIGNAL \immS_B[23]~input_o\ : std_logic;
SIGNAL \Mux79~0_combout\ : std_logic;
SIGNAL \Mux79~combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|set_a_less_b|wiring|bits23|a_eq_b~2_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~31_combout\ : std_logic;
SIGNAL \immS_B[18]~input_o\ : std_logic;
SIGNAL \PC[18]~input_o\ : std_logic;
SIGNAL \Mux69~0_combout\ : std_logic;
SIGNAL \rs2[18]~input_o\ : std_logic;
SIGNAL \immI[18]~input_o\ : std_logic;
SIGNAL \Mux69~combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|set_a_less_b|wiring|bits18|a_eq_b~2_combout\ : std_logic;
SIGNAL \rs2[17]~input_o\ : std_logic;
SIGNAL \immI[17]~input_o\ : std_logic;
SIGNAL \PC[17]~input_o\ : std_logic;
SIGNAL \immS_B[17]~input_o\ : std_logic;
SIGNAL \Mux67~0_combout\ : std_logic;
SIGNAL \Mux67~combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|set_a_less_b|wiring|bits17|a_eq_b~2_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~32_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~6_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~7_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~8_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~9_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~10_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~11_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~12_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~0_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~1_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~2_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~3_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~4_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~5_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~13_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~33_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Mux31~0_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Mux31~1_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Mux31~4_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Mux33~0_combout\ : std_logic;
SIGNAL \Memo_READ_Data[1]~input_o\ : std_logic;
SIGNAL \WIRING_THE_ALU|set_a_less_b|wiring|bits01|a_eq_b~2_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Mux12~0_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|z[30]~12_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|z[30]~13_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|MUXout3[2]~7_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|MUXout0[16]~16_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|MUXout1[8]~24_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|MUXout1[8]~25_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|MUXout3[6]~8_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|MUXout3[2]~9_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|z[1]~11_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit0to7|bit0123|bit01|bit0|cout~0_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit0to7|bit0123|bit01|bit1|s~0_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Mux30~1_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Mux30~2_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Mux30~0_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Mux30~3_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Memo_READ_Data[2]~input_o\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|MUXout3[3]~10_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|MUXout1[9]~33_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|MUXout1[9]~26_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|MUXout3[7]~11_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|MUXout3[3]~12_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|z[2]~14_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit0to7|bit0123|bit01|bit1|cout~0_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit0to7|bit0123|bit23|bit0|s~combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Mux29~1_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|set_a_less_b|wiring|bits02|a_eq_b~2_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|z[29]~16_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|z[29]~15_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|z[29]~17_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Mux29~2_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Mux29~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \Memo_READ_Data[3]~input_o\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|MUXout3[24]~16_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|z[28]~19_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|z[28]~20_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit0to7|bit0123|bit23|bit0|cout~0_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit0to7|bit0123|bit23|bit1|s~combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|MUXout3[4]~13_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|MUXout1[10]~34_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|MUXout1[10]~27_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|MUXout3[8]~14_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|MUXout3[4]~15_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|z[3]~18_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Mux28~1_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|set_a_less_b|wiring|bits03|a_eq_b~2_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Mux28~2_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Mux28~0_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Mux28~3_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \Memo_READ_Data[4]~input_o\ : std_logic;
SIGNAL \WIRING_THE_ALU|Mux27~0_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|MUXout1[11]~35_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|MUXout1[11]~28_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|MUXout3[9]~17_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|MUXout3[5]~18_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|z[4]~21_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit0to7|bit0123|bit23|bit1|cout~0_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit0to7|bit4567|bit01|bit0|s~combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Mux27~1_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|z[27]~23_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|MUXout3[27]~19_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|MUXout3[27]~20_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|z[27]~22_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|z[27]~24_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Mux27~2_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Mux27~3_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit0to7|bit4567|bit01|bit0|cout~0_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit0to7|bit4567|bit01|bit1|s~combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|MUXout1[12]~36_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|MUXout1[12]~29_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|MUXout3[6]~21_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|MUXout3[6]~22_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|z[5]~25_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Mux26~1_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|z[26]~26_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|MUXout3[26]~23_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|MUXout3[26]~24_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|z[26]~27_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|z[26]~28_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Mux26~2_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Mux26~0_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Mux26~3_combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \Memo_READ_Data[5]~input_o\ : std_logic;
SIGNAL \Mux6~2_combout\ : std_logic;
SIGNAL \Memo_READ_Data[6]~input_o\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|MUXout1[13]~37_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|MUXout1[13]~30_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|MUXout3[7]~25_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|MUXout3[7]~26_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|z[6]~29_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit0to7|bit4567|bit01|bit1|cout~0_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit0to7|bit4567|bit23|bit0|s~combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Mux25~1_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|MUXout3[25]~27_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|MUXout3[25]~28_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|z[25]~30_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|z[25]~31_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|z[25]~32_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Mux25~2_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Mux25~0_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Mux25~3_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|MUXout3[24]~31_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|MUXout3[24]~32_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|z[24]~34_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|z[24]~74_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit0to7|bit4567|bit23|bit0|cout~0_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit0to7|bit4567|bit23|bit1|s~combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|MUXout1[14]~38_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|MUXout1[14]~31_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|MUXout3[8]~29_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|MUXout3[8]~30_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|z[7]~33_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Mux24~1_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Mux24~2_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Mux24~0_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Mux24~3_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Memo_READ_Data[7]~input_o\ : std_logic;
SIGNAL \Mux8~1_combout\ : std_logic;
SIGNAL \Mux9~1_combout\ : std_logic;
SIGNAL \Memo_READ_Data[8]~input_o\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|MUXout1[15]~39_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|MUXout1[15]~32_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|MUXout3[9]~33_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|MUXout3[9]~34_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|z[8]~35_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit0to7|bit4567|bit23|bit1|cout~0_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit8toF|bit0123|bit01|bit0|s~combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Mux23~1_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|MUXout3[23]~35_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|MUXout2[19]~4_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|MUXout2[23]~5_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|MUXout3[23]~36_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|z[23]~36_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|z[23]~37_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|z[23]~38_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Mux23~2_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Mux23~0_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux9~2_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Mux22~0_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|MUXout3[10]~37_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|MUXout2[12]~6_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|MUXout2[12]~7_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|MUXout3[10]~38_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|z[9]~39_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit8toF|bit0123|bit01|bit0|cout~0_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit8toF|bit0123|bit01|bit1|s~combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Mux22~1_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|MUXout3[23]~41_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|MUXout3[22]~39_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|MUXout2[18]~8_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|MUXout2[22]~9_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|MUXout3[22]~40_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|z[22]~40_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|z[22]~41_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Mux22~2_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Mux22~3_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Memo_READ_Data[9]~input_o\ : std_logic;
SIGNAL \Mux10~1_combout\ : std_logic;
SIGNAL \Memo_READ_Data[10]~input_o\ : std_logic;
SIGNAL \WIRING_THE_ALU|Mux21~0_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|z[21]~45_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|MUXout2[17]~12_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|MUXout2[21]~13_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|z[20]~43_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|z[21]~44_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|z[21]~46_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|MUXout3[11]~42_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|xToIn[17]~3_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|MUXout2[13]~10_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|MUXout2[13]~11_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|MUXout3[11]~43_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|z[10]~42_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit8toF|bit0123|bit01|bit1|cout~0_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit8toF|bit0123|bit23|bit0|s~combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Mux21~1_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Mux21~2_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Mux21~3_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux11~1_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|z[20]~49_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|MUXout2[16]~16_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|MUXout2[20]~17_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|z[20]~50_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|z[20]~51_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|z[20]~52_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|MUXout2[14]~14_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|MUXout2[14]~15_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|z[12]~47_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|z[11]~48_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit8toF|bit0123|bit23|bit0|cout~0_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit8toF|bit0123|bit23|bit1|s~combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Mux20~1_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Mux20~2_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Mux20~0_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Mux20~3_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Mux12~1_combout\ : std_logic;
SIGNAL \Memo_READ_Data[11]~input_o\ : std_logic;
SIGNAL \Mux12~2_combout\ : std_logic;
SIGNAL \Memo_READ_Data[12]~input_o\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|MUXout2[15]~18_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|MUXout2[15]~19_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|z[12]~53_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|z[12]~54_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit8toF|bit0123|bit23|bit1|cout~0_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit8toF|bit4567|bit01|bit0|s~combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Mux19~1_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|z[19]~55_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|MUXout2[19]~20_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|MUXout2[19]~21_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|z[19]~56_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|z[19]~57_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|z[19]~58_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Mux19~2_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Mux19~0_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Mux19~3_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Mux13~1_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit8toF|bit4567|bit01|bit0|cout~0_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit8toF|bit4567|bit01|bit1|s~combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|MUXout2[16]~22_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|MUXout3[14]~44_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|MUXout3[14]~45_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|z[13]~59_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Mux18~1_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|z[18]~60_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|MUXout2[18]~23_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|MUXout2[18]~24_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|z[17]~61_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|z[18]~62_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|z[18]~63_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Mux18~2_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Mux18~0_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Mux18~3_combout\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \Memo_READ_Data[13]~input_o\ : std_logic;
SIGNAL \Mux14~1_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|MUXout2[17]~25_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|MUXout2[17]~26_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|z[17]~65_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|z[17]~66_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|z[17]~67_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|z[17]~68_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|MUXout3[15]~46_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|MUXout3[15]~47_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|z[14]~64_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit8toF|bit4567|bit01|bit1|cout~0_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit8toF|bit4567|bit23|bit0|s~combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Mux17~1_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Mux17~2_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Mux17~0_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Mux17~3_combout\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \Mux15~1_combout\ : std_logic;
SIGNAL \Memo_READ_Data[14]~input_o\ : std_logic;
SIGNAL \Mux15~2_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|MUXout2[16]~27_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|z[16]~69_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|z[16]~72_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|z[16]~73_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|z[15]~70_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Shifting|shifting|z[15]~71_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit8toF|bit4567|bit23|bit0|cout~0_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit8toF|bit4567|bit23|bit1|s~combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Mux16~1_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Mux16~2_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Mux16~0_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Mux16~3_combout\ : std_logic;
SIGNAL \Mux16~0_combout\ : std_logic;
SIGNAL \Memo_READ_Data[15]~input_o\ : std_logic;
SIGNAL \Mux16~1_combout\ : std_logic;
SIGNAL \Memo_READ_Data[16]~input_o\ : std_logic;
SIGNAL \WIRING_THE_ALU|Mux15~0_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit8toF|bit4567|bit23|bit1|cout~0_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit0to7|bit0123|bit01|bit0|s~combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Mux15~1_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Mux15~2_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Mux15~3_combout\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \Mux17~1_combout\ : std_logic;
SIGNAL \Mux18~1_combout\ : std_logic;
SIGNAL \Memo_READ_Data[17]~input_o\ : std_logic;
SIGNAL \WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit0to7|bit0123|bit01|bit0|cout~0_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit0to7|bit0123|bit01|bit1|s~combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Mux14~1_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Mux14~2_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Mux14~0_combout\ : std_logic;
SIGNAL \Mux18~0_combout\ : std_logic;
SIGNAL \Mux18~2_combout\ : std_logic;
SIGNAL \Memo_READ_Data[18]~input_o\ : std_logic;
SIGNAL \WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit0to7|bit0123|bit01|bit1|cout~0_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit0to7|bit0123|bit23|bit0|s~combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Mux13~1_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Mux13~2_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Mux13~0_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Mux13~3_combout\ : std_logic;
SIGNAL \Mux19~0_combout\ : std_logic;
SIGNAL \Mux19~1_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit0to7|bit0123|bit23|bit0|cout~0_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit0to7|bit0123|bit23|bit1|s~combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Mux12~2_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Mux12~3_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Mux12~1_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Mux12~4_combout\ : std_logic;
SIGNAL \Mux20~0_combout\ : std_logic;
SIGNAL \Memo_READ_Data[19]~input_o\ : std_logic;
SIGNAL \Mux20~1_combout\ : std_logic;
SIGNAL \Memo_READ_Data[20]~input_o\ : std_logic;
SIGNAL \Mux21~0_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Mux11~0_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit0to7|bit0123|bit23|bit1|cout~0_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit0to7|bit4567|bit01|bit0|s~combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Mux11~1_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Mux11~2_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Mux11~3_combout\ : std_logic;
SIGNAL \Mux21~1_combout\ : std_logic;
SIGNAL \Mux21~2_combout\ : std_logic;
SIGNAL \Memo_READ_Data[21]~input_o\ : std_logic;
SIGNAL \WIRING_THE_ALU|Mux10~0_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit0to7|bit4567|bit01|bit0|cout~0_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit0to7|bit4567|bit01|bit1|s~combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Mux10~1_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Mux10~2_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Mux10~3_combout\ : std_logic;
SIGNAL \Mux22~0_combout\ : std_logic;
SIGNAL \Mux22~1_combout\ : std_logic;
SIGNAL \Memo_READ_Data[22]~input_o\ : std_logic;
SIGNAL \WIRING_THE_ALU|Mux9~0_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit0to7|bit4567|bit01|bit1|cout~0_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit0to7|bit4567|bit23|bit0|s~combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Mux9~1_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Mux9~2_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Mux9~3_combout\ : std_logic;
SIGNAL \Mux23~0_combout\ : std_logic;
SIGNAL \Mux23~1_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit0to7|bit4567|bit23|bit0|cout~0_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit0to7|bit4567|bit23|bit1|s~combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Mux8~1_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Mux8~2_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Mux8~0_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Mux8~3_combout\ : std_logic;
SIGNAL \Mux24~0_combout\ : std_logic;
SIGNAL \Mux24~1_combout\ : std_logic;
SIGNAL \Memo_READ_Data[23]~input_o\ : std_logic;
SIGNAL \Mux24~2_combout\ : std_logic;
SIGNAL \Memo_READ_Data[24]~input_o\ : std_logic;
SIGNAL \WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit0to7|bit4567|bit23|bit1|cout~0_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit8toF|bit0123|bit01|bit0|s~combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Mux7~1_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Mux7~2_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Mux7~0_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Mux7~3_combout\ : std_logic;
SIGNAL \Mux25~0_combout\ : std_logic;
SIGNAL \Mux25~1_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit8toF|bit0123|bit01|bit0|cout~0_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit8toF|bit0123|bit01|bit1|s~combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Mux6~1_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|set_a_less_b|wiring|bits25|a_eq_b~2_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Mux6~2_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Mux6~0_combout\ : std_logic;
SIGNAL \Mux26~0_combout\ : std_logic;
SIGNAL \Mux26~1_combout\ : std_logic;
SIGNAL \Memo_READ_Data[25]~input_o\ : std_logic;
SIGNAL \Mux26~2_combout\ : std_logic;
SIGNAL \Memo_READ_Data[26]~input_o\ : std_logic;
SIGNAL \WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit8toF|bit0123|bit01|bit1|cout~0_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit8toF|bit0123|bit23|bit0|s~combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Mux5~1_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Mux5~2_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Mux5~0_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Mux5~3_combout\ : std_logic;
SIGNAL \Mux27~0_combout\ : std_logic;
SIGNAL \Mux27~1_combout\ : std_logic;
SIGNAL \Mux27~2_combout\ : std_logic;
SIGNAL \Memo_READ_Data[27]~input_o\ : std_logic;
SIGNAL \Mux28~1_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit8toF|bit0123|bit23|bit0|cout~0_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit8toF|bit0123|bit23|bit1|s~combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Mux4~1_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Mux4~2_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Mux4~0_combout\ : std_logic;
SIGNAL \Mux28~0_combout\ : std_logic;
SIGNAL \Mux28~2_combout\ : std_logic;
SIGNAL \Mux29~1_combout\ : std_logic;
SIGNAL \Memo_READ_Data[28]~input_o\ : std_logic;
SIGNAL \WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit8toF|bit0123|bit23|bit1|cout~0_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit8toF|bit4567|bit01|bit0|s~combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Mux3~1_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Mux3~2_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Mux3~0_combout\ : std_logic;
SIGNAL \Mux29~0_combout\ : std_logic;
SIGNAL \Mux29~2_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit8toF|bit4567|bit01|bit0|cout~0_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit8toF|bit4567|bit01|bit1|s~combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Mux2~1_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Mux2~2_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Mux2~0_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Mux2~3_combout\ : std_logic;
SIGNAL \Mux30~0_combout\ : std_logic;
SIGNAL \Mux30~1_combout\ : std_logic;
SIGNAL \Mux30~3_combout\ : std_logic;
SIGNAL \Memo_READ_Data[29]~input_o\ : std_logic;
SIGNAL \Mux30~2_combout\ : std_logic;
SIGNAL \Mux30~4_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit8toF|bit4567|bit01|bit1|cout~0_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit8toF|bit4567|bit23|bit0|s~combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Mux1~1_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Mux1~2_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Mux1~0_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Mux1~3_combout\ : std_logic;
SIGNAL \Memo_READ_Data[30]~input_o\ : std_logic;
SIGNAL \Mux31~4_combout\ : std_logic;
SIGNAL \Mux31~5_combout\ : std_logic;
SIGNAL \Mux32~0_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|XorR[31]~2_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit8toF|bit4567|bit23|bit0|cout~0_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit8toF|bit4567|bit23|bit1|s~combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Mux0~1_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Mux0~2_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Mux0~0_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Mux0~3_combout\ : std_logic;
SIGNAL \Memo_READ_Data[31]~input_o\ : std_logic;
SIGNAL \Mux32~1_combout\ : std_logic;
SIGNAL \Mux32~2_combout\ : std_logic;
SIGNAL \PCSEL[1]~input_o\ : std_logic;
SIGNAL \PCSEL[0]~input_o\ : std_logic;
SIGNAL \wiring_THE_nPC|Mux0~0_combout\ : std_logic;
SIGNAL \wiring_THE_nPC|Mux0~1_combout\ : std_logic;
SIGNAL \wiring_THE_nPC|Mux32~0_combout\ : std_logic;
SIGNAL \wiring_THE_nPC|Mux1~0_combout\ : std_logic;
SIGNAL \wiring_THE_nPC|Mux1~1_combout\ : std_logic;
SIGNAL \wiring_THE_nPC|Mux2~1_combout\ : std_logic;
SIGNAL \wiring_THE_nPC|wiringB|bit0toF|bit0to7|bit0123|bit01|bit1|cout~0_combout\ : std_logic;
SIGNAL \wiring_THE_nPC|Mux2~0_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Mux29~3_combout\ : std_logic;
SIGNAL \wiring_THE_nPC|Mux2~2_combout\ : std_logic;
SIGNAL \wiring_THE_nPC|wiringB|bit0toF|bit0to7|bit0123|bit23|bit1|s~0_combout\ : std_logic;
SIGNAL \wiring_THE_nPC|Mux3~0_combout\ : std_logic;
SIGNAL \wiring_THE_nPC|Mux3~1_combout\ : std_logic;
SIGNAL \wiring_THE_nPC|wiringB|bit0toF|bit0to7|bit0123|bit23|bit0|cout~0_combout\ : std_logic;
SIGNAL \wiring_THE_nPC|wiringB|bit0toF|bit0to7|bit0123|bit23|bit1|cout~0_combout\ : std_logic;
SIGNAL \wiring_THE_nPC|Mux4~0_combout\ : std_logic;
SIGNAL \wiring_THE_nPC|Mux4~1_combout\ : std_logic;
SIGNAL \wiring_THE_nPC|Mux5~0_combout\ : std_logic;
SIGNAL \wiring_THE_nPC|Mux5~1_combout\ : std_logic;
SIGNAL \wiring_THE_nPC|Mux5~2_combout\ : std_logic;
SIGNAL \wiring_THE_nPC|wiringB|bit0toF|bit0to7|bit4567|bit01|bit1|cout~0_combout\ : std_logic;
SIGNAL \wiring_THE_nPC|Mux6~6_combout\ : std_logic;
SIGNAL \wiring_THE_nPC|Mux6~4_combout\ : std_logic;
SIGNAL \wiring_THE_nPC|Mux6~5_combout\ : std_logic;
SIGNAL \wiring_THE_nPC|wiringB|bit0toF|bit0to7|bit4567|bit23|bit0|cout~0_combout\ : std_logic;
SIGNAL \wiring_THE_nPC|wiringB|bit0toF|bit0to7|bit4567|bit23|bit0|cout~1_combout\ : std_logic;
SIGNAL \wiring_THE_nPC|Mux7~0_combout\ : std_logic;
SIGNAL \wiring_THE_nPC|Mux7~1_combout\ : std_logic;
SIGNAL \wiring_THE_nPC|Mux8~0_combout\ : std_logic;
SIGNAL \wiring_THE_nPC|Mux8~1_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Mux23~3_combout\ : std_logic;
SIGNAL \wiring_THE_nPC|Mux8~2_combout\ : std_logic;
SIGNAL \wiring_THE_nPC|wiringB|bit0toF|bit8toF|bit0123|bit01|bit0|cout~1_combout\ : std_logic;
SIGNAL \wiring_THE_nPC|wiringB|bit0toF|bit8toF|bit0123|bit01|bit0|cout~2_combout\ : std_logic;
SIGNAL \wiring_THE_nPC|Mux9~4_combout\ : std_logic;
SIGNAL \wiring_THE_nPC|Mux9~2_combout\ : std_logic;
SIGNAL \wiring_THE_nPC|Mux9~3_combout\ : std_logic;
SIGNAL \wiring_THE_nPC|wiringB|bit0toF|bit8toF|bit0123|bit01|bit0|cout~0_combout\ : std_logic;
SIGNAL \wiring_THE_nPC|wiringB|bit0toF|bit8toF|bit0123|bit01|bit1|cout~0_combout\ : std_logic;
SIGNAL \wiring_THE_nPC|Mux10~0_combout\ : std_logic;
SIGNAL \wiring_THE_nPC|Mux10~1_combout\ : std_logic;
SIGNAL \wiring_THE_nPC|Mux11~1_combout\ : std_logic;
SIGNAL \wiring_THE_nPC|wiringB|bit0toF|bit8toF|bit0123|bit23|bit0|cout~0_combout\ : std_logic;
SIGNAL \wiring_THE_nPC|Mux11~0_combout\ : std_logic;
SIGNAL \wiring_THE_nPC|Mux11~2_combout\ : std_logic;
SIGNAL \wiring_THE_nPC|wiringB|bit0toF|bit8toF|bit4567|bit01|bit0|s~0_combout\ : std_logic;
SIGNAL \wiring_THE_nPC|wiringB|bit0toF|bit8toF|bit0123|bit23|bit1|cout~0_combout\ : std_logic;
SIGNAL \wiring_THE_nPC|Mux12~0_combout\ : std_logic;
SIGNAL \wiring_THE_nPC|Mux12~1_combout\ : std_logic;
SIGNAL \wiring_THE_nPC|wiringB|bit0toF|bit8toF|bit4567|bit01|bit0|cout~0_combout\ : std_logic;
SIGNAL \wiring_THE_nPC|Mux13~0_combout\ : std_logic;
SIGNAL \wiring_THE_nPC|Mux13~1_combout\ : std_logic;
SIGNAL \wiring_THE_nPC|Mux14~1_combout\ : std_logic;
SIGNAL \wiring_THE_nPC|wiringB|bit0toF|bit8toF|bit4567|bit01|bit1|cout~0_combout\ : std_logic;
SIGNAL \wiring_THE_nPC|Mux14~0_combout\ : std_logic;
SIGNAL \wiring_THE_nPC|Mux14~2_combout\ : std_logic;
SIGNAL \wiring_THE_nPC|wiringB|bit0toF|bit8toF|bit4567|bit23|bit0|cout~0_combout\ : std_logic;
SIGNAL \wiring_THE_nPC|Mux15~0_combout\ : std_logic;
SIGNAL \wiring_THE_nPC|Mux15~1_combout\ : std_logic;
SIGNAL \wiring_THE_nPC|Mux15~2_combout\ : std_logic;
SIGNAL \wiring_THE_nPC|wiringB|bit0toF|bit8toF|bit4567|bit23|bit1|cout~0_combout\ : std_logic;
SIGNAL \wiring_THE_nPC|Mux16~0_combout\ : std_logic;
SIGNAL \wiring_THE_nPC|Mux16~1_combout\ : std_logic;
SIGNAL \wiring_THE_nPC|Mux17~1_combout\ : std_logic;
SIGNAL \wiring_THE_nPC|wiringB|bit16to31|bit0to7|bit0123|bit01|bit0|cout~0_combout\ : std_logic;
SIGNAL \wiring_THE_nPC|Mux17~0_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Mux14~3_combout\ : std_logic;
SIGNAL \wiring_THE_nPC|Mux17~2_combout\ : std_logic;
SIGNAL \wiring_THE_nPC|wiringB|bit16to31|bit0to7|bit0123|bit01|bit1|cout~0_combout\ : std_logic;
SIGNAL \wiring_THE_nPC|Mux18~0_combout\ : std_logic;
SIGNAL \wiring_THE_nPC|Mux18~1_combout\ : std_logic;
SIGNAL \wiring_THE_nPC|Mux18~2_combout\ : std_logic;
SIGNAL \wiring_THE_nPC|wiringB|bit16to31|bit0to7|bit0123|bit23|bit0|cout~0_combout\ : std_logic;
SIGNAL \wiring_THE_nPC|Mux19~0_combout\ : std_logic;
SIGNAL \wiring_THE_nPC|Mux19~1_combout\ : std_logic;
SIGNAL \wiring_THE_nPC|Mux20~1_combout\ : std_logic;
SIGNAL \wiring_THE_nPC|wiringB|bit16to31|bit0to7|bit0123|bit23|bit1|cout~0_combout\ : std_logic;
SIGNAL \wiring_THE_nPC|Mux20~0_combout\ : std_logic;
SIGNAL \wiring_THE_nPC|Mux20~2_combout\ : std_logic;
SIGNAL \wiring_THE_nPC|Mux21~1_combout\ : std_logic;
SIGNAL \wiring_THE_nPC|wiringB|bit16to31|bit0to7|bit4567|bit01|bit0|cout~0_combout\ : std_logic;
SIGNAL \wiring_THE_nPC|Mux21~0_combout\ : std_logic;
SIGNAL \wiring_THE_nPC|Mux21~2_combout\ : std_logic;
SIGNAL \wiring_THE_nPC|wiringB|bit16to31|bit0to7|bit4567|bit01|bit1|cout~0_combout\ : std_logic;
SIGNAL \wiring_THE_nPC|Mux22~0_combout\ : std_logic;
SIGNAL \wiring_THE_nPC|Mux22~1_combout\ : std_logic;
SIGNAL \wiring_THE_nPC|wiringB|bit16to31|bit0to7|bit4567|bit23|bit0|cout~0_combout\ : std_logic;
SIGNAL \wiring_THE_nPC|Mux23~0_combout\ : std_logic;
SIGNAL \wiring_THE_nPC|Mux23~1_combout\ : std_logic;
SIGNAL \wiring_THE_nPC|Mux23~2_combout\ : std_logic;
SIGNAL \wiring_THE_nPC|wiringB|bit16to31|bit0to7|bit4567|bit23|bit1|cout~0_combout\ : std_logic;
SIGNAL \wiring_THE_nPC|wiringB|bit16to31|bit8toF|bit0123|bit01|bit0|s~0_combout\ : std_logic;
SIGNAL \wiring_THE_nPC|Mux24~0_combout\ : std_logic;
SIGNAL \wiring_THE_nPC|Mux24~1_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Mux6~3_combout\ : std_logic;
SIGNAL \wiring_THE_nPC|wiringB|bit16to31|bit8toF|bit0123|bit01|bit0|cout~0_combout\ : std_logic;
SIGNAL \wiring_THE_nPC|Mux25~0_combout\ : std_logic;
SIGNAL \wiring_THE_nPC|Mux25~1_combout\ : std_logic;
SIGNAL \wiring_THE_nPC|wiringB|bit16to31|bit8toF|bit0123|bit01|bit1|cout~0_combout\ : std_logic;
SIGNAL \wiring_THE_nPC|Mux26~0_combout\ : std_logic;
SIGNAL \wiring_THE_nPC|Mux26~1_combout\ : std_logic;
SIGNAL \wiring_THE_nPC|Mux26~2_combout\ : std_logic;
SIGNAL \wiring_THE_nPC|wiringB|bit16to31|bit8toF|bit0123|bit23|bit0|cout~0_combout\ : std_logic;
SIGNAL \wiring_THE_nPC|Mux27~0_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Mux4~3_combout\ : std_logic;
SIGNAL \wiring_THE_nPC|Mux27~1_combout\ : std_logic;
SIGNAL \wiring_THE_nPC|Mux27~2_combout\ : std_logic;
SIGNAL \wiring_THE_nPC|wiringB|bit16to31|bit8toF|bit0123|bit23|bit1|cout~0_combout\ : std_logic;
SIGNAL \wiring_THE_nPC|Mux28~0_combout\ : std_logic;
SIGNAL \WIRING_THE_ALU|Mux3~3_combout\ : std_logic;
SIGNAL \wiring_THE_nPC|Mux28~1_combout\ : std_logic;
SIGNAL \wiring_THE_nPC|wiringB|bit16to31|bit8toF|bit4567|bit01|bit0|cout~0_combout\ : std_logic;
SIGNAL \wiring_THE_nPC|Mux29~0_combout\ : std_logic;
SIGNAL \wiring_THE_nPC|Mux29~1_combout\ : std_logic;
SIGNAL \wiring_THE_nPC|Mux29~2_combout\ : std_logic;
SIGNAL \wiring_THE_nPC|wiringB|bit16to31|bit8toF|bit4567|bit01|bit1|cout~0_combout\ : std_logic;
SIGNAL \wiring_THE_nPC|Mux30~0_combout\ : std_logic;
SIGNAL \wiring_THE_nPC|Mux30~1_combout\ : std_logic;
SIGNAL \wiring_THE_nPC|Mux30~2_combout\ : std_logic;
SIGNAL \wiring_THE_nPC|Mux31~0_combout\ : std_logic;
SIGNAL \wiring_THE_nPC|Mux31~1_combout\ : std_logic;
SIGNAL \wiring_THE_nPC|Mux31~2_combout\ : std_logic;
SIGNAL \WP[0]~input_o\ : std_logic;
SIGNAL \WP[1]~input_o\ : std_logic;
SIGNAL \WP[2]~input_o\ : std_logic;
SIGNAL \WP[3]~input_o\ : std_logic;
SIGNAL \WP[4]~input_o\ : std_logic;
SIGNAL \PCADDING_1|z\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \PCADDING_1|c\ : std_logic_vector(31 DOWNTO 0);

BEGIN

ww_ALUFunct <= ALUFunct;
ww_BSEL <= BSEL;
ww_ASEL <= ASEL;
ww_WDSEL <= WDSEL;
ww_PCSEL <= PCSEL;
ww_WP <= WP;
ww_immI <= immI;
ww_immS_B <= immS_B;
ww_immU_J <= immU_J;
ww_Memo_READ_Data <= Memo_READ_Data;
Memory_Address <= ww_Memory_Address;
Memory_WriteData <= ww_Memory_WriteData;
ww_rs1 <= rs1;
ww_rs2 <= rs2;
rd_port <= ww_rd_port;
WB_to_rd <= ww_WB_to_rd;
ww_PC <= PC;
CacheMISS_stopFetch <= ww_CacheMISS_stopFetch;
WB_nextPC <= ww_WB_nextPC;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X90_Y91_N16
\WB_to_rd[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~1_combout\,
	oe => \Mux33~0_combout\,
	devoe => ww_devoe,
	o => \WB_to_rd[0]~output_o\);

-- Location: IOOBUF_X106_Y91_N16
\WB_to_rd[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~1_combout\,
	oe => \Mux33~0_combout\,
	devoe => ww_devoe,
	o => \WB_to_rd[1]~output_o\);

-- Location: IOOBUF_X72_Y91_N2
\WB_to_rd[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~2_combout\,
	oe => \Mux33~0_combout\,
	devoe => ww_devoe,
	o => \WB_to_rd[2]~output_o\);

-- Location: IOOBUF_X117_Y72_N2
\WB_to_rd[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~1_combout\,
	oe => \Mux33~0_combout\,
	devoe => ww_devoe,
	o => \WB_to_rd[3]~output_o\);

-- Location: IOOBUF_X117_Y7_N9
\WB_to_rd[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~1_combout\,
	oe => \Mux33~0_combout\,
	devoe => ww_devoe,
	o => \WB_to_rd[4]~output_o\);

-- Location: IOOBUF_X104_Y0_N23
\WB_to_rd[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~2_combout\,
	oe => \Mux33~0_combout\,
	devoe => ww_devoe,
	o => \WB_to_rd[5]~output_o\);

-- Location: IOOBUF_X117_Y24_N2
\WB_to_rd[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux7~1_combout\,
	oe => \Mux33~0_combout\,
	devoe => ww_devoe,
	o => \WB_to_rd[6]~output_o\);

-- Location: IOOBUF_X75_Y0_N16
\WB_to_rd[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux8~1_combout\,
	oe => \Mux33~0_combout\,
	devoe => ww_devoe,
	o => \WB_to_rd[7]~output_o\);

-- Location: IOOBUF_X79_Y91_N23
\WB_to_rd[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux9~2_combout\,
	oe => \Mux33~0_combout\,
	devoe => ww_devoe,
	o => \WB_to_rd[8]~output_o\);

-- Location: IOOBUF_X117_Y34_N9
\WB_to_rd[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux10~1_combout\,
	oe => \Mux33~0_combout\,
	devoe => ww_devoe,
	o => \WB_to_rd[9]~output_o\);

-- Location: IOOBUF_X117_Y31_N2
\WB_to_rd[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux11~1_combout\,
	oe => \Mux33~0_combout\,
	devoe => ww_devoe,
	o => \WB_to_rd[10]~output_o\);

-- Location: IOOBUF_X92_Y0_N23
\WB_to_rd[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux12~2_combout\,
	oe => \Mux33~0_combout\,
	devoe => ww_devoe,
	o => \WB_to_rd[11]~output_o\);

-- Location: IOOBUF_X117_Y18_N2
\WB_to_rd[12]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux13~1_combout\,
	oe => \Mux33~0_combout\,
	devoe => ww_devoe,
	o => \WB_to_rd[12]~output_o\);

-- Location: IOOBUF_X117_Y55_N9
\WB_to_rd[13]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux14~1_combout\,
	oe => \Mux33~0_combout\,
	devoe => ww_devoe,
	o => \WB_to_rd[13]~output_o\);

-- Location: IOOBUF_X77_Y91_N23
\WB_to_rd[14]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux15~2_combout\,
	oe => \Mux33~0_combout\,
	devoe => ww_devoe,
	o => \WB_to_rd[14]~output_o\);

-- Location: IOOBUF_X117_Y15_N9
\WB_to_rd[15]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux16~1_combout\,
	oe => \Mux33~0_combout\,
	devoe => ww_devoe,
	o => \WB_to_rd[15]~output_o\);

-- Location: IOOBUF_X117_Y44_N9
\WB_to_rd[16]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux17~1_combout\,
	oe => \Mux33~0_combout\,
	devoe => ww_devoe,
	o => \WB_to_rd[16]~output_o\);

-- Location: IOOBUF_X117_Y74_N9
\WB_to_rd[17]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux18~2_combout\,
	oe => \Mux33~0_combout\,
	devoe => ww_devoe,
	o => \WB_to_rd[17]~output_o\);

-- Location: IOOBUF_X101_Y91_N9
\WB_to_rd[18]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux19~1_combout\,
	oe => \Mux33~0_combout\,
	devoe => ww_devoe,
	o => \WB_to_rd[18]~output_o\);

-- Location: IOOBUF_X117_Y67_N9
\WB_to_rd[19]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux20~1_combout\,
	oe => \Mux33~0_combout\,
	devoe => ww_devoe,
	o => \WB_to_rd[19]~output_o\);

-- Location: IOOBUF_X75_Y91_N9
\WB_to_rd[20]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux21~2_combout\,
	oe => \Mux33~0_combout\,
	devoe => ww_devoe,
	o => \WB_to_rd[20]~output_o\);

-- Location: IOOBUF_X117_Y70_N9
\WB_to_rd[21]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux22~1_combout\,
	oe => \Mux33~0_combout\,
	devoe => ww_devoe,
	o => \WB_to_rd[21]~output_o\);

-- Location: IOOBUF_X77_Y0_N16
\WB_to_rd[22]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux23~1_combout\,
	oe => \Mux33~0_combout\,
	devoe => ww_devoe,
	o => \WB_to_rd[22]~output_o\);

-- Location: IOOBUF_X111_Y91_N23
\WB_to_rd[23]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux24~2_combout\,
	oe => \Mux33~0_combout\,
	devoe => ww_devoe,
	o => \WB_to_rd[23]~output_o\);

-- Location: IOOBUF_X90_Y91_N23
\WB_to_rd[24]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux25~1_combout\,
	oe => \Mux33~0_combout\,
	devoe => ww_devoe,
	o => \WB_to_rd[24]~output_o\);

-- Location: IOOBUF_X106_Y91_N2
\WB_to_rd[25]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux26~2_combout\,
	oe => \Mux33~0_combout\,
	devoe => ww_devoe,
	o => \WB_to_rd[25]~output_o\);

-- Location: IOOBUF_X75_Y0_N23
\WB_to_rd[26]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux27~2_combout\,
	oe => \Mux33~0_combout\,
	devoe => ww_devoe,
	o => \WB_to_rd[26]~output_o\);

-- Location: IOOBUF_X77_Y0_N23
\WB_to_rd[27]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux28~2_combout\,
	oe => \Mux33~0_combout\,
	devoe => ww_devoe,
	o => \WB_to_rd[27]~output_o\);

-- Location: IOOBUF_X117_Y84_N2
\WB_to_rd[28]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux29~2_combout\,
	oe => \Mux33~0_combout\,
	devoe => ww_devoe,
	o => \WB_to_rd[28]~output_o\);

-- Location: IOOBUF_X97_Y91_N9
\WB_to_rd[29]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux30~4_combout\,
	oe => \Mux33~0_combout\,
	devoe => ww_devoe,
	o => \WB_to_rd[29]~output_o\);

-- Location: IOOBUF_X77_Y91_N9
\WB_to_rd[30]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux31~5_combout\,
	oe => \Mux33~0_combout\,
	devoe => ww_devoe,
	o => \WB_to_rd[30]~output_o\);

-- Location: IOOBUF_X77_Y91_N2
\WB_to_rd[31]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux32~2_combout\,
	oe => \Mux33~0_combout\,
	devoe => ww_devoe,
	o => \WB_to_rd[31]~output_o\);

-- Location: IOOBUF_X117_Y77_N9
\WB_nextPC[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \wiring_THE_nPC|Mux0~1_combout\,
	oe => \wiring_THE_nPC|Mux32~0_combout\,
	devoe => ww_devoe,
	o => \WB_nextPC[0]~output_o\);

-- Location: IOOBUF_X82_Y91_N2
\WB_nextPC[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \wiring_THE_nPC|Mux1~1_combout\,
	oe => \wiring_THE_nPC|Mux32~0_combout\,
	devoe => ww_devoe,
	o => \WB_nextPC[1]~output_o\);

-- Location: IOOBUF_X108_Y91_N9
\WB_nextPC[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \wiring_THE_nPC|Mux2~2_combout\,
	oe => \wiring_THE_nPC|Mux32~0_combout\,
	devoe => ww_devoe,
	o => \WB_nextPC[2]~output_o\);

-- Location: IOOBUF_X117_Y80_N9
\WB_nextPC[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \wiring_THE_nPC|Mux3~1_combout\,
	oe => \wiring_THE_nPC|Mux32~0_combout\,
	devoe => ww_devoe,
	o => \WB_nextPC[3]~output_o\);

-- Location: IOOBUF_X117_Y7_N2
\WB_nextPC[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \wiring_THE_nPC|Mux4~1_combout\,
	oe => \wiring_THE_nPC|Mux32~0_combout\,
	devoe => ww_devoe,
	o => \WB_nextPC[4]~output_o\);

-- Location: IOOBUF_X117_Y38_N2
\WB_nextPC[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \wiring_THE_nPC|Mux5~2_combout\,
	oe => \wiring_THE_nPC|Mux32~0_combout\,
	devoe => ww_devoe,
	o => \WB_nextPC[5]~output_o\);

-- Location: IOOBUF_X99_Y0_N16
\WB_nextPC[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \wiring_THE_nPC|Mux6~5_combout\,
	oe => \wiring_THE_nPC|Mux32~0_combout\,
	devoe => ww_devoe,
	o => \WB_nextPC[6]~output_o\);

-- Location: IOOBUF_X70_Y0_N16
\WB_nextPC[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \wiring_THE_nPC|Mux7~1_combout\,
	oe => \wiring_THE_nPC|Mux32~0_combout\,
	devoe => ww_devoe,
	o => \WB_nextPC[7]~output_o\);

-- Location: IOOBUF_X117_Y49_N2
\WB_nextPC[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \wiring_THE_nPC|Mux8~2_combout\,
	oe => \wiring_THE_nPC|Mux32~0_combout\,
	devoe => ww_devoe,
	o => \WB_nextPC[8]~output_o\);

-- Location: IOOBUF_X104_Y0_N16
\WB_nextPC[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \wiring_THE_nPC|Mux9~3_combout\,
	oe => \wiring_THE_nPC|Mux32~0_combout\,
	devoe => ww_devoe,
	o => \WB_nextPC[9]~output_o\);

-- Location: IOOBUF_X117_Y14_N2
\WB_nextPC[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \wiring_THE_nPC|Mux10~1_combout\,
	oe => \wiring_THE_nPC|Mux32~0_combout\,
	devoe => ww_devoe,
	o => \WB_nextPC[10]~output_o\);

-- Location: IOOBUF_X117_Y27_N2
\WB_nextPC[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \wiring_THE_nPC|Mux11~2_combout\,
	oe => \wiring_THE_nPC|Mux32~0_combout\,
	devoe => ww_devoe,
	o => \WB_nextPC[11]~output_o\);

-- Location: IOOBUF_X117_Y22_N2
\WB_nextPC[12]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \wiring_THE_nPC|Mux12~1_combout\,
	oe => \wiring_THE_nPC|Mux32~0_combout\,
	devoe => ww_devoe,
	o => \WB_nextPC[12]~output_o\);

-- Location: IOOBUF_X95_Y0_N9
\WB_nextPC[13]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \wiring_THE_nPC|Mux13~1_combout\,
	oe => \wiring_THE_nPC|Mux32~0_combout\,
	devoe => ww_devoe,
	o => \WB_nextPC[13]~output_o\);

-- Location: IOOBUF_X95_Y0_N16
\WB_nextPC[14]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \wiring_THE_nPC|Mux14~2_combout\,
	oe => \wiring_THE_nPC|Mux32~0_combout\,
	devoe => ww_devoe,
	o => \WB_nextPC[14]~output_o\);

-- Location: IOOBUF_X88_Y0_N2
\WB_nextPC[15]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \wiring_THE_nPC|Mux15~2_combout\,
	oe => \wiring_THE_nPC|Mux32~0_combout\,
	devoe => ww_devoe,
	o => \WB_nextPC[15]~output_o\);

-- Location: IOOBUF_X88_Y0_N9
\WB_nextPC[16]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \wiring_THE_nPC|Mux16~1_combout\,
	oe => \wiring_THE_nPC|Mux32~0_combout\,
	devoe => ww_devoe,
	o => \WB_nextPC[16]~output_o\);

-- Location: IOOBUF_X84_Y0_N16
\WB_nextPC[17]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \wiring_THE_nPC|Mux17~2_combout\,
	oe => \wiring_THE_nPC|Mux32~0_combout\,
	devoe => ww_devoe,
	o => \WB_nextPC[17]~output_o\);

-- Location: IOOBUF_X88_Y91_N9
\WB_nextPC[18]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \wiring_THE_nPC|Mux18~2_combout\,
	oe => \wiring_THE_nPC|Mux32~0_combout\,
	devoe => ww_devoe,
	o => \WB_nextPC[18]~output_o\);

-- Location: IOOBUF_X90_Y91_N2
\WB_nextPC[19]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \wiring_THE_nPC|Mux19~1_combout\,
	oe => \wiring_THE_nPC|Mux32~0_combout\,
	devoe => ww_devoe,
	o => \WB_nextPC[19]~output_o\);

-- Location: IOOBUF_X113_Y91_N16
\WB_nextPC[20]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \wiring_THE_nPC|Mux20~2_combout\,
	oe => \wiring_THE_nPC|Mux32~0_combout\,
	devoe => ww_devoe,
	o => \WB_nextPC[20]~output_o\);

-- Location: IOOBUF_X108_Y91_N16
\WB_nextPC[21]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \wiring_THE_nPC|Mux21~2_combout\,
	oe => \wiring_THE_nPC|Mux32~0_combout\,
	devoe => ww_devoe,
	o => \WB_nextPC[21]~output_o\);

-- Location: IOOBUF_X111_Y91_N9
\WB_nextPC[22]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \wiring_THE_nPC|Mux22~1_combout\,
	oe => \wiring_THE_nPC|Mux32~0_combout\,
	devoe => ww_devoe,
	o => \WB_nextPC[22]~output_o\);

-- Location: IOOBUF_X92_Y91_N23
\WB_nextPC[23]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \wiring_THE_nPC|Mux23~2_combout\,
	oe => \wiring_THE_nPC|Mux32~0_combout\,
	devoe => ww_devoe,
	o => \WB_nextPC[23]~output_o\);

-- Location: IOOBUF_X117_Y70_N2
\WB_nextPC[24]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \wiring_THE_nPC|Mux24~1_combout\,
	oe => \wiring_THE_nPC|Mux32~0_combout\,
	devoe => ww_devoe,
	o => \WB_nextPC[24]~output_o\);

-- Location: IOOBUF_X117_Y65_N9
\WB_nextPC[25]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \wiring_THE_nPC|Mux25~1_combout\,
	oe => \wiring_THE_nPC|Mux32~0_combout\,
	devoe => ww_devoe,
	o => \WB_nextPC[25]~output_o\);

-- Location: IOOBUF_X117_Y72_N9
\WB_nextPC[26]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \wiring_THE_nPC|Mux26~2_combout\,
	oe => \wiring_THE_nPC|Mux32~0_combout\,
	devoe => ww_devoe,
	o => \WB_nextPC[26]~output_o\);

-- Location: IOOBUF_X117_Y65_N2
\WB_nextPC[27]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \wiring_THE_nPC|Mux27~2_combout\,
	oe => \wiring_THE_nPC|Mux32~0_combout\,
	devoe => ww_devoe,
	o => \WB_nextPC[27]~output_o\);

-- Location: IOOBUF_X77_Y91_N16
\WB_nextPC[28]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \wiring_THE_nPC|Mux28~1_combout\,
	oe => \wiring_THE_nPC|Mux32~0_combout\,
	devoe => ww_devoe,
	o => \WB_nextPC[28]~output_o\);

-- Location: IOOBUF_X117_Y66_N2
\WB_nextPC[29]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \wiring_THE_nPC|Mux29~2_combout\,
	oe => \wiring_THE_nPC|Mux32~0_combout\,
	devoe => ww_devoe,
	o => \WB_nextPC[29]~output_o\);

-- Location: IOOBUF_X99_Y91_N16
\WB_nextPC[30]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \wiring_THE_nPC|Mux30~2_combout\,
	oe => \wiring_THE_nPC|Mux32~0_combout\,
	devoe => ww_devoe,
	o => \WB_nextPC[30]~output_o\);

-- Location: IOOBUF_X72_Y91_N9
\WB_nextPC[31]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \wiring_THE_nPC|Mux31~2_combout\,
	oe => \wiring_THE_nPC|Mux32~0_combout\,
	devoe => ww_devoe,
	o => \WB_nextPC[31]~output_o\);

-- Location: IOOBUF_X117_Y76_N9
\Memory_Address[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WIRING_THE_ALU|Mux31~4_combout\,
	devoe => ww_devoe,
	o => \Memory_Address[0]~output_o\);

-- Location: IOOBUF_X79_Y91_N2
\Memory_Address[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WIRING_THE_ALU|Mux30~3_combout\,
	devoe => ww_devoe,
	o => \Memory_Address[1]~output_o\);

-- Location: IOOBUF_X106_Y91_N9
\Memory_Address[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WIRING_THE_ALU|Mux29~3_combout\,
	devoe => ww_devoe,
	o => \Memory_Address[2]~output_o\);

-- Location: IOOBUF_X53_Y91_N16
\Memory_Address[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WIRING_THE_ALU|Mux28~3_combout\,
	devoe => ww_devoe,
	o => \Memory_Address[3]~output_o\);

-- Location: IOOBUF_X117_Y35_N9
\Memory_Address[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WIRING_THE_ALU|Mux27~3_combout\,
	devoe => ww_devoe,
	o => \Memory_Address[4]~output_o\);

-- Location: IOOBUF_X117_Y28_N2
\Memory_Address[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WIRING_THE_ALU|Mux26~3_combout\,
	devoe => ww_devoe,
	o => \Memory_Address[5]~output_o\);

-- Location: IOOBUF_X117_Y23_N9
\Memory_Address[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WIRING_THE_ALU|Mux25~3_combout\,
	devoe => ww_devoe,
	o => \Memory_Address[6]~output_o\);

-- Location: IOOBUF_X117_Y49_N9
\Memory_Address[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WIRING_THE_ALU|Mux24~3_combout\,
	devoe => ww_devoe,
	o => \Memory_Address[7]~output_o\);

-- Location: IOOBUF_X117_Y53_N9
\Memory_Address[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WIRING_THE_ALU|Mux23~3_combout\,
	devoe => ww_devoe,
	o => \Memory_Address[8]~output_o\);

-- Location: IOOBUF_X117_Y29_N2
\Memory_Address[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WIRING_THE_ALU|Mux22~3_combout\,
	devoe => ww_devoe,
	o => \Memory_Address[9]~output_o\);

-- Location: IOOBUF_X84_Y0_N9
\Memory_Address[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WIRING_THE_ALU|Mux21~3_combout\,
	devoe => ww_devoe,
	o => \Memory_Address[10]~output_o\);

-- Location: IOOBUF_X117_Y29_N9
\Memory_Address[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WIRING_THE_ALU|Mux20~3_combout\,
	devoe => ww_devoe,
	o => \Memory_Address[11]~output_o\);

-- Location: IOOBUF_X97_Y0_N9
\Memory_Address[12]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WIRING_THE_ALU|Mux19~3_combout\,
	devoe => ww_devoe,
	o => \Memory_Address[12]~output_o\);

-- Location: IOOBUF_X117_Y44_N2
\Memory_Address[13]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WIRING_THE_ALU|Mux18~3_combout\,
	devoe => ww_devoe,
	o => \Memory_Address[13]~output_o\);

-- Location: IOOBUF_X117_Y67_N2
\Memory_Address[14]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WIRING_THE_ALU|Mux17~3_combout\,
	devoe => ww_devoe,
	o => \Memory_Address[14]~output_o\);

-- Location: IOOBUF_X117_Y32_N9
\Memory_Address[15]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WIRING_THE_ALU|Mux16~3_combout\,
	devoe => ww_devoe,
	o => \Memory_Address[15]~output_o\);

-- Location: IOOBUF_X82_Y0_N2
\Memory_Address[16]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WIRING_THE_ALU|Mux15~3_combout\,
	devoe => ww_devoe,
	o => \Memory_Address[16]~output_o\);

-- Location: IOOBUF_X117_Y52_N2
\Memory_Address[17]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WIRING_THE_ALU|Mux14~3_combout\,
	devoe => ww_devoe,
	o => \Memory_Address[17]~output_o\);

-- Location: IOOBUF_X117_Y54_N9
\Memory_Address[18]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WIRING_THE_ALU|Mux13~3_combout\,
	devoe => ww_devoe,
	o => \Memory_Address[18]~output_o\);

-- Location: IOOBUF_X117_Y60_N2
\Memory_Address[19]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WIRING_THE_ALU|Mux12~4_combout\,
	devoe => ww_devoe,
	o => \Memory_Address[19]~output_o\);

-- Location: IOOBUF_X28_Y91_N23
\Memory_Address[20]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WIRING_THE_ALU|Mux11~3_combout\,
	devoe => ww_devoe,
	o => \Memory_Address[20]~output_o\);

-- Location: IOOBUF_X117_Y78_N2
\Memory_Address[21]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WIRING_THE_ALU|Mux10~3_combout\,
	devoe => ww_devoe,
	o => \Memory_Address[21]~output_o\);

-- Location: IOOBUF_X95_Y91_N16
\Memory_Address[22]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WIRING_THE_ALU|Mux9~3_combout\,
	devoe => ww_devoe,
	o => \Memory_Address[22]~output_o\);

-- Location: IOOBUF_X117_Y60_N9
\Memory_Address[23]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WIRING_THE_ALU|Mux8~3_combout\,
	devoe => ww_devoe,
	o => \Memory_Address[23]~output_o\);

-- Location: IOOBUF_X99_Y91_N23
\Memory_Address[24]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WIRING_THE_ALU|Mux7~3_combout\,
	devoe => ww_devoe,
	o => \Memory_Address[24]~output_o\);

-- Location: IOOBUF_X53_Y91_N9
\Memory_Address[25]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WIRING_THE_ALU|Mux6~3_combout\,
	devoe => ww_devoe,
	o => \Memory_Address[25]~output_o\);

-- Location: IOOBUF_X117_Y76_N2
\Memory_Address[26]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WIRING_THE_ALU|Mux5~3_combout\,
	devoe => ww_devoe,
	o => \Memory_Address[26]~output_o\);

-- Location: IOOBUF_X117_Y73_N9
\Memory_Address[27]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WIRING_THE_ALU|Mux4~3_combout\,
	devoe => ww_devoe,
	o => \Memory_Address[27]~output_o\);

-- Location: IOOBUF_X39_Y91_N2
\Memory_Address[28]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WIRING_THE_ALU|Mux3~3_combout\,
	devoe => ww_devoe,
	o => \Memory_Address[28]~output_o\);

-- Location: IOOBUF_X68_Y91_N2
\Memory_Address[29]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WIRING_THE_ALU|Mux2~3_combout\,
	devoe => ww_devoe,
	o => \Memory_Address[29]~output_o\);

-- Location: IOOBUF_X63_Y91_N9
\Memory_Address[30]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WIRING_THE_ALU|Mux1~3_combout\,
	devoe => ww_devoe,
	o => \Memory_Address[30]~output_o\);

-- Location: IOOBUF_X117_Y84_N9
\Memory_Address[31]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WIRING_THE_ALU|Mux0~3_combout\,
	devoe => ww_devoe,
	o => \Memory_Address[31]~output_o\);

-- Location: IOOBUF_X34_Y0_N16
\Memory_WriteData[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rs2[0]~input_o\,
	devoe => ww_devoe,
	o => \Memory_WriteData[0]~output_o\);

-- Location: IOOBUF_X113_Y91_N2
\Memory_WriteData[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rs2[1]~input_o\,
	devoe => ww_devoe,
	o => \Memory_WriteData[1]~output_o\);

-- Location: IOOBUF_X117_Y83_N9
\Memory_WriteData[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rs2[2]~input_o\,
	devoe => ww_devoe,
	o => \Memory_WriteData[2]~output_o\);

-- Location: IOOBUF_X117_Y86_N2
\Memory_WriteData[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rs2[3]~input_o\,
	devoe => ww_devoe,
	o => \Memory_WriteData[3]~output_o\);

-- Location: IOOBUF_X106_Y0_N9
\Memory_WriteData[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rs2[4]~input_o\,
	devoe => ww_devoe,
	o => \Memory_WriteData[4]~output_o\);

-- Location: IOOBUF_X117_Y14_N9
\Memory_WriteData[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rs2[5]~input_o\,
	devoe => ww_devoe,
	o => \Memory_WriteData[5]~output_o\);

-- Location: IOOBUF_X117_Y19_N2
\Memory_WriteData[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rs2[6]~input_o\,
	devoe => ww_devoe,
	o => \Memory_WriteData[6]~output_o\);

-- Location: IOOBUF_X117_Y13_N2
\Memory_WriteData[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rs2[7]~input_o\,
	devoe => ww_devoe,
	o => \Memory_WriteData[7]~output_o\);

-- Location: IOOBUF_X111_Y91_N2
\Memory_WriteData[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rs2[8]~input_o\,
	devoe => ww_devoe,
	o => \Memory_WriteData[8]~output_o\);

-- Location: IOOBUF_X117_Y10_N9
\Memory_WriteData[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rs2[9]~input_o\,
	devoe => ww_devoe,
	o => \Memory_WriteData[9]~output_o\);

-- Location: IOOBUF_X21_Y91_N16
\Memory_WriteData[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rs2[10]~input_o\,
	devoe => ww_devoe,
	o => \Memory_WriteData[10]~output_o\);

-- Location: IOOBUF_X44_Y0_N2
\Memory_WriteData[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rs2[11]~input_o\,
	devoe => ww_devoe,
	o => \Memory_WriteData[11]~output_o\);

-- Location: IOOBUF_X108_Y91_N23
\Memory_WriteData[12]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rs2[12]~input_o\,
	devoe => ww_devoe,
	o => \Memory_WriteData[12]~output_o\);

-- Location: IOOBUF_X117_Y10_N2
\Memory_WriteData[13]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rs2[13]~input_o\,
	devoe => ww_devoe,
	o => \Memory_WriteData[13]~output_o\);

-- Location: IOOBUF_X111_Y0_N2
\Memory_WriteData[14]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rs2[14]~input_o\,
	devoe => ww_devoe,
	o => \Memory_WriteData[14]~output_o\);

-- Location: IOOBUF_X82_Y0_N16
\Memory_WriteData[15]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rs2[15]~input_o\,
	devoe => ww_devoe,
	o => \Memory_WriteData[15]~output_o\);

-- Location: IOOBUF_X26_Y0_N9
\Memory_WriteData[16]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rs2[16]~input_o\,
	devoe => ww_devoe,
	o => \Memory_WriteData[16]~output_o\);

-- Location: IOOBUF_X28_Y91_N16
\Memory_WriteData[17]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rs2[17]~input_o\,
	devoe => ww_devoe,
	o => \Memory_WriteData[17]~output_o\);

-- Location: IOOBUF_X106_Y0_N16
\Memory_WriteData[18]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rs2[18]~input_o\,
	devoe => ww_devoe,
	o => \Memory_WriteData[18]~output_o\);

-- Location: IOOBUF_X41_Y0_N23
\Memory_WriteData[19]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rs2[19]~input_o\,
	devoe => ww_devoe,
	o => \Memory_WriteData[19]~output_o\);

-- Location: IOOBUF_X32_Y0_N9
\Memory_WriteData[20]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rs2[20]~input_o\,
	devoe => ww_devoe,
	o => \Memory_WriteData[20]~output_o\);

-- Location: IOOBUF_X39_Y0_N9
\Memory_WriteData[21]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rs2[21]~input_o\,
	devoe => ww_devoe,
	o => \Memory_WriteData[21]~output_o\);

-- Location: IOOBUF_X21_Y91_N9
\Memory_WriteData[22]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rs2[22]~input_o\,
	devoe => ww_devoe,
	o => \Memory_WriteData[22]~output_o\);

-- Location: IOOBUF_X37_Y0_N23
\Memory_WriteData[23]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rs2[23]~input_o\,
	devoe => ww_devoe,
	o => \Memory_WriteData[23]~output_o\);

-- Location: IOOBUF_X34_Y0_N2
\Memory_WriteData[24]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rs2[24]~input_o\,
	devoe => ww_devoe,
	o => \Memory_WriteData[24]~output_o\);

-- Location: IOOBUF_X44_Y0_N16
\Memory_WriteData[25]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rs2[25]~input_o\,
	devoe => ww_devoe,
	o => \Memory_WriteData[25]~output_o\);

-- Location: IOOBUF_X39_Y0_N2
\Memory_WriteData[26]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rs2[26]~input_o\,
	devoe => ww_devoe,
	o => \Memory_WriteData[26]~output_o\);

-- Location: IOOBUF_X26_Y91_N9
\Memory_WriteData[27]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rs2[27]~input_o\,
	devoe => ww_devoe,
	o => \Memory_WriteData[27]~output_o\);

-- Location: IOOBUF_X37_Y0_N2
\Memory_WriteData[28]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rs2[28]~input_o\,
	devoe => ww_devoe,
	o => \Memory_WriteData[28]~output_o\);

-- Location: IOOBUF_X104_Y0_N9
\Memory_WriteData[29]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rs2[29]~input_o\,
	devoe => ww_devoe,
	o => \Memory_WriteData[29]~output_o\);

-- Location: IOOBUF_X24_Y91_N9
\Memory_WriteData[30]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rs2[30]~input_o\,
	devoe => ww_devoe,
	o => \Memory_WriteData[30]~output_o\);

-- Location: IOOBUF_X39_Y0_N23
\Memory_WriteData[31]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rs2[31]~input_o\,
	devoe => ww_devoe,
	o => \Memory_WriteData[31]~output_o\);

-- Location: IOOBUF_X113_Y91_N23
\rd_port[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WP[0]~input_o\,
	devoe => ww_devoe,
	o => \rd_port[0]~output_o\);

-- Location: IOOBUF_X10_Y91_N2
\rd_port[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WP[1]~input_o\,
	devoe => ww_devoe,
	o => \rd_port[1]~output_o\);

-- Location: IOOBUF_X113_Y0_N16
\rd_port[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WP[2]~input_o\,
	devoe => ww_devoe,
	o => \rd_port[2]~output_o\);

-- Location: IOOBUF_X113_Y0_N23
\rd_port[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WP[3]~input_o\,
	devoe => ww_devoe,
	o => \rd_port[3]~output_o\);

-- Location: IOOBUF_X17_Y91_N16
\rd_port[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WP[4]~input_o\,
	devoe => ww_devoe,
	o => \rd_port[4]~output_o\);

-- Location: IOOBUF_X17_Y0_N16
\CacheMISS_stopFetch~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \CacheMISS_stopFetch~output_o\);

-- Location: IOIBUF_X117_Y74_N1
\Memo_READ_Data[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Memo_READ_Data(0),
	o => \Memo_READ_Data[0]~input_o\);

-- Location: IOIBUF_X117_Y48_N8
\WDSEL[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WDSEL(1),
	o => \WDSEL[1]~input_o\);

-- Location: IOIBUF_X84_Y0_N22
\WDSEL[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WDSEL(0),
	o => \WDSEL[0]~input_o\);

-- Location: IOIBUF_X117_Y46_N22
\PC[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(0),
	o => \PC[0]~input_o\);

-- Location: IOIBUF_X66_Y91_N1
\immI[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immI(0),
	o => \immI[0]~input_o\);

-- Location: IOIBUF_X117_Y61_N1
\BSEL[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BSEL(1),
	o => \BSEL[1]~input_o\);

-- Location: IOIBUF_X117_Y77_N1
\BSEL[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BSEL(2),
	o => \BSEL[2]~input_o\);

-- Location: LCCOMB_X70_Y61_N0
\Mux37~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux37~0_combout\ = (\BSEL[1]~input_o\) # (\BSEL[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BSEL[1]~input_o\,
	datac => \BSEL[2]~input_o\,
	combout => \Mux37~0_combout\);

-- Location: IOIBUF_X117_Y46_N15
\BSEL[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BSEL(0),
	o => \BSEL[0]~input_o\);

-- Location: LCCOMB_X70_Y61_N26
\Mux37~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux37~1_combout\ = (\BSEL[2]~input_o\) # ((!\BSEL[0]~input_o\ & \BSEL[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BSEL[0]~input_o\,
	datab => \BSEL[1]~input_o\,
	datac => \BSEL[2]~input_o\,
	combout => \Mux37~1_combout\);

-- Location: LCCOMB_X70_Y61_N12
\Mux37~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux37~2_combout\ = (\BSEL[2]~input_o\) # ((\BSEL[0]~input_o\ & !\BSEL[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BSEL[0]~input_o\,
	datab => \BSEL[1]~input_o\,
	datac => \BSEL[2]~input_o\,
	combout => \Mux37~2_combout\);

-- Location: IOIBUF_X90_Y91_N8
\immS_B[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immS_B(0),
	o => \immS_B[0]~input_o\);

-- Location: LCCOMB_X86_Y59_N8
\Mux0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\Mux37~1_combout\ & ((\Mux37~2_combout\ & ((\PC[0]~input_o\))) # (!\Mux37~2_combout\ & (\immS_B[0]~input_o\)))) # (!\Mux37~1_combout\ & (\Mux37~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux37~1_combout\,
	datab => \Mux37~2_combout\,
	datac => \immS_B[0]~input_o\,
	datad => \PC[0]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: IOIBUF_X32_Y0_N15
\rs2[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rs2(0),
	o => \rs2[0]~input_o\);

-- Location: LCCOMB_X70_Y55_N24
Mux0 : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux0~combout\ = (\Mux37~0_combout\ & (((\Mux0~0_combout\)))) # (!\Mux37~0_combout\ & ((\Mux0~0_combout\ & (\immI[0]~input_o\)) # (!\Mux0~0_combout\ & ((\rs2[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \immI[0]~input_o\,
	datab => \Mux37~0_combout\,
	datac => \Mux0~0_combout\,
	datad => \rs2[0]~input_o\,
	combout => \Mux0~combout\);

-- Location: IOIBUF_X117_Y59_N8
\ASEL~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ASEL,
	o => \ASEL~input_o\);

-- Location: IOIBUF_X30_Y91_N8
\rs1[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rs1(0),
	o => \rs1[0]~input_o\);

-- Location: IOIBUF_X53_Y91_N1
\immU_J[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immU_J(0),
	o => \immU_J[0]~input_o\);

-- Location: LCCOMB_X67_Y59_N16
\A[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \A[0]~0_combout\ = (\ASEL~input_o\ & ((\immU_J[0]~input_o\))) # (!\ASEL~input_o\ & (\rs1[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ASEL~input_o\,
	datac => \rs1[0]~input_o\,
	datad => \immU_J[0]~input_o\,
	combout => \A[0]~0_combout\);

-- Location: IOIBUF_X66_Y91_N15
\ALUFunct[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALUFunct(0),
	o => \ALUFunct[0]~input_o\);

-- Location: IOIBUF_X117_Y57_N8
\ALUFunct[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALUFunct(2),
	o => \ALUFunct[2]~input_o\);

-- Location: IOIBUF_X61_Y91_N8
\immU_J[31]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immU_J(31),
	o => \immU_J[31]~input_o\);

-- Location: IOIBUF_X117_Y79_N1
\rs1[31]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rs1(31),
	o => \rs1[31]~input_o\);

-- Location: LCCOMB_X68_Y59_N26
\A[31]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \A[31]~7_combout\ = (\ASEL~input_o\ & (\immU_J[31]~input_o\)) # (!\ASEL~input_o\ & ((\rs1[31]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ASEL~input_o\,
	datac => \immU_J[31]~input_o\,
	datad => \rs1[31]~input_o\,
	combout => \A[31]~7_combout\);

-- Location: LCCOMB_X69_Y56_N18
\WIRING_THE_ALU|Shifting|xToIn[31]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|xToIn[31]~5_combout\ = (\ALUFunct[2]~input_o\ & ((\A[31]~7_combout\))) # (!\ALUFunct[2]~input_o\ & (\A[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUFunct[2]~input_o\,
	datab => \A[0]~0_combout\,
	datad => \A[31]~7_combout\,
	combout => \WIRING_THE_ALU|Shifting|xToIn[31]~5_combout\);

-- Location: IOIBUF_X117_Y81_N1
\rs2[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rs2(2),
	o => \rs2[2]~input_o\);

-- Location: IOIBUF_X48_Y0_N22
\immI[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immI(2),
	o => \immI[2]~input_o\);

-- Location: IOIBUF_X101_Y91_N1
\PC[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(2),
	o => \PC[2]~input_o\);

-- Location: IOIBUF_X95_Y91_N22
\immS_B[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immS_B(2),
	o => \immS_B[2]~input_o\);

-- Location: LCCOMB_X67_Y53_N2
\Mux37~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux37~3_combout\ = (\Mux37~1_combout\ & ((\Mux37~2_combout\ & (\PC[2]~input_o\)) # (!\Mux37~2_combout\ & ((\immS_B[2]~input_o\))))) # (!\Mux37~1_combout\ & (((!\Mux37~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[2]~input_o\,
	datab => \Mux37~1_combout\,
	datac => \Mux37~2_combout\,
	datad => \immS_B[2]~input_o\,
	combout => \Mux37~3_combout\);

-- Location: LCCOMB_X67_Y53_N28
Mux37 : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux37~combout\ = (\Mux37~0_combout\ & (((\Mux37~3_combout\)))) # (!\Mux37~0_combout\ & ((\Mux37~3_combout\ & (\rs2[2]~input_o\)) # (!\Mux37~3_combout\ & ((\immI[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs2[2]~input_o\,
	datab => \immI[2]~input_o\,
	datac => \Mux37~0_combout\,
	datad => \Mux37~3_combout\,
	combout => \Mux37~combout\);

-- Location: IOIBUF_X117_Y33_N1
\immI[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immI(4),
	o => \immI[4]~input_o\);

-- Location: IOIBUF_X108_Y0_N1
\rs2[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rs2(4),
	o => \rs2[4]~input_o\);

-- Location: IOIBUF_X117_Y18_N8
\PC[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(4),
	o => \PC[4]~input_o\);

-- Location: IOIBUF_X117_Y41_N8
\immS_B[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immS_B(4),
	o => \immS_B[4]~input_o\);

-- Location: LCCOMB_X93_Y41_N0
\Mux41~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux41~0_combout\ = (\Mux37~1_combout\ & ((\Mux37~2_combout\ & (\PC[4]~input_o\)) # (!\Mux37~2_combout\ & ((\immS_B[4]~input_o\))))) # (!\Mux37~1_combout\ & (\Mux37~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux37~1_combout\,
	datab => \Mux37~2_combout\,
	datac => \PC[4]~input_o\,
	datad => \immS_B[4]~input_o\,
	combout => \Mux41~0_combout\);

-- Location: LCCOMB_X93_Y41_N10
Mux41 : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux41~combout\ = (\Mux37~0_combout\ & (((\Mux41~0_combout\)))) # (!\Mux37~0_combout\ & ((\Mux41~0_combout\ & (\immI[4]~input_o\)) # (!\Mux41~0_combout\ & ((\rs2[4]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \immI[4]~input_o\,
	datab => \Mux37~0_combout\,
	datac => \rs2[4]~input_o\,
	datad => \Mux41~0_combout\,
	combout => \Mux41~combout\);

-- Location: IOIBUF_X61_Y0_N8
\immI[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immI(3),
	o => \immI[3]~input_o\);

-- Location: IOIBUF_X117_Y81_N8
\immS_B[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immS_B(3),
	o => \immS_B[3]~input_o\);

-- Location: IOIBUF_X82_Y91_N8
\PC[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(3),
	o => \PC[3]~input_o\);

-- Location: LCCOMB_X82_Y61_N26
\Mux39~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux39~0_combout\ = (\Mux37~2_combout\ & (\Mux37~1_combout\ & ((\PC[3]~input_o\)))) # (!\Mux37~2_combout\ & (((\immS_B[3]~input_o\)) # (!\Mux37~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux37~2_combout\,
	datab => \Mux37~1_combout\,
	datac => \immS_B[3]~input_o\,
	datad => \PC[3]~input_o\,
	combout => \Mux39~0_combout\);

-- Location: IOIBUF_X117_Y86_N8
\rs2[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rs2(3),
	o => \rs2[3]~input_o\);

-- Location: LCCOMB_X69_Y56_N16
Mux39 : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux39~combout\ = (\Mux39~0_combout\ & (((\Mux37~0_combout\) # (\rs2[3]~input_o\)))) # (!\Mux39~0_combout\ & (\immI[3]~input_o\ & (!\Mux37~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \immI[3]~input_o\,
	datab => \Mux39~0_combout\,
	datac => \Mux37~0_combout\,
	datad => \rs2[3]~input_o\,
	combout => \Mux39~combout\);

-- Location: LCCOMB_X67_Y55_N8
\WIRING_THE_ALU|Shifting|shifting|z[31]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|z[31]~8_combout\ = (!\Mux37~combout\ & (!\Mux41~combout\ & !\Mux39~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux37~combout\,
	datac => \Mux41~combout\,
	datad => \Mux39~combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|z[31]~8_combout\);

-- Location: IOIBUF_X66_Y91_N22
\ALUFunct[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALUFunct(3),
	o => \ALUFunct[3]~input_o\);

-- Location: LCCOMB_X69_Y56_N22
\WIRING_THE_ALU|Shifting|sftIn\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|sftIn~combout\ = (\ALUFunct[2]~input_o\ & (\ALUFunct[3]~input_o\ & \A[31]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUFunct[2]~input_o\,
	datab => \ALUFunct[3]~input_o\,
	datad => \A[31]~7_combout\,
	combout => \WIRING_THE_ALU|Shifting|sftIn~combout\);

-- Location: IOIBUF_X117_Y79_N8
\PC[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(1),
	o => \PC[1]~input_o\);

-- Location: IOIBUF_X86_Y91_N1
\immS_B[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immS_B(1),
	o => \immS_B[1]~input_o\);

-- Location: LCCOMB_X86_Y59_N10
\Mux35~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux35~0_combout\ = (\Mux37~1_combout\ & ((\Mux37~2_combout\ & (\PC[1]~input_o\)) # (!\Mux37~2_combout\ & ((\immS_B[1]~input_o\))))) # (!\Mux37~1_combout\ & (\Mux37~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux37~1_combout\,
	datab => \Mux37~2_combout\,
	datac => \PC[1]~input_o\,
	datad => \immS_B[1]~input_o\,
	combout => \Mux35~0_combout\);

-- Location: IOIBUF_X115_Y91_N8
\rs2[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rs2(1),
	o => \rs2[1]~input_o\);

-- Location: IOIBUF_X117_Y73_N1
\immI[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immI(1),
	o => \immI[1]~input_o\);

-- Location: LCCOMB_X86_Y59_N4
Mux35 : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux35~combout\ = (\Mux35~0_combout\ & (((\Mux37~0_combout\) # (\immI[1]~input_o\)))) # (!\Mux35~0_combout\ & (\rs2[1]~input_o\ & (!\Mux37~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux35~0_combout\,
	datab => \rs2[1]~input_o\,
	datac => \Mux37~0_combout\,
	datad => \immI[1]~input_o\,
	combout => \Mux35~combout\);

-- Location: LCCOMB_X68_Y57_N8
\WIRING_THE_ALU|Shifting|shifting|z[31]~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|z[31]~9_combout\ = (!\Mux0~combout\ & !\Mux35~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux0~combout\,
	datac => \Mux35~combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|z[31]~9_combout\);

-- Location: LCCOMB_X67_Y55_N10
\WIRING_THE_ALU|Shifting|shifting|z[31]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|z[31]~10_combout\ = (\WIRING_THE_ALU|Shifting|shifting|z[31]~8_combout\ & ((\WIRING_THE_ALU|Shifting|shifting|z[31]~9_combout\ & (\WIRING_THE_ALU|Shifting|xToIn[31]~5_combout\)) # 
-- (!\WIRING_THE_ALU|Shifting|shifting|z[31]~9_combout\ & ((\WIRING_THE_ALU|Shifting|sftIn~combout\))))) # (!\WIRING_THE_ALU|Shifting|shifting|z[31]~8_combout\ & (((\WIRING_THE_ALU|Shifting|sftIn~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Shifting|xToIn[31]~5_combout\,
	datab => \WIRING_THE_ALU|Shifting|shifting|z[31]~8_combout\,
	datac => \WIRING_THE_ALU|Shifting|sftIn~combout\,
	datad => \WIRING_THE_ALU|Shifting|shifting|z[31]~9_combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|z[31]~10_combout\);

-- Location: IOIBUF_X117_Y53_N1
\rs1[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rs1(5),
	o => \rs1[5]~input_o\);

-- Location: IOIBUF_X68_Y0_N1
\immU_J[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immU_J(5),
	o => \immU_J[5]~input_o\);

-- Location: LCCOMB_X69_Y53_N30
\A[5]~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \A[5]~27_combout\ = (\ASEL~input_o\ & ((\immU_J[5]~input_o\))) # (!\ASEL~input_o\ & (\rs1[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs1[5]~input_o\,
	datab => \ASEL~input_o\,
	datad => \immU_J[5]~input_o\,
	combout => \A[5]~27_combout\);

-- Location: LCCOMB_X68_Y54_N16
\WIRING_THE_ALU|Shifting|shifting|MUXout1[4]~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|MUXout1[4]~14_combout\ = (\Mux39~combout\) # ((!\Mux41~combout\ & !\ALUFunct[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux41~combout\,
	datac => \Mux39~combout\,
	datad => \ALUFunct[2]~input_o\,
	combout => \WIRING_THE_ALU|Shifting|shifting|MUXout1[4]~14_combout\);

-- Location: LCCOMB_X69_Y54_N14
\WIRING_THE_ALU|Shifting|shifting|MUXout1[31]~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|MUXout1[31]~15_combout\ = (\Mux39~combout\) # (\Mux41~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux39~combout\,
	datac => \Mux41~combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|MUXout1[31]~15_combout\);

-- Location: IOIBUF_X37_Y91_N1
\rs1[21]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rs1(21),
	o => \rs1[21]~input_o\);

-- Location: IOIBUF_X66_Y0_N8
\immU_J[21]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immU_J(21),
	o => \immU_J[21]~input_o\);

-- Location: LCCOMB_X66_Y52_N16
\A[21]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \A[21]~12_combout\ = (\ASEL~input_o\ & ((\immU_J[21]~input_o\))) # (!\ASEL~input_o\ & (\rs1[21]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs1[21]~input_o\,
	datac => \immU_J[21]~input_o\,
	datad => \ASEL~input_o\,
	combout => \A[21]~12_combout\);

-- Location: IOIBUF_X37_Y91_N22
\immU_J[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immU_J(10),
	o => \immU_J[10]~input_o\);

-- Location: IOIBUF_X117_Y52_N8
\rs1[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rs1(10),
	o => \rs1[10]~input_o\);

-- Location: LCCOMB_X68_Y52_N16
\A[10]~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \A[10]~22_combout\ = (\ASEL~input_o\ & (\immU_J[10]~input_o\)) # (!\ASEL~input_o\ & ((\rs1[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \immU_J[10]~input_o\,
	datac => \ASEL~input_o\,
	datad => \rs1[10]~input_o\,
	combout => \A[10]~22_combout\);

-- Location: LCCOMB_X67_Y56_N8
\WIRING_THE_ALU|Shifting|xToIn[21]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|xToIn[21]~6_combout\ = (\ALUFunct[2]~input_o\ & (\A[21]~12_combout\)) # (!\ALUFunct[2]~input_o\ & ((\A[10]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[21]~12_combout\,
	datac => \ALUFunct[2]~input_o\,
	datad => \A[10]~22_combout\,
	combout => \WIRING_THE_ALU|Shifting|xToIn[21]~6_combout\);

-- Location: LCCOMB_X67_Y56_N10
\WIRING_THE_ALU|Shifting|shifting|MUXout1[5]~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|MUXout1[5]~18_combout\ = (\WIRING_THE_ALU|Shifting|shifting|MUXout1[4]~14_combout\ & (((\WIRING_THE_ALU|Shifting|shifting|MUXout1[31]~15_combout\)))) # (!\WIRING_THE_ALU|Shifting|shifting|MUXout1[4]~14_combout\ & 
-- ((\WIRING_THE_ALU|Shifting|shifting|MUXout1[31]~15_combout\ & ((\WIRING_THE_ALU|Shifting|xToIn[21]~6_combout\))) # (!\WIRING_THE_ALU|Shifting|shifting|MUXout1[31]~15_combout\ & (\A[5]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~27_combout\,
	datab => \WIRING_THE_ALU|Shifting|shifting|MUXout1[4]~14_combout\,
	datac => \WIRING_THE_ALU|Shifting|shifting|MUXout1[31]~15_combout\,
	datad => \WIRING_THE_ALU|Shifting|xToIn[21]~6_combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|MUXout1[5]~18_combout\);

-- Location: IOIBUF_X75_Y0_N1
\immU_J[18]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immU_J(18),
	o => \immU_J[18]~input_o\);

-- Location: IOIBUF_X117_Y50_N1
\rs1[18]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rs1(18),
	o => \rs1[18]~input_o\);

-- Location: LCCOMB_X71_Y54_N20
\A[18]~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \A[18]~9_combout\ = (\ASEL~input_o\ & (\immU_J[18]~input_o\)) # (!\ASEL~input_o\ & ((\rs1[18]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ASEL~input_o\,
	datab => \immU_J[18]~input_o\,
	datac => \rs1[18]~input_o\,
	combout => \A[18]~9_combout\);

-- Location: IOIBUF_X77_Y0_N1
\rs1[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rs1(13),
	o => \rs1[13]~input_o\);

-- Location: IOIBUF_X117_Y56_N1
\immU_J[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immU_J(13),
	o => \immU_J[13]~input_o\);

-- Location: LCCOMB_X70_Y55_N0
\A[13]~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \A[13]~19_combout\ = (\ASEL~input_o\ & ((\immU_J[13]~input_o\))) # (!\ASEL~input_o\ & (\rs1[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs1[13]~input_o\,
	datac => \ASEL~input_o\,
	datad => \immU_J[13]~input_o\,
	combout => \A[13]~19_combout\);

-- Location: LCCOMB_X67_Y56_N12
\WIRING_THE_ALU|Shifting|shifting|MUXout0[13]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|MUXout0[13]~6_combout\ = (!\Mux41~combout\ & ((\ALUFunct[2]~input_o\ & ((\A[13]~19_combout\))) # (!\ALUFunct[2]~input_o\ & (\A[18]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[18]~9_combout\,
	datab => \Mux41~combout\,
	datac => \ALUFunct[2]~input_o\,
	datad => \A[13]~19_combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|MUXout0[13]~6_combout\);

-- Location: IOIBUF_X48_Y0_N1
\rs1[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rs1(2),
	o => \rs1[2]~input_o\);

-- Location: IOIBUF_X63_Y0_N8
\immU_J[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immU_J(2),
	o => \immU_J[2]~input_o\);

-- Location: LCCOMB_X67_Y58_N16
\A[2]~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \A[2]~24_combout\ = (\ASEL~input_o\ & ((\immU_J[2]~input_o\))) # (!\ASEL~input_o\ & (\rs1[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs1[2]~input_o\,
	datab => \immU_J[2]~input_o\,
	datad => \ASEL~input_o\,
	combout => \A[2]~24_combout\);

-- Location: IOIBUF_X117_Y59_N1
\immU_J[29]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immU_J(29),
	o => \immU_J[29]~input_o\);

-- Location: IOIBUF_X32_Y91_N15
\rs1[29]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rs1(29),
	o => \rs1[29]~input_o\);

-- Location: LCCOMB_X69_Y59_N16
\A[29]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \A[29]~1_combout\ = (\ASEL~input_o\ & (\immU_J[29]~input_o\)) # (!\ASEL~input_o\ & ((\rs1[29]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ASEL~input_o\,
	datac => \immU_J[29]~input_o\,
	datad => \rs1[29]~input_o\,
	combout => \A[29]~1_combout\);

-- Location: LCCOMB_X67_Y58_N26
\WIRING_THE_ALU|Shifting|xToIn[29]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|xToIn[29]~7_combout\ = (\ALUFunct[2]~input_o\ & ((\A[29]~1_combout\))) # (!\ALUFunct[2]~input_o\ & (\A[2]~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUFunct[2]~input_o\,
	datab => \A[2]~24_combout\,
	datad => \A[29]~1_combout\,
	combout => \WIRING_THE_ALU|Shifting|xToIn[29]~7_combout\);

-- Location: LCCOMB_X67_Y56_N30
\WIRING_THE_ALU|Shifting|shifting|MUXout0[13]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|MUXout0[13]~7_combout\ = (\WIRING_THE_ALU|Shifting|shifting|MUXout0[13]~6_combout\) # ((\Mux41~combout\ & \WIRING_THE_ALU|Shifting|xToIn[29]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Shifting|shifting|MUXout0[13]~6_combout\,
	datab => \Mux41~combout\,
	datad => \WIRING_THE_ALU|Shifting|xToIn[29]~7_combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|MUXout0[13]~7_combout\);

-- Location: IOIBUF_X61_Y91_N15
\rs1[26]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rs1(26),
	o => \rs1[26]~input_o\);

-- Location: IOIBUF_X32_Y91_N1
\immU_J[26]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immU_J(26),
	o => \immU_J[26]~input_o\);

-- Location: LCCOMB_X69_Y53_N0
\A[26]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \A[26]~2_combout\ = (\ASEL~input_o\ & ((\immU_J[26]~input_o\))) # (!\ASEL~input_o\ & (\rs1[26]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs1[26]~input_o\,
	datac => \immU_J[26]~input_o\,
	datad => \ASEL~input_o\,
	combout => \A[26]~2_combout\);

-- Location: LCCOMB_X67_Y56_N16
\WIRING_THE_ALU|Shifting|shifting|MUXout1[5]~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|MUXout1[5]~19_combout\ = (\WIRING_THE_ALU|Shifting|shifting|MUXout1[5]~18_combout\ & (((\WIRING_THE_ALU|Shifting|shifting|MUXout0[13]~7_combout\)) # (!\WIRING_THE_ALU|Shifting|shifting|MUXout1[4]~14_combout\))) # 
-- (!\WIRING_THE_ALU|Shifting|shifting|MUXout1[5]~18_combout\ & (\WIRING_THE_ALU|Shifting|shifting|MUXout1[4]~14_combout\ & ((\A[26]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Shifting|shifting|MUXout1[5]~18_combout\,
	datab => \WIRING_THE_ALU|Shifting|shifting|MUXout1[4]~14_combout\,
	datac => \WIRING_THE_ALU|Shifting|shifting|MUXout0[13]~7_combout\,
	datad => \A[26]~2_combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|MUXout1[5]~19_combout\);

-- Location: IOIBUF_X117_Y56_N8
\rs1[16]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rs1(16),
	o => \rs1[16]~input_o\);

-- Location: IOIBUF_X50_Y91_N8
\immU_J[16]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immU_J(16),
	o => \immU_J[16]~input_o\);

-- Location: LCCOMB_X69_Y55_N8
\A[16]~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \A[16]~16_combout\ = (\ASEL~input_o\ & ((\immU_J[16]~input_o\))) # (!\ASEL~input_o\ & (\rs1[16]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs1[16]~input_o\,
	datac => \immU_J[16]~input_o\,
	datad => \ASEL~input_o\,
	combout => \A[16]~16_combout\);

-- Location: IOIBUF_X117_Y43_N1
\immU_J[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immU_J(15),
	o => \immU_J[15]~input_o\);

-- Location: IOIBUF_X117_Y55_N1
\rs1[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rs1(15),
	o => \rs1[15]~input_o\);

-- Location: LCCOMB_X69_Y55_N18
\A[15]~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \A[15]~17_combout\ = (\ASEL~input_o\ & (\immU_J[15]~input_o\)) # (!\ASEL~input_o\ & ((\rs1[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \immU_J[15]~input_o\,
	datac => \rs1[15]~input_o\,
	datad => \ASEL~input_o\,
	combout => \A[15]~17_combout\);

-- Location: LCCOMB_X69_Y56_N12
\WIRING_THE_ALU|Shifting|shifting|MUXout0[15]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|MUXout0[15]~4_combout\ = (\ALUFunct[2]~input_o\ & ((\A[15]~17_combout\))) # (!\ALUFunct[2]~input_o\ & (\A[16]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[16]~16_combout\,
	datac => \A[15]~17_combout\,
	datad => \ALUFunct[2]~input_o\,
	combout => \WIRING_THE_ALU|Shifting|shifting|MUXout0[15]~4_combout\);

-- Location: LCCOMB_X69_Y56_N6
\WIRING_THE_ALU|Shifting|shifting|MUXout0[15]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|MUXout0[15]~5_combout\ = (\Mux41~combout\ & ((\WIRING_THE_ALU|Shifting|xToIn[31]~5_combout\))) # (!\Mux41~combout\ & (\WIRING_THE_ALU|Shifting|shifting|MUXout0[15]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Shifting|shifting|MUXout0[15]~4_combout\,
	datab => \WIRING_THE_ALU|Shifting|xToIn[31]~5_combout\,
	datad => \Mux41~combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|MUXout0[15]~5_combout\);

-- Location: IOIBUF_X34_Y91_N22
\rs1[24]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rs1(24),
	o => \rs1[24]~input_o\);

-- Location: IOIBUF_X117_Y58_N1
\immU_J[24]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immU_J(24),
	o => \immU_J[24]~input_o\);

-- Location: LCCOMB_X70_Y58_N16
\A[24]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \A[24]~3_combout\ = (\ASEL~input_o\ & ((\immU_J[24]~input_o\))) # (!\ASEL~input_o\ & (\rs1[24]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ASEL~input_o\,
	datac => \rs1[24]~input_o\,
	datad => \immU_J[24]~input_o\,
	combout => \A[24]~3_combout\);

-- Location: IOIBUF_X41_Y91_N1
\rs1[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rs1(7),
	o => \rs1[7]~input_o\);

-- Location: IOIBUF_X117_Y57_N1
\immU_J[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immU_J(7),
	o => \immU_J[7]~input_o\);

-- Location: LCCOMB_X70_Y53_N0
\A[7]~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \A[7]~29_combout\ = (\ASEL~input_o\ & ((\immU_J[7]~input_o\))) # (!\ASEL~input_o\ & (\rs1[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rs1[7]~input_o\,
	datac => \immU_J[7]~input_o\,
	datad => \ASEL~input_o\,
	combout => \A[7]~29_combout\);

-- Location: LCCOMB_X68_Y54_N14
\WIRING_THE_ALU|Shifting|shifting|MUXout1[7]~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|MUXout1[7]~16_combout\ = (\WIRING_THE_ALU|Shifting|shifting|MUXout1[31]~15_combout\ & (\WIRING_THE_ALU|Shifting|shifting|MUXout1[4]~14_combout\)) # (!\WIRING_THE_ALU|Shifting|shifting|MUXout1[31]~15_combout\ & 
-- ((\WIRING_THE_ALU|Shifting|shifting|MUXout1[4]~14_combout\ & (\A[24]~3_combout\)) # (!\WIRING_THE_ALU|Shifting|shifting|MUXout1[4]~14_combout\ & ((\A[7]~29_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Shifting|shifting|MUXout1[31]~15_combout\,
	datab => \WIRING_THE_ALU|Shifting|shifting|MUXout1[4]~14_combout\,
	datac => \A[24]~3_combout\,
	datad => \A[7]~29_combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|MUXout1[7]~16_combout\);

-- Location: IOIBUF_X44_Y0_N8
\immU_J[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immU_J(8),
	o => \immU_J[8]~input_o\);

-- Location: IOIBUF_X46_Y0_N8
\rs1[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rs1(8),
	o => \rs1[8]~input_o\);

-- Location: LCCOMB_X68_Y53_N8
\A[8]~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \A[8]~30_combout\ = (\ASEL~input_o\ & (\immU_J[8]~input_o\)) # (!\ASEL~input_o\ & ((\rs1[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ASEL~input_o\,
	datac => \immU_J[8]~input_o\,
	datad => \rs1[8]~input_o\,
	combout => \A[8]~30_combout\);

-- Location: IOIBUF_X50_Y0_N8
\immU_J[23]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immU_J(23),
	o => \immU_J[23]~input_o\);

-- Location: IOIBUF_X61_Y0_N15
\rs1[23]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rs1(23),
	o => \rs1[23]~input_o\);

-- Location: LCCOMB_X66_Y53_N0
\A[23]~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \A[23]~14_combout\ = (\ASEL~input_o\ & (\immU_J[23]~input_o\)) # (!\ASEL~input_o\ & ((\rs1[23]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \immU_J[23]~input_o\,
	datab => \ASEL~input_o\,
	datac => \rs1[23]~input_o\,
	combout => \A[23]~14_combout\);

-- Location: LCCOMB_X68_Y53_N22
\WIRING_THE_ALU|Shifting|xToIn[23]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|xToIn[23]~4_combout\ = (\ALUFunct[2]~input_o\ & ((\A[23]~14_combout\))) # (!\ALUFunct[2]~input_o\ & (\A[8]~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUFunct[2]~input_o\,
	datac => \A[8]~30_combout\,
	datad => \A[23]~14_combout\,
	combout => \WIRING_THE_ALU|Shifting|xToIn[23]~4_combout\);

-- Location: LCCOMB_X68_Y54_N8
\WIRING_THE_ALU|Shifting|shifting|MUXout1[7]~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|MUXout1[7]~17_combout\ = (\WIRING_THE_ALU|Shifting|shifting|MUXout1[31]~15_combout\ & ((\WIRING_THE_ALU|Shifting|shifting|MUXout1[7]~16_combout\ & (\WIRING_THE_ALU|Shifting|shifting|MUXout0[15]~5_combout\)) # 
-- (!\WIRING_THE_ALU|Shifting|shifting|MUXout1[7]~16_combout\ & ((\WIRING_THE_ALU|Shifting|xToIn[23]~4_combout\))))) # (!\WIRING_THE_ALU|Shifting|shifting|MUXout1[31]~15_combout\ & (((\WIRING_THE_ALU|Shifting|shifting|MUXout1[7]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Shifting|shifting|MUXout1[31]~15_combout\,
	datab => \WIRING_THE_ALU|Shifting|shifting|MUXout0[15]~5_combout\,
	datac => \WIRING_THE_ALU|Shifting|shifting|MUXout1[7]~16_combout\,
	datad => \WIRING_THE_ALU|Shifting|xToIn[23]~4_combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|MUXout1[7]~17_combout\);

-- Location: LCCOMB_X67_Y57_N8
\WIRING_THE_ALU|Shifting|shifting|MUXout3[5]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|MUXout3[5]~5_combout\ = (\Mux35~combout\ & ((\WIRING_THE_ALU|Shifting|shifting|MUXout1[7]~17_combout\))) # (!\Mux35~combout\ & (\WIRING_THE_ALU|Shifting|shifting|MUXout1[5]~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Shifting|shifting|MUXout1[5]~19_combout\,
	datab => \WIRING_THE_ALU|Shifting|shifting|MUXout1[7]~17_combout\,
	datac => \Mux35~combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|MUXout3[5]~5_combout\);

-- Location: IOIBUF_X30_Y91_N15
\immU_J[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immU_J(1),
	o => \immU_J[1]~input_o\);

-- Location: IOIBUF_X39_Y91_N8
\rs1[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rs1(1),
	o => \rs1[1]~input_o\);

-- Location: LCCOMB_X67_Y59_N28
\A[1]~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \A[1]~23_combout\ = (\ASEL~input_o\ & (\immU_J[1]~input_o\)) # (!\ASEL~input_o\ & ((\rs1[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ASEL~input_o\,
	datac => \immU_J[1]~input_o\,
	datad => \rs1[1]~input_o\,
	combout => \A[1]~23_combout\);

-- Location: IOIBUF_X61_Y91_N1
\immU_J[30]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immU_J(30),
	o => \immU_J[30]~input_o\);

-- Location: IOIBUF_X41_Y91_N22
\rs1[30]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rs1(30),
	o => \rs1[30]~input_o\);

-- Location: LCCOMB_X69_Y59_N18
\A[30]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \A[30]~5_combout\ = (\ASEL~input_o\ & (\immU_J[30]~input_o\)) # (!\ASEL~input_o\ & ((\rs1[30]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \immU_J[30]~input_o\,
	datab => \ASEL~input_o\,
	datac => \rs1[30]~input_o\,
	combout => \A[30]~5_combout\);

-- Location: LCCOMB_X67_Y59_N18
\WIRING_THE_ALU|Shifting|shifting|MUXout3[1]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|MUXout3[1]~2_combout\ = (!\Mux41~combout\ & ((\ALUFunct[2]~input_o\ & (\A[1]~23_combout\)) # (!\ALUFunct[2]~input_o\ & ((\A[30]~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUFunct[2]~input_o\,
	datab => \A[1]~23_combout\,
	datac => \Mux41~combout\,
	datad => \A[30]~5_combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|MUXout3[1]~2_combout\);

-- Location: IOIBUF_X82_Y0_N8
\rs1[17]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rs1(17),
	o => \rs1[17]~input_o\);

-- Location: IOIBUF_X77_Y0_N8
\immU_J[17]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immU_J(17),
	o => \immU_J[17]~input_o\);

-- Location: LCCOMB_X71_Y55_N24
\A[17]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \A[17]~8_combout\ = (\ASEL~input_o\ & ((\immU_J[17]~input_o\))) # (!\ASEL~input_o\ & (\rs1[17]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ASEL~input_o\,
	datac => \rs1[17]~input_o\,
	datad => \immU_J[17]~input_o\,
	combout => \A[17]~8_combout\);

-- Location: IOIBUF_X70_Y0_N1
\rs1[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rs1(14),
	o => \rs1[14]~input_o\);

-- Location: IOIBUF_X70_Y0_N22
\immU_J[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immU_J(14),
	o => \immU_J[14]~input_o\);

-- Location: LCCOMB_X70_Y55_N12
\A[14]~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \A[14]~18_combout\ = (\ASEL~input_o\ & ((\immU_J[14]~input_o\))) # (!\ASEL~input_o\ & (\rs1[14]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ASEL~input_o\,
	datac => \rs1[14]~input_o\,
	datad => \immU_J[14]~input_o\,
	combout => \A[14]~18_combout\);

-- Location: LCCOMB_X67_Y53_N4
\WIRING_THE_ALU|Shifting|shifting|MUXout3[1]~48\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|MUXout3[1]~48_combout\ = (\Mux41~combout\ & ((\ALUFunct[2]~input_o\ & (\A[17]~8_combout\)) # (!\ALUFunct[2]~input_o\ & ((\A[14]~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux41~combout\,
	datab => \A[17]~8_combout\,
	datac => \ALUFunct[2]~input_o\,
	datad => \A[14]~18_combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|MUXout3[1]~48_combout\);

-- Location: IOIBUF_X48_Y91_N1
\rs1[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rs1(6),
	o => \rs1[6]~input_o\);

-- Location: IOIBUF_X46_Y91_N1
\immU_J[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immU_J(6),
	o => \immU_J[6]~input_o\);

-- Location: LCCOMB_X70_Y57_N24
\A[6]~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \A[6]~28_combout\ = (\ASEL~input_o\ & ((\immU_J[6]~input_o\))) # (!\ASEL~input_o\ & (\rs1[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ASEL~input_o\,
	datac => \rs1[6]~input_o\,
	datad => \immU_J[6]~input_o\,
	combout => \A[6]~28_combout\);

-- Location: IOIBUF_X63_Y91_N22
\immU_J[25]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immU_J(25),
	o => \immU_J[25]~input_o\);

-- Location: IOIBUF_X70_Y91_N1
\rs1[25]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rs1(25),
	o => \rs1[25]~input_o\);

-- Location: LCCOMB_X70_Y58_N4
\A[25]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \A[25]~4_combout\ = (\ASEL~input_o\ & (\immU_J[25]~input_o\)) # (!\ASEL~input_o\ & ((\rs1[25]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \immU_J[25]~input_o\,
	datab => \ASEL~input_o\,
	datac => \rs1[25]~input_o\,
	combout => \A[25]~4_combout\);

-- Location: LCCOMB_X67_Y57_N18
\WIRING_THE_ALU|Shifting|xToIn[25]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|xToIn[25]~2_combout\ = (\ALUFunct[2]~input_o\ & ((\A[25]~4_combout\))) # (!\ALUFunct[2]~input_o\ & (\A[6]~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~28_combout\,
	datab => \ALUFunct[2]~input_o\,
	datac => \A[25]~4_combout\,
	combout => \WIRING_THE_ALU|Shifting|xToIn[25]~2_combout\);

-- Location: IOIBUF_X50_Y0_N1
\rs1[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rs1(9),
	o => \rs1[9]~input_o\);

-- Location: IOIBUF_X44_Y91_N8
\immU_J[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immU_J(9),
	o => \immU_J[9]~input_o\);

-- Location: LCCOMB_X68_Y53_N26
\A[9]~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \A[9]~31_combout\ = (\ASEL~input_o\ & ((\immU_J[9]~input_o\))) # (!\ASEL~input_o\ & (\rs1[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs1[9]~input_o\,
	datab => \ASEL~input_o\,
	datac => \immU_J[9]~input_o\,
	combout => \A[9]~31_combout\);

-- Location: IOIBUF_X32_Y91_N8
\rs1[22]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rs1(22),
	o => \rs1[22]~input_o\);

-- Location: IOIBUF_X63_Y0_N1
\immU_J[22]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immU_J(22),
	o => \immU_J[22]~input_o\);

-- Location: LCCOMB_X66_Y52_N28
\A[22]~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \A[22]~13_combout\ = (\ASEL~input_o\ & ((\immU_J[22]~input_o\))) # (!\ASEL~input_o\ & (\rs1[22]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs1[22]~input_o\,
	datac => \immU_J[22]~input_o\,
	datad => \ASEL~input_o\,
	combout => \A[22]~13_combout\);

-- Location: LCCOMB_X68_Y53_N10
\WIRING_THE_ALU|Shifting|shifting|MUXout0[9]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|MUXout0[9]~2_combout\ = (\ALUFunct[2]~input_o\ & (\A[9]~31_combout\)) # (!\ALUFunct[2]~input_o\ & ((\A[22]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUFunct[2]~input_o\,
	datac => \A[9]~31_combout\,
	datad => \A[22]~13_combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|MUXout0[9]~2_combout\);

-- Location: LCCOMB_X68_Y53_N4
\WIRING_THE_ALU|Shifting|shifting|MUXout0[9]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|MUXout0[9]~3_combout\ = (\Mux41~combout\ & (\WIRING_THE_ALU|Shifting|xToIn[25]~2_combout\)) # (!\Mux41~combout\ & ((\WIRING_THE_ALU|Shifting|shifting|MUXout0[9]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WIRING_THE_ALU|Shifting|xToIn[25]~2_combout\,
	datac => \Mux41~combout\,
	datad => \WIRING_THE_ALU|Shifting|shifting|MUXout0[9]~2_combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|MUXout0[9]~3_combout\);

-- Location: LCCOMB_X67_Y57_N28
\WIRING_THE_ALU|Shifting|shifting|MUXout3[1]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|MUXout3[1]~3_combout\ = (\Mux39~combout\ & (((\WIRING_THE_ALU|Shifting|shifting|MUXout0[9]~3_combout\)))) # (!\Mux39~combout\ & ((\WIRING_THE_ALU|Shifting|shifting|MUXout3[1]~2_combout\) # 
-- ((\WIRING_THE_ALU|Shifting|shifting|MUXout3[1]~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Shifting|shifting|MUXout3[1]~2_combout\,
	datab => \Mux39~combout\,
	datac => \WIRING_THE_ALU|Shifting|shifting|MUXout3[1]~48_combout\,
	datad => \WIRING_THE_ALU|Shifting|shifting|MUXout0[9]~3_combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|MUXout3[1]~3_combout\);

-- Location: IOIBUF_X68_Y0_N15
\immU_J[27]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immU_J(27),
	o => \immU_J[27]~input_o\);

-- Location: IOIBUF_X53_Y91_N22
\rs1[27]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rs1(27),
	o => \rs1[27]~input_o\);

-- Location: LCCOMB_X69_Y58_N18
\A[27]~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \A[27]~15_combout\ = (\ASEL~input_o\ & (\immU_J[27]~input_o\)) # (!\ASEL~input_o\ & ((\rs1[27]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ASEL~input_o\,
	datac => \immU_J[27]~input_o\,
	datad => \rs1[27]~input_o\,
	combout => \A[27]~15_combout\);

-- Location: IOIBUF_X30_Y91_N1
\rs1[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rs1(4),
	o => \rs1[4]~input_o\);

-- Location: IOIBUF_X66_Y0_N15
\immU_J[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immU_J(4),
	o => \immU_J[4]~input_o\);

-- Location: LCCOMB_X67_Y58_N4
\A[4]~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \A[4]~26_combout\ = (\ASEL~input_o\ & ((\immU_J[4]~input_o\))) # (!\ASEL~input_o\ & (\rs1[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rs1[4]~input_o\,
	datac => \immU_J[4]~input_o\,
	datad => \ASEL~input_o\,
	combout => \A[4]~26_combout\);

-- Location: LCCOMB_X68_Y54_N20
\WIRING_THE_ALU|Shifting|xToIn[27]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|xToIn[27]~1_combout\ = (\ALUFunct[2]~input_o\ & (\A[27]~15_combout\)) # (!\ALUFunct[2]~input_o\ & ((\A[4]~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[27]~15_combout\,
	datac => \A[4]~26_combout\,
	datad => \ALUFunct[2]~input_o\,
	combout => \WIRING_THE_ALU|Shifting|xToIn[27]~1_combout\);

-- Location: IOIBUF_X117_Y51_N8
\rs1[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rs1(11),
	o => \rs1[11]~input_o\);

-- Location: IOIBUF_X53_Y0_N1
\immU_J[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immU_J(11),
	o => \immU_J[11]~input_o\);

-- Location: LCCOMB_X68_Y51_N16
\A[11]~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \A[11]~21_combout\ = (\ASEL~input_o\ & ((\immU_J[11]~input_o\))) # (!\ASEL~input_o\ & (\rs1[11]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rs1[11]~input_o\,
	datac => \ASEL~input_o\,
	datad => \immU_J[11]~input_o\,
	combout => \A[11]~21_combout\);

-- Location: IOIBUF_X63_Y0_N15
\rs1[20]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rs1(20),
	o => \rs1[20]~input_o\);

-- Location: IOIBUF_X53_Y0_N8
\immU_J[20]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immU_J(20),
	o => \immU_J[20]~input_o\);

-- Location: LCCOMB_X67_Y53_N22
\A[20]~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \A[20]~11_combout\ = (\ASEL~input_o\ & ((\immU_J[20]~input_o\))) # (!\ASEL~input_o\ & (\rs1[20]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ASEL~input_o\,
	datac => \rs1[20]~input_o\,
	datad => \immU_J[20]~input_o\,
	combout => \A[20]~11_combout\);

-- Location: LCCOMB_X67_Y53_N6
\WIRING_THE_ALU|Shifting|shifting|MUXout0[11]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|MUXout0[11]~0_combout\ = (\ALUFunct[2]~input_o\ & (\A[11]~21_combout\)) # (!\ALUFunct[2]~input_o\ & ((\A[20]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[11]~21_combout\,
	datab => \ALUFunct[2]~input_o\,
	datac => \A[20]~11_combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|MUXout0[11]~0_combout\);

-- Location: LCCOMB_X67_Y53_N0
\WIRING_THE_ALU|Shifting|shifting|MUXout0[11]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|MUXout0[11]~1_combout\ = (\Mux41~combout\ & (\WIRING_THE_ALU|Shifting|xToIn[27]~1_combout\)) # (!\Mux41~combout\ & ((\WIRING_THE_ALU|Shifting|shifting|MUXout0[11]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux41~combout\,
	datac => \WIRING_THE_ALU|Shifting|xToIn[27]~1_combout\,
	datad => \WIRING_THE_ALU|Shifting|shifting|MUXout0[11]~0_combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|MUXout0[11]~1_combout\);

-- Location: IOIBUF_X44_Y91_N1
\rs1[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rs1(3),
	o => \rs1[3]~input_o\);

-- Location: IOIBUF_X117_Y62_N8
\immU_J[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immU_J(3),
	o => \immU_J[3]~input_o\);

-- Location: LCCOMB_X68_Y58_N18
\A[3]~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \A[3]~25_combout\ = (\ASEL~input_o\ & ((\immU_J[3]~input_o\))) # (!\ASEL~input_o\ & (\rs1[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs1[3]~input_o\,
	datab => \ASEL~input_o\,
	datad => \immU_J[3]~input_o\,
	combout => \A[3]~25_combout\);

-- Location: IOIBUF_X66_Y0_N1
\rs1[19]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rs1(19),
	o => \rs1[19]~input_o\);

-- Location: IOIBUF_X63_Y0_N22
\immU_J[19]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immU_J(19),
	o => \immU_J[19]~input_o\);

-- Location: LCCOMB_X67_Y52_N10
\A[19]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \A[19]~10_combout\ = (\ASEL~input_o\ & ((\immU_J[19]~input_o\))) # (!\ASEL~input_o\ & (\rs1[19]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ASEL~input_o\,
	datac => \rs1[19]~input_o\,
	datad => \immU_J[19]~input_o\,
	combout => \A[19]~10_combout\);

-- Location: IOIBUF_X61_Y0_N22
\rs1[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rs1(12),
	o => \rs1[12]~input_o\);

-- Location: IOIBUF_X70_Y0_N8
\immU_J[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immU_J(12),
	o => \immU_J[12]~input_o\);

-- Location: LCCOMB_X69_Y54_N0
\A[12]~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \A[12]~20_combout\ = (\ASEL~input_o\ & ((\immU_J[12]~input_o\))) # (!\ASEL~input_o\ & (\rs1[12]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rs1[12]~input_o\,
	datac => \ASEL~input_o\,
	datad => \immU_J[12]~input_o\,
	combout => \A[12]~20_combout\);

-- Location: LCCOMB_X69_Y54_N4
\WIRING_THE_ALU|Shifting|xToIn[19]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|xToIn[19]~0_combout\ = (\ALUFunct[2]~input_o\ & (\A[19]~10_combout\)) # (!\ALUFunct[2]~input_o\ & ((\A[12]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALUFunct[2]~input_o\,
	datac => \A[19]~10_combout\,
	datad => \A[12]~20_combout\,
	combout => \WIRING_THE_ALU|Shifting|xToIn[19]~0_combout\);

-- Location: LCCOMB_X68_Y54_N18
\WIRING_THE_ALU|Shifting|shifting|MUXout2[3]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|MUXout2[3]~0_combout\ = (\WIRING_THE_ALU|Shifting|shifting|MUXout1[31]~15_combout\ & ((\WIRING_THE_ALU|Shifting|shifting|MUXout1[4]~14_combout\) # ((\WIRING_THE_ALU|Shifting|xToIn[19]~0_combout\)))) # 
-- (!\WIRING_THE_ALU|Shifting|shifting|MUXout1[31]~15_combout\ & (!\WIRING_THE_ALU|Shifting|shifting|MUXout1[4]~14_combout\ & (\A[3]~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Shifting|shifting|MUXout1[31]~15_combout\,
	datab => \WIRING_THE_ALU|Shifting|shifting|MUXout1[4]~14_combout\,
	datac => \A[3]~25_combout\,
	datad => \WIRING_THE_ALU|Shifting|xToIn[19]~0_combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|MUXout2[3]~0_combout\);

-- Location: IOIBUF_X37_Y91_N8
\rs1[28]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rs1(28),
	o => \rs1[28]~input_o\);

-- Location: IOIBUF_X117_Y58_N8
\immU_J[28]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immU_J(28),
	o => \immU_J[28]~input_o\);

-- Location: LCCOMB_X68_Y58_N24
\A[28]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \A[28]~6_combout\ = (\ASEL~input_o\ & ((\immU_J[28]~input_o\))) # (!\ASEL~input_o\ & (\rs1[28]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rs1[28]~input_o\,
	datac => \immU_J[28]~input_o\,
	datad => \ASEL~input_o\,
	combout => \A[28]~6_combout\);

-- Location: LCCOMB_X67_Y57_N0
\WIRING_THE_ALU|Shifting|shifting|MUXout2[3]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|MUXout2[3]~1_combout\ = (\WIRING_THE_ALU|Shifting|shifting|MUXout1[4]~14_combout\ & ((\WIRING_THE_ALU|Shifting|shifting|MUXout2[3]~0_combout\ & (\WIRING_THE_ALU|Shifting|shifting|MUXout0[11]~1_combout\)) # 
-- (!\WIRING_THE_ALU|Shifting|shifting|MUXout2[3]~0_combout\ & ((\A[28]~6_combout\))))) # (!\WIRING_THE_ALU|Shifting|shifting|MUXout1[4]~14_combout\ & (((\WIRING_THE_ALU|Shifting|shifting|MUXout2[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Shifting|shifting|MUXout0[11]~1_combout\,
	datab => \WIRING_THE_ALU|Shifting|shifting|MUXout1[4]~14_combout\,
	datac => \WIRING_THE_ALU|Shifting|shifting|MUXout2[3]~0_combout\,
	datad => \A[28]~6_combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|MUXout2[3]~1_combout\);

-- Location: LCCOMB_X67_Y57_N14
\WIRING_THE_ALU|Shifting|shifting|MUXout3[1]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|MUXout3[1]~4_combout\ = (!\Mux37~combout\ & ((\Mux35~combout\ & ((\WIRING_THE_ALU|Shifting|shifting|MUXout2[3]~1_combout\))) # (!\Mux35~combout\ & (\WIRING_THE_ALU|Shifting|shifting|MUXout3[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux37~combout\,
	datab => \WIRING_THE_ALU|Shifting|shifting|MUXout3[1]~3_combout\,
	datac => \Mux35~combout\,
	datad => \WIRING_THE_ALU|Shifting|shifting|MUXout2[3]~1_combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|MUXout3[1]~4_combout\);

-- Location: LCCOMB_X67_Y57_N2
\WIRING_THE_ALU|Shifting|shifting|MUXout3[1]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|MUXout3[1]~6_combout\ = (\WIRING_THE_ALU|Shifting|shifting|MUXout3[1]~4_combout\) # ((\Mux37~combout\ & \WIRING_THE_ALU|Shifting|shifting|MUXout3[5]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux37~combout\,
	datab => \WIRING_THE_ALU|Shifting|shifting|MUXout3[5]~5_combout\,
	datac => \WIRING_THE_ALU|Shifting|shifting|MUXout3[1]~4_combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|MUXout3[1]~6_combout\);

-- Location: LCCOMB_X67_Y59_N20
\WIRING_THE_ALU|Shifting|xToIn[30]~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|xToIn[30]~9_combout\ = (\ALUFunct[2]~input_o\ & ((\A[30]~5_combout\))) # (!\ALUFunct[2]~input_o\ & (\A[1]~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUFunct[2]~input_o\,
	datab => \A[1]~23_combout\,
	datad => \A[30]~5_combout\,
	combout => \WIRING_THE_ALU|Shifting|xToIn[30]~9_combout\);

-- Location: LCCOMB_X67_Y53_N12
\WIRING_THE_ALU|Shifting|shifting|MUXout0[14]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|MUXout0[14]~8_combout\ = (\ALUFunct[2]~input_o\ & ((\A[14]~18_combout\))) # (!\ALUFunct[2]~input_o\ & (\A[17]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[17]~8_combout\,
	datac => \ALUFunct[2]~input_o\,
	datad => \A[14]~18_combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|MUXout0[14]~8_combout\);

-- Location: LCCOMB_X67_Y53_N14
\WIRING_THE_ALU|Shifting|shifting|MUXout0[14]~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|MUXout0[14]~9_combout\ = (\Mux41~combout\ & (\WIRING_THE_ALU|Shifting|xToIn[30]~9_combout\)) # (!\Mux41~combout\ & ((\WIRING_THE_ALU|Shifting|shifting|MUXout0[14]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux41~combout\,
	datac => \WIRING_THE_ALU|Shifting|xToIn[30]~9_combout\,
	datad => \WIRING_THE_ALU|Shifting|shifting|MUXout0[14]~8_combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|MUXout0[14]~9_combout\);

-- Location: LCCOMB_X68_Y53_N24
\WIRING_THE_ALU|Shifting|xToIn[22]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|xToIn[22]~8_combout\ = (\ALUFunct[2]~input_o\ & ((\A[22]~13_combout\))) # (!\ALUFunct[2]~input_o\ & (\A[9]~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUFunct[2]~input_o\,
	datac => \A[9]~31_combout\,
	datad => \A[22]~13_combout\,
	combout => \WIRING_THE_ALU|Shifting|xToIn[22]~8_combout\);

-- Location: LCCOMB_X67_Y57_N12
\WIRING_THE_ALU|Shifting|shifting|MUXout1[6]~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|MUXout1[6]~20_combout\ = (\WIRING_THE_ALU|Shifting|shifting|MUXout1[31]~15_combout\ & ((\WIRING_THE_ALU|Shifting|xToIn[22]~8_combout\) # ((\WIRING_THE_ALU|Shifting|shifting|MUXout1[4]~14_combout\)))) # 
-- (!\WIRING_THE_ALU|Shifting|shifting|MUXout1[31]~15_combout\ & (((\A[6]~28_combout\ & !\WIRING_THE_ALU|Shifting|shifting|MUXout1[4]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Shifting|shifting|MUXout1[31]~15_combout\,
	datab => \WIRING_THE_ALU|Shifting|xToIn[22]~8_combout\,
	datac => \A[6]~28_combout\,
	datad => \WIRING_THE_ALU|Shifting|shifting|MUXout1[4]~14_combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|MUXout1[6]~20_combout\);

-- Location: LCCOMB_X67_Y57_N30
\WIRING_THE_ALU|Shifting|shifting|MUXout1[6]~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|MUXout1[6]~21_combout\ = (\WIRING_THE_ALU|Shifting|shifting|MUXout1[4]~14_combout\ & ((\WIRING_THE_ALU|Shifting|shifting|MUXout1[6]~20_combout\ & ((\WIRING_THE_ALU|Shifting|shifting|MUXout0[14]~9_combout\))) # 
-- (!\WIRING_THE_ALU|Shifting|shifting|MUXout1[6]~20_combout\ & (\A[25]~4_combout\)))) # (!\WIRING_THE_ALU|Shifting|shifting|MUXout1[4]~14_combout\ & (((\WIRING_THE_ALU|Shifting|shifting|MUXout1[6]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[25]~4_combout\,
	datab => \WIRING_THE_ALU|Shifting|shifting|MUXout1[4]~14_combout\,
	datac => \WIRING_THE_ALU|Shifting|shifting|MUXout0[14]~9_combout\,
	datad => \WIRING_THE_ALU|Shifting|shifting|MUXout1[6]~20_combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|MUXout1[6]~21_combout\);

-- Location: LCCOMB_X68_Y58_N20
\WIRING_THE_ALU|Shifting|xToIn[28]~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|xToIn[28]~11_combout\ = (\ALUFunct[2]~input_o\ & (\A[28]~6_combout\)) # (!\ALUFunct[2]~input_o\ & ((\A[3]~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUFunct[2]~input_o\,
	datab => \A[28]~6_combout\,
	datad => \A[3]~25_combout\,
	combout => \WIRING_THE_ALU|Shifting|xToIn[28]~11_combout\);

-- Location: LCCOMB_X69_Y54_N8
\WIRING_THE_ALU|Shifting|shifting|MUXout0[12]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|MUXout0[12]~10_combout\ = (\ALUFunct[2]~input_o\ & ((\A[12]~20_combout\))) # (!\ALUFunct[2]~input_o\ & (\A[19]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALUFunct[2]~input_o\,
	datac => \A[19]~10_combout\,
	datad => \A[12]~20_combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|MUXout0[12]~10_combout\);

-- Location: LCCOMB_X69_Y54_N2
\WIRING_THE_ALU|Shifting|shifting|MUXout0[12]~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|MUXout0[12]~11_combout\ = (\Mux41~combout\ & (\WIRING_THE_ALU|Shifting|xToIn[28]~11_combout\)) # (!\Mux41~combout\ & ((\WIRING_THE_ALU|Shifting|shifting|MUXout0[12]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux41~combout\,
	datab => \WIRING_THE_ALU|Shifting|xToIn[28]~11_combout\,
	datac => \WIRING_THE_ALU|Shifting|shifting|MUXout0[12]~10_combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|MUXout0[12]~11_combout\);

-- Location: LCCOMB_X67_Y53_N16
\WIRING_THE_ALU|Shifting|xToIn[20]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|xToIn[20]~10_combout\ = (\ALUFunct[2]~input_o\ & ((\A[20]~11_combout\))) # (!\ALUFunct[2]~input_o\ & (\A[11]~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[11]~21_combout\,
	datab => \ALUFunct[2]~input_o\,
	datac => \A[20]~11_combout\,
	combout => \WIRING_THE_ALU|Shifting|xToIn[20]~10_combout\);

-- Location: LCCOMB_X68_Y54_N26
\WIRING_THE_ALU|Shifting|shifting|MUXout1[4]~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|MUXout1[4]~22_combout\ = (\WIRING_THE_ALU|Shifting|shifting|MUXout1[4]~14_combout\ & (((\WIRING_THE_ALU|Shifting|shifting|MUXout1[31]~15_combout\)))) # (!\WIRING_THE_ALU|Shifting|shifting|MUXout1[4]~14_combout\ & 
-- ((\WIRING_THE_ALU|Shifting|shifting|MUXout1[31]~15_combout\ & (\WIRING_THE_ALU|Shifting|xToIn[20]~10_combout\)) # (!\WIRING_THE_ALU|Shifting|shifting|MUXout1[31]~15_combout\ & ((\A[4]~26_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Shifting|xToIn[20]~10_combout\,
	datab => \WIRING_THE_ALU|Shifting|shifting|MUXout1[4]~14_combout\,
	datac => \A[4]~26_combout\,
	datad => \WIRING_THE_ALU|Shifting|shifting|MUXout1[31]~15_combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|MUXout1[4]~22_combout\);

-- Location: LCCOMB_X68_Y54_N4
\WIRING_THE_ALU|Shifting|shifting|MUXout1[4]~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|MUXout1[4]~23_combout\ = (\WIRING_THE_ALU|Shifting|shifting|MUXout1[4]~22_combout\ & ((\WIRING_THE_ALU|Shifting|shifting|MUXout0[12]~11_combout\) # ((!\WIRING_THE_ALU|Shifting|shifting|MUXout1[4]~14_combout\)))) # 
-- (!\WIRING_THE_ALU|Shifting|shifting|MUXout1[4]~22_combout\ & (((\A[27]~15_combout\ & \WIRING_THE_ALU|Shifting|shifting|MUXout1[4]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Shifting|shifting|MUXout0[12]~11_combout\,
	datab => \A[27]~15_combout\,
	datac => \WIRING_THE_ALU|Shifting|shifting|MUXout1[4]~22_combout\,
	datad => \WIRING_THE_ALU|Shifting|shifting|MUXout1[4]~14_combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|MUXout1[4]~23_combout\);

-- Location: LCCOMB_X68_Y57_N24
\WIRING_THE_ALU|Shifting|shifting|z[0]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|z[0]~2_combout\ = (\Mux37~combout\ & ((\Mux35~combout\ & (\WIRING_THE_ALU|Shifting|shifting|MUXout1[6]~21_combout\)) # (!\Mux35~combout\ & ((\WIRING_THE_ALU|Shifting|shifting|MUXout1[4]~23_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux35~combout\,
	datab => \WIRING_THE_ALU|Shifting|shifting|MUXout1[6]~21_combout\,
	datac => \Mux37~combout\,
	datad => \WIRING_THE_ALU|Shifting|shifting|MUXout1[4]~23_combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|z[0]~2_combout\);

-- Location: LCCOMB_X67_Y56_N26
\WIRING_THE_ALU|Shifting|xToIn[18]~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|xToIn[18]~14_combout\ = (\ALUFunct[2]~input_o\ & ((\A[18]~9_combout\))) # (!\ALUFunct[2]~input_o\ & (\A[13]~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[13]~19_combout\,
	datac => \ALUFunct[2]~input_o\,
	datad => \A[18]~9_combout\,
	combout => \WIRING_THE_ALU|Shifting|xToIn[18]~14_combout\);

-- Location: LCCOMB_X67_Y56_N4
\WIRING_THE_ALU|Shifting|shifting|MUXout2[2]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|MUXout2[2]~2_combout\ = (\WIRING_THE_ALU|Shifting|shifting|MUXout1[4]~14_combout\ & (((\WIRING_THE_ALU|Shifting|shifting|MUXout1[31]~15_combout\)))) # (!\WIRING_THE_ALU|Shifting|shifting|MUXout1[4]~14_combout\ & 
-- ((\WIRING_THE_ALU|Shifting|shifting|MUXout1[31]~15_combout\ & (\WIRING_THE_ALU|Shifting|xToIn[18]~14_combout\)) # (!\WIRING_THE_ALU|Shifting|shifting|MUXout1[31]~15_combout\ & ((\A[2]~24_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Shifting|xToIn[18]~14_combout\,
	datab => \WIRING_THE_ALU|Shifting|shifting|MUXout1[4]~14_combout\,
	datac => \WIRING_THE_ALU|Shifting|shifting|MUXout1[31]~15_combout\,
	datad => \A[2]~24_combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|MUXout2[2]~2_combout\);

-- Location: LCCOMB_X69_Y53_N16
\WIRING_THE_ALU|Shifting|xToIn[26]~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|xToIn[26]~15_combout\ = (\ALUFunct[2]~input_o\ & (\A[26]~2_combout\)) # (!\ALUFunct[2]~input_o\ & ((\A[5]~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[26]~2_combout\,
	datac => \A[5]~27_combout\,
	datad => \ALUFunct[2]~input_o\,
	combout => \WIRING_THE_ALU|Shifting|xToIn[26]~15_combout\);

-- Location: LCCOMB_X67_Y56_N6
\WIRING_THE_ALU|Shifting|shifting|MUXout0[10]~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|MUXout0[10]~14_combout\ = (\ALUFunct[2]~input_o\ & ((\A[10]~22_combout\))) # (!\ALUFunct[2]~input_o\ & (\A[21]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[21]~12_combout\,
	datac => \ALUFunct[2]~input_o\,
	datad => \A[10]~22_combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|MUXout0[10]~14_combout\);

-- Location: LCCOMB_X67_Y56_N24
\WIRING_THE_ALU|Shifting|shifting|MUXout0[10]~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|MUXout0[10]~15_combout\ = (\Mux41~combout\ & (\WIRING_THE_ALU|Shifting|xToIn[26]~15_combout\)) # (!\Mux41~combout\ & ((\WIRING_THE_ALU|Shifting|shifting|MUXout0[10]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux41~combout\,
	datac => \WIRING_THE_ALU|Shifting|xToIn[26]~15_combout\,
	datad => \WIRING_THE_ALU|Shifting|shifting|MUXout0[10]~14_combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|MUXout0[10]~15_combout\);

-- Location: LCCOMB_X67_Y56_N2
\WIRING_THE_ALU|Shifting|shifting|MUXout2[2]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|MUXout2[2]~3_combout\ = (\WIRING_THE_ALU|Shifting|shifting|MUXout2[2]~2_combout\ & (((\WIRING_THE_ALU|Shifting|shifting|MUXout0[10]~15_combout\) # (!\WIRING_THE_ALU|Shifting|shifting|MUXout1[4]~14_combout\)))) # 
-- (!\WIRING_THE_ALU|Shifting|shifting|MUXout2[2]~2_combout\ & (\A[29]~1_combout\ & (\WIRING_THE_ALU|Shifting|shifting|MUXout1[4]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[29]~1_combout\,
	datab => \WIRING_THE_ALU|Shifting|shifting|MUXout2[2]~2_combout\,
	datac => \WIRING_THE_ALU|Shifting|shifting|MUXout1[4]~14_combout\,
	datad => \WIRING_THE_ALU|Shifting|shifting|MUXout0[10]~15_combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|MUXout2[2]~3_combout\);

-- Location: LCCOMB_X68_Y54_N22
\WIRING_THE_ALU|Shifting|xToIn[24]~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|xToIn[24]~13_combout\ = (\ALUFunct[2]~input_o\ & (\A[24]~3_combout\)) # (!\ALUFunct[2]~input_o\ & ((\A[7]~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUFunct[2]~input_o\,
	datac => \A[24]~3_combout\,
	datad => \A[7]~29_combout\,
	combout => \WIRING_THE_ALU|Shifting|xToIn[24]~13_combout\);

-- Location: LCCOMB_X68_Y53_N2
\WIRING_THE_ALU|Shifting|shifting|MUXout0[8]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|MUXout0[8]~12_combout\ = (\ALUFunct[2]~input_o\ & (\A[8]~30_combout\)) # (!\ALUFunct[2]~input_o\ & ((\A[23]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUFunct[2]~input_o\,
	datac => \A[8]~30_combout\,
	datad => \A[23]~14_combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|MUXout0[8]~12_combout\);

-- Location: LCCOMB_X68_Y53_N12
\WIRING_THE_ALU|Shifting|shifting|MUXout0[8]~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|MUXout0[8]~13_combout\ = (\Mux41~combout\ & (\WIRING_THE_ALU|Shifting|xToIn[24]~13_combout\)) # (!\Mux41~combout\ & ((\WIRING_THE_ALU|Shifting|shifting|MUXout0[8]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux41~combout\,
	datac => \WIRING_THE_ALU|Shifting|xToIn[24]~13_combout\,
	datad => \WIRING_THE_ALU|Shifting|shifting|MUXout0[8]~12_combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|MUXout0[8]~13_combout\);

-- Location: LCCOMB_X69_Y56_N10
\WIRING_THE_ALU|Shifting|shifting|z[0]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|z[0]~3_combout\ = (\ALUFunct[2]~input_o\ & (\A[0]~0_combout\)) # (!\ALUFunct[2]~input_o\ & ((\A[31]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUFunct[2]~input_o\,
	datab => \A[0]~0_combout\,
	datad => \A[31]~7_combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|z[0]~3_combout\);

-- Location: LCCOMB_X69_Y56_N24
\WIRING_THE_ALU|Shifting|xToIn[16]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|xToIn[16]~12_combout\ = (\ALUFunct[2]~input_o\ & (\A[16]~16_combout\)) # (!\ALUFunct[2]~input_o\ & ((\A[15]~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[16]~16_combout\,
	datac => \A[15]~17_combout\,
	datad => \ALUFunct[2]~input_o\,
	combout => \WIRING_THE_ALU|Shifting|xToIn[16]~12_combout\);

-- Location: LCCOMB_X69_Y56_N20
\WIRING_THE_ALU|Shifting|shifting|z[0]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|z[0]~4_combout\ = (!\Mux39~combout\ & ((\Mux41~combout\ & ((\WIRING_THE_ALU|Shifting|xToIn[16]~12_combout\))) # (!\Mux41~combout\ & (\WIRING_THE_ALU|Shifting|shifting|z[0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Shifting|shifting|z[0]~3_combout\,
	datab => \WIRING_THE_ALU|Shifting|xToIn[16]~12_combout\,
	datac => \Mux39~combout\,
	datad => \Mux41~combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|z[0]~4_combout\);

-- Location: LCCOMB_X68_Y57_N18
\WIRING_THE_ALU|Shifting|shifting|z[0]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|z[0]~5_combout\ = (!\Mux35~combout\ & ((\WIRING_THE_ALU|Shifting|shifting|z[0]~4_combout\) # ((\Mux39~combout\ & \WIRING_THE_ALU|Shifting|shifting|MUXout0[8]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux35~combout\,
	datab => \Mux39~combout\,
	datac => \WIRING_THE_ALU|Shifting|shifting|MUXout0[8]~13_combout\,
	datad => \WIRING_THE_ALU|Shifting|shifting|z[0]~4_combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|z[0]~5_combout\);

-- Location: LCCOMB_X68_Y57_N28
\WIRING_THE_ALU|Shifting|shifting|z[0]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|z[0]~6_combout\ = (!\Mux37~combout\ & ((\WIRING_THE_ALU|Shifting|shifting|z[0]~5_combout\) # ((\Mux35~combout\ & \WIRING_THE_ALU|Shifting|shifting|MUXout2[2]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux35~combout\,
	datab => \WIRING_THE_ALU|Shifting|shifting|MUXout2[2]~3_combout\,
	datac => \Mux37~combout\,
	datad => \WIRING_THE_ALU|Shifting|shifting|z[0]~5_combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|z[0]~6_combout\);

-- Location: LCCOMB_X68_Y57_N6
\WIRING_THE_ALU|Shifting|shifting|z[0]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|z[0]~7_combout\ = (\Mux0~combout\ & (\WIRING_THE_ALU|Shifting|shifting|MUXout3[1]~6_combout\)) # (!\Mux0~combout\ & (((\WIRING_THE_ALU|Shifting|shifting|z[0]~2_combout\) # 
-- (\WIRING_THE_ALU|Shifting|shifting|z[0]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Shifting|shifting|MUXout3[1]~6_combout\,
	datab => \Mux0~combout\,
	datac => \WIRING_THE_ALU|Shifting|shifting|z[0]~2_combout\,
	datad => \WIRING_THE_ALU|Shifting|shifting|z[0]~6_combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|z[0]~7_combout\);

-- Location: LCCOMB_X68_Y59_N16
\WIRING_THE_ALU|Mux31~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Mux31~2_combout\ = (\ALUFunct[0]~input_o\ & ((\ALUFunct[2]~input_o\ & ((\WIRING_THE_ALU|Shifting|shifting|z[0]~7_combout\))) # (!\ALUFunct[2]~input_o\ & (\WIRING_THE_ALU|Shifting|shifting|z[31]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUFunct[2]~input_o\,
	datab => \WIRING_THE_ALU|Shifting|shifting|z[31]~10_combout\,
	datac => \ALUFunct[0]~input_o\,
	datad => \WIRING_THE_ALU|Shifting|shifting|z[0]~7_combout\,
	combout => \WIRING_THE_ALU|Mux31~2_combout\);

-- Location: LCCOMB_X67_Y59_N6
\WIRING_THE_ALU|Mux31~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Mux31~3_combout\ = (\WIRING_THE_ALU|Mux31~2_combout\) # ((!\ALUFunct[0]~input_o\ & (\Mux0~combout\ $ (\A[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~combout\,
	datab => \A[0]~0_combout\,
	datac => \ALUFunct[0]~input_o\,
	datad => \WIRING_THE_ALU|Mux31~2_combout\,
	combout => \WIRING_THE_ALU|Mux31~3_combout\);

-- Location: IOIBUF_X86_Y91_N15
\ALUFunct[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALUFunct(1),
	o => \ALUFunct[1]~input_o\);

-- Location: IOIBUF_X92_Y0_N8
\immI[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immI(7),
	o => \immI[7]~input_o\);

-- Location: IOIBUF_X117_Y17_N8
\rs2[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rs2(7),
	o => \rs2[7]~input_o\);

-- Location: IOIBUF_X117_Y42_N8
\PC[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(7),
	o => \PC[7]~input_o\);

-- Location: IOIBUF_X92_Y0_N15
\immS_B[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immS_B(7),
	o => \immS_B[7]~input_o\);

-- Location: LCCOMB_X89_Y42_N0
\Mux47~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux47~0_combout\ = (\Mux37~2_combout\ & (((\PC[7]~input_o\)) # (!\Mux37~1_combout\))) # (!\Mux37~2_combout\ & (\Mux37~1_combout\ & ((\immS_B[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux37~2_combout\,
	datab => \Mux37~1_combout\,
	datac => \PC[7]~input_o\,
	datad => \immS_B[7]~input_o\,
	combout => \Mux47~0_combout\);

-- Location: LCCOMB_X89_Y42_N10
Mux47 : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux47~combout\ = (\Mux37~0_combout\ & (((\Mux47~0_combout\)))) # (!\Mux37~0_combout\ & ((\Mux47~0_combout\ & (\immI[7]~input_o\)) # (!\Mux47~0_combout\ & ((\rs2[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \immI[7]~input_o\,
	datab => \Mux37~0_combout\,
	datac => \rs2[7]~input_o\,
	datad => \Mux47~0_combout\,
	combout => \Mux47~combout\);

-- Location: LCCOMB_X70_Y53_N20
\WIRING_THE_ALU|set_a_less_b|wiring|bits07|a_eq_b~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|set_a_less_b|wiring|bits07|a_eq_b~2_combout\ = \Mux47~combout\ $ (((\ASEL~input_o\ & ((\immU_J[7]~input_o\))) # (!\ASEL~input_o\ & (\rs1[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux47~combout\,
	datab => \rs1[7]~input_o\,
	datac => \immU_J[7]~input_o\,
	datad => \ASEL~input_o\,
	combout => \WIRING_THE_ALU|set_a_less_b|wiring|bits07|a_eq_b~2_combout\);

-- Location: IOIBUF_X117_Y11_N1
\rs2[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rs2(5),
	o => \rs2[5]~input_o\);

-- Location: IOIBUF_X99_Y0_N1
\immS_B[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immS_B(5),
	o => \immS_B[5]~input_o\);

-- Location: IOIBUF_X99_Y0_N8
\PC[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(5),
	o => \PC[5]~input_o\);

-- Location: LCCOMB_X93_Y41_N20
\Mux43~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux43~0_combout\ = (\Mux37~1_combout\ & ((\Mux37~2_combout\ & ((\PC[5]~input_o\))) # (!\Mux37~2_combout\ & (\immS_B[5]~input_o\)))) # (!\Mux37~1_combout\ & (\Mux37~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux37~1_combout\,
	datab => \Mux37~2_combout\,
	datac => \immS_B[5]~input_o\,
	datad => \PC[5]~input_o\,
	combout => \Mux43~0_combout\);

-- Location: IOIBUF_X117_Y41_N1
\immI[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immI(5),
	o => \immI[5]~input_o\);

-- Location: LCCOMB_X93_Y41_N22
Mux43 : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux43~combout\ = (\Mux43~0_combout\ & (((\Mux37~0_combout\) # (\immI[5]~input_o\)))) # (!\Mux43~0_combout\ & (\rs2[5]~input_o\ & (!\Mux37~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs2[5]~input_o\,
	datab => \Mux43~0_combout\,
	datac => \Mux37~0_combout\,
	datad => \immI[5]~input_o\,
	combout => \Mux43~combout\);

-- Location: LCCOMB_X69_Y53_N28
\WIRING_THE_ALU|set_a_less_b|wiring|bits05|a_eq_b~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|set_a_less_b|wiring|bits05|a_eq_b~2_combout\ = \Mux43~combout\ $ (((\ASEL~input_o\ & ((\immU_J[5]~input_o\))) # (!\ASEL~input_o\ & (\rs1[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs1[5]~input_o\,
	datab => \immU_J[5]~input_o\,
	datac => \ASEL~input_o\,
	datad => \Mux43~combout\,
	combout => \WIRING_THE_ALU|set_a_less_b|wiring|bits05|a_eq_b~2_combout\);

-- Location: LCCOMB_X67_Y59_N30
\WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~16_combout\ = (\Mux35~combout\ & (((\Mux0~combout\ & !\A[0]~0_combout\)) # (!\A[1]~23_combout\))) # (!\Mux35~combout\ & (!\A[1]~23_combout\ & (\Mux0~combout\ & !\A[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux35~combout\,
	datab => \A[1]~23_combout\,
	datac => \Mux0~combout\,
	datad => \A[0]~0_combout\,
	combout => \WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~16_combout\);

-- Location: LCCOMB_X67_Y58_N10
\WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~17_combout\ = (\Mux37~combout\ & ((\WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~16_combout\) # (!\A[2]~24_combout\))) # (!\Mux37~combout\ & (\WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~16_combout\ & 
-- !\A[2]~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux37~combout\,
	datac => \WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~16_combout\,
	datad => \A[2]~24_combout\,
	combout => \WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~17_combout\);

-- Location: LCCOMB_X67_Y58_N20
\WIRING_THE_ALU|set_a_less_b|wiring|bits04|a_eq_b~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|set_a_less_b|wiring|bits04|a_eq_b~2_combout\ = \Mux41~combout\ $ (((\ASEL~input_o\ & ((\immU_J[4]~input_o\))) # (!\ASEL~input_o\ & (\rs1[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux41~combout\,
	datab => \rs1[4]~input_o\,
	datac => \immU_J[4]~input_o\,
	datad => \ASEL~input_o\,
	combout => \WIRING_THE_ALU|set_a_less_b|wiring|bits04|a_eq_b~2_combout\);

-- Location: LCCOMB_X67_Y58_N6
\WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~18_combout\ = (!\WIRING_THE_ALU|set_a_less_b|wiring|bits04|a_eq_b~2_combout\ & ((\WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~17_combout\ & ((\Mux39~combout\) # (!\A[3]~25_combout\))) # 
-- (!\WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~17_combout\ & (!\A[3]~25_combout\ & \Mux39~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~17_combout\,
	datab => \A[3]~25_combout\,
	datac => \Mux39~combout\,
	datad => \WIRING_THE_ALU|set_a_less_b|wiring|bits04|a_eq_b~2_combout\,
	combout => \WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~18_combout\);

-- Location: LCCOMB_X67_Y58_N24
\WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~19_combout\ = (!\WIRING_THE_ALU|set_a_less_b|wiring|bits05|a_eq_b~2_combout\ & ((\WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~18_combout\) # ((!\A[4]~26_combout\ & \Mux41~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|set_a_less_b|wiring|bits05|a_eq_b~2_combout\,
	datab => \A[4]~26_combout\,
	datac => \WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~18_combout\,
	datad => \Mux41~combout\,
	combout => \WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~19_combout\);

-- Location: IOIBUF_X95_Y0_N1
\immI[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immI(6),
	o => \immI[6]~input_o\);

-- Location: IOIBUF_X117_Y21_N1
\PC[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(6),
	o => \PC[6]~input_o\);

-- Location: IOIBUF_X117_Y21_N8
\immS_B[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immS_B(6),
	o => \immS_B[6]~input_o\);

-- Location: LCCOMB_X93_Y41_N24
\Mux45~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux45~0_combout\ = (\Mux37~1_combout\ & ((\Mux37~2_combout\ & (\PC[6]~input_o\)) # (!\Mux37~2_combout\ & ((\immS_B[6]~input_o\))))) # (!\Mux37~1_combout\ & (\Mux37~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux37~1_combout\,
	datab => \Mux37~2_combout\,
	datac => \PC[6]~input_o\,
	datad => \immS_B[6]~input_o\,
	combout => \Mux45~0_combout\);

-- Location: IOIBUF_X117_Y19_N8
\rs2[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rs2(6),
	o => \rs2[6]~input_o\);

-- Location: LCCOMB_X93_Y41_N26
Mux45 : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux45~combout\ = (\Mux45~0_combout\ & ((\immI[6]~input_o\) # ((\Mux37~0_combout\)))) # (!\Mux45~0_combout\ & (((!\Mux37~0_combout\ & \rs2[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \immI[6]~input_o\,
	datab => \Mux45~0_combout\,
	datac => \Mux37~0_combout\,
	datad => \rs2[6]~input_o\,
	combout => \Mux45~combout\);

-- Location: LCCOMB_X70_Y57_N6
\WIRING_THE_ALU|set_a_less_b|wiring|bits06|a_eq_b~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|set_a_less_b|wiring|bits06|a_eq_b~2_combout\ = \Mux45~combout\ $ (((\ASEL~input_o\ & ((\immU_J[6]~input_o\))) # (!\ASEL~input_o\ & (\rs1[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ASEL~input_o\,
	datab => \rs1[6]~input_o\,
	datac => \Mux45~combout\,
	datad => \immU_J[6]~input_o\,
	combout => \WIRING_THE_ALU|set_a_less_b|wiring|bits06|a_eq_b~2_combout\);

-- Location: LCCOMB_X70_Y57_N2
\WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~20_combout\ = (!\WIRING_THE_ALU|set_a_less_b|wiring|bits06|a_eq_b~2_combout\ & ((\WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~19_combout\) # ((!\A[5]~27_combout\ & \Mux43~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~27_combout\,
	datab => \Mux43~combout\,
	datac => \WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~19_combout\,
	datad => \WIRING_THE_ALU|set_a_less_b|wiring|bits06|a_eq_b~2_combout\,
	combout => \WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~20_combout\);

-- Location: LCCOMB_X70_Y57_N20
\WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~21_combout\ = (!\WIRING_THE_ALU|set_a_less_b|wiring|bits07|a_eq_b~2_combout\ & ((\WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~20_combout\) # ((\Mux45~combout\ & !\A[6]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|set_a_less_b|wiring|bits07|a_eq_b~2_combout\,
	datab => \WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~20_combout\,
	datac => \Mux45~combout\,
	datad => \A[6]~28_combout\,
	combout => \WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~21_combout\);

-- Location: IOIBUF_X117_Y43_N8
\PC[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(8),
	o => \PC[8]~input_o\);

-- Location: IOIBUF_X88_Y0_N15
\immS_B[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immS_B(8),
	o => \immS_B[8]~input_o\);

-- Location: LCCOMB_X89_Y42_N12
\Mux49~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux49~0_combout\ = (\Mux37~1_combout\ & ((\Mux37~2_combout\ & (\PC[8]~input_o\)) # (!\Mux37~2_combout\ & ((\immS_B[8]~input_o\))))) # (!\Mux37~1_combout\ & (((\Mux37~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[8]~input_o\,
	datab => \Mux37~1_combout\,
	datac => \Mux37~2_combout\,
	datad => \immS_B[8]~input_o\,
	combout => \Mux49~0_combout\);

-- Location: IOIBUF_X111_Y91_N15
\rs2[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rs2(8),
	o => \rs2[8]~input_o\);

-- Location: IOIBUF_X117_Y42_N1
\immI[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immI(8),
	o => \immI[8]~input_o\);

-- Location: LCCOMB_X89_Y42_N30
Mux49 : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux49~combout\ = (\Mux49~0_combout\ & ((\Mux37~0_combout\) # ((\immI[8]~input_o\)))) # (!\Mux49~0_combout\ & (!\Mux37~0_combout\ & (\rs2[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux49~0_combout\,
	datab => \Mux37~0_combout\,
	datac => \rs2[8]~input_o\,
	datad => \immI[8]~input_o\,
	combout => \Mux49~combout\);

-- Location: LCCOMB_X68_Y53_N16
\WIRING_THE_ALU|set_a_less_b|wiring|bits08|a_eq_b~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|set_a_less_b|wiring|bits08|a_eq_b~2_combout\ = \Mux49~combout\ $ (((\ASEL~input_o\ & ((\immU_J[8]~input_o\))) # (!\ASEL~input_o\ & (\rs1[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs1[8]~input_o\,
	datab => \Mux49~combout\,
	datac => \immU_J[8]~input_o\,
	datad => \ASEL~input_o\,
	combout => \WIRING_THE_ALU|set_a_less_b|wiring|bits08|a_eq_b~2_combout\);

-- Location: LCCOMB_X70_Y53_N10
\WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~22_combout\ = (!\WIRING_THE_ALU|set_a_less_b|wiring|bits08|a_eq_b~2_combout\ & ((\WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~21_combout\) # ((\Mux47~combout\ & !\A[7]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux47~combout\,
	datab => \WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~21_combout\,
	datac => \WIRING_THE_ALU|set_a_less_b|wiring|bits08|a_eq_b~2_combout\,
	datad => \A[7]~29_combout\,
	combout => \WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~22_combout\);

-- Location: IOIBUF_X117_Y26_N8
\PC[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(9),
	o => \PC[9]~input_o\);

-- Location: IOIBUF_X97_Y0_N1
\immS_B[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immS_B(9),
	o => \immS_B[9]~input_o\);

-- Location: LCCOMB_X89_Y42_N8
\Mux51~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux51~0_combout\ = (\Mux37~1_combout\ & ((\Mux37~2_combout\ & (\PC[9]~input_o\)) # (!\Mux37~2_combout\ & ((\immS_B[9]~input_o\))))) # (!\Mux37~1_combout\ & (((\Mux37~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[9]~input_o\,
	datab => \Mux37~1_combout\,
	datac => \immS_B[9]~input_o\,
	datad => \Mux37~2_combout\,
	combout => \Mux51~0_combout\);

-- Location: IOIBUF_X61_Y0_N1
\immI[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immI(9),
	o => \immI[9]~input_o\);

-- Location: IOIBUF_X117_Y11_N8
\rs2[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rs2(9),
	o => \rs2[9]~input_o\);

-- Location: LCCOMB_X68_Y53_N20
Mux51 : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux51~combout\ = (\Mux51~0_combout\ & ((\immI[9]~input_o\) # ((\Mux37~0_combout\)))) # (!\Mux51~0_combout\ & (((\rs2[9]~input_o\ & !\Mux37~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux51~0_combout\,
	datab => \immI[9]~input_o\,
	datac => \rs2[9]~input_o\,
	datad => \Mux37~0_combout\,
	combout => \Mux51~combout\);

-- Location: LCCOMB_X68_Y53_N18
\WIRING_THE_ALU|set_a_less_b|wiring|bits09|a_eq_b~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|set_a_less_b|wiring|bits09|a_eq_b~2_combout\ = \Mux51~combout\ $ (((\ASEL~input_o\ & ((\immU_J[9]~input_o\))) # (!\ASEL~input_o\ & (\rs1[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs1[9]~input_o\,
	datab => \ASEL~input_o\,
	datac => \immU_J[9]~input_o\,
	datad => \Mux51~combout\,
	combout => \WIRING_THE_ALU|set_a_less_b|wiring|bits09|a_eq_b~2_combout\);

-- Location: LCCOMB_X68_Y53_N6
\WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~23_combout\ = (!\WIRING_THE_ALU|set_a_less_b|wiring|bits09|a_eq_b~2_combout\ & ((\WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~22_combout\) # ((!\A[8]~30_combout\ & \Mux49~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~22_combout\,
	datab => \A[8]~30_combout\,
	datac => \Mux49~combout\,
	datad => \WIRING_THE_ALU|set_a_less_b|wiring|bits09|a_eq_b~2_combout\,
	combout => \WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~23_combout\);

-- Location: IOIBUF_X117_Y33_N8
\PC[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(11),
	o => \PC[11]~input_o\);

-- Location: IOIBUF_X90_Y0_N8
\immS_B[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immS_B(11),
	o => \immS_B[11]~input_o\);

-- Location: LCCOMB_X89_Y40_N30
\Mux55~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux55~0_combout\ = (\Mux37~2_combout\ & (((\PC[11]~input_o\)) # (!\Mux37~1_combout\))) # (!\Mux37~2_combout\ & (\Mux37~1_combout\ & ((\immS_B[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux37~2_combout\,
	datab => \Mux37~1_combout\,
	datac => \PC[11]~input_o\,
	datad => \immS_B[11]~input_o\,
	combout => \Mux55~0_combout\);

-- Location: IOIBUF_X46_Y0_N1
\rs2[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rs2(11),
	o => \rs2[11]~input_o\);

-- Location: IOIBUF_X117_Y28_N8
\immI[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immI(11),
	o => \immI[11]~input_o\);

-- Location: LCCOMB_X89_Y40_N16
Mux55 : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux55~combout\ = (\Mux55~0_combout\ & ((\Mux37~0_combout\) # ((\immI[11]~input_o\)))) # (!\Mux55~0_combout\ & (!\Mux37~0_combout\ & (\rs2[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux55~0_combout\,
	datab => \Mux37~0_combout\,
	datac => \rs2[11]~input_o\,
	datad => \immI[11]~input_o\,
	combout => \Mux55~combout\);

-- Location: LCCOMB_X68_Y51_N10
\WIRING_THE_ALU|set_a_less_b|wiring|bits11|a_eq_b~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|set_a_less_b|wiring|bits11|a_eq_b~2_combout\ = \Mux55~combout\ $ (((\ASEL~input_o\ & ((\immU_J[11]~input_o\))) # (!\ASEL~input_o\ & (\rs1[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux55~combout\,
	datab => \rs1[11]~input_o\,
	datac => \ASEL~input_o\,
	datad => \immU_J[11]~input_o\,
	combout => \WIRING_THE_ALU|set_a_less_b|wiring|bits11|a_eq_b~2_combout\);

-- Location: IOIBUF_X108_Y91_N1
\rs2[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rs2(12),
	o => \rs2[12]~input_o\);

-- Location: IOIBUF_X50_Y91_N1
\immI[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immI(12),
	o => \immI[12]~input_o\);

-- Location: IOIBUF_X92_Y0_N1
\PC[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(12),
	o => \PC[12]~input_o\);

-- Location: IOIBUF_X90_Y0_N1
\immS_B[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immS_B(12),
	o => \immS_B[12]~input_o\);

-- Location: LCCOMB_X89_Y40_N4
\Mux57~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux57~0_combout\ = (\Mux37~1_combout\ & ((\Mux37~2_combout\ & (\PC[12]~input_o\)) # (!\Mux37~2_combout\ & ((\immS_B[12]~input_o\))))) # (!\Mux37~1_combout\ & (((\Mux37~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[12]~input_o\,
	datab => \Mux37~1_combout\,
	datac => \Mux37~2_combout\,
	datad => \immS_B[12]~input_o\,
	combout => \Mux57~0_combout\);

-- Location: LCCOMB_X69_Y54_N26
Mux57 : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux57~combout\ = (\Mux57~0_combout\ & (((\immI[12]~input_o\) # (\Mux37~0_combout\)))) # (!\Mux57~0_combout\ & (\rs2[12]~input_o\ & ((!\Mux37~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs2[12]~input_o\,
	datab => \immI[12]~input_o\,
	datac => \Mux57~0_combout\,
	datad => \Mux37~0_combout\,
	combout => \Mux57~combout\);

-- Location: LCCOMB_X69_Y54_N16
\WIRING_THE_ALU|set_a_less_b|wiring|bits12|a_eq_b~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|set_a_less_b|wiring|bits12|a_eq_b~2_combout\ = \Mux57~combout\ $ (((\ASEL~input_o\ & ((\immU_J[12]~input_o\))) # (!\ASEL~input_o\ & (\rs1[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ASEL~input_o\,
	datab => \rs1[12]~input_o\,
	datac => \Mux57~combout\,
	datad => \immU_J[12]~input_o\,
	combout => \WIRING_THE_ALU|set_a_less_b|wiring|bits12|a_eq_b~2_combout\);

-- Location: IOIBUF_X24_Y91_N1
\rs2[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rs2(10),
	o => \rs2[10]~input_o\);

-- Location: IOIBUF_X117_Y8_N1
\immI[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immI(10),
	o => \immI[10]~input_o\);

-- Location: IOIBUF_X117_Y24_N8
\PC[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(10),
	o => \PC[10]~input_o\);

-- Location: IOIBUF_X117_Y26_N1
\immS_B[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immS_B(10),
	o => \immS_B[10]~input_o\);

-- Location: LCCOMB_X89_Y40_N2
\Mux53~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux53~0_combout\ = (\Mux37~2_combout\ & (((\PC[10]~input_o\)) # (!\Mux37~1_combout\))) # (!\Mux37~2_combout\ & (\Mux37~1_combout\ & ((\immS_B[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux37~2_combout\,
	datab => \Mux37~1_combout\,
	datac => \PC[10]~input_o\,
	datad => \immS_B[10]~input_o\,
	combout => \Mux53~0_combout\);

-- Location: LCCOMB_X89_Y40_N28
Mux53 : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux53~combout\ = (\Mux37~0_combout\ & (((\Mux53~0_combout\)))) # (!\Mux37~0_combout\ & ((\Mux53~0_combout\ & ((\immI[10]~input_o\))) # (!\Mux53~0_combout\ & (\rs2[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs2[10]~input_o\,
	datab => \Mux37~0_combout\,
	datac => \immI[10]~input_o\,
	datad => \Mux53~0_combout\,
	combout => \Mux53~combout\);

-- Location: LCCOMB_X68_Y52_N6
\WIRING_THE_ALU|set_a_less_b|wiring|bits10|a_eq_b~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|set_a_less_b|wiring|bits10|a_eq_b~2_combout\ = \Mux53~combout\ $ (((\ASEL~input_o\ & (\immU_J[10]~input_o\)) # (!\ASEL~input_o\ & ((\rs1[10]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \immU_J[10]~input_o\,
	datab => \Mux53~combout\,
	datac => \ASEL~input_o\,
	datad => \rs1[10]~input_o\,
	combout => \WIRING_THE_ALU|set_a_less_b|wiring|bits10|a_eq_b~2_combout\);

-- Location: IOIBUF_X88_Y91_N1
\PC[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(15),
	o => \PC[15]~input_o\);

-- Location: IOIBUF_X86_Y0_N15
\immS_B[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immS_B(15),
	o => \immS_B[15]~input_o\);

-- Location: LCCOMB_X88_Y40_N18
\Mux63~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux63~0_combout\ = (\Mux37~2_combout\ & ((\PC[15]~input_o\) # ((!\Mux37~1_combout\)))) # (!\Mux37~2_combout\ & (((\Mux37~1_combout\ & \immS_B[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[15]~input_o\,
	datab => \Mux37~2_combout\,
	datac => \Mux37~1_combout\,
	datad => \immS_B[15]~input_o\,
	combout => \Mux63~0_combout\);

-- Location: IOIBUF_X50_Y91_N22
\immI[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immI(15),
	o => \immI[15]~input_o\);

-- Location: IOIBUF_X82_Y0_N22
\rs2[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rs2(15),
	o => \rs2[15]~input_o\);

-- Location: LCCOMB_X70_Y55_N10
Mux63 : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux63~combout\ = (\Mux63~0_combout\ & ((\immI[15]~input_o\) # ((\Mux37~0_combout\)))) # (!\Mux63~0_combout\ & (((\rs2[15]~input_o\ & !\Mux37~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux63~0_combout\,
	datab => \immI[15]~input_o\,
	datac => \rs2[15]~input_o\,
	datad => \Mux37~0_combout\,
	combout => \Mux63~combout\);

-- Location: LCCOMB_X69_Y55_N14
\WIRING_THE_ALU|set_a_less_b|wiring|bits15|a_eq_b~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|set_a_less_b|wiring|bits15|a_eq_b~2_combout\ = \Mux63~combout\ $ (((\ASEL~input_o\ & ((\immU_J[15]~input_o\))) # (!\ASEL~input_o\ & (\rs1[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs1[15]~input_o\,
	datab => \immU_J[15]~input_o\,
	datac => \Mux63~combout\,
	datad => \ASEL~input_o\,
	combout => \WIRING_THE_ALU|set_a_less_b|wiring|bits15|a_eq_b~2_combout\);

-- Location: IOIBUF_X68_Y91_N15
\immI[16]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immI(16),
	o => \immI[16]~input_o\);

-- Location: IOIBUF_X28_Y0_N1
\rs2[16]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rs2(16),
	o => \rs2[16]~input_o\);

-- Location: IOIBUF_X117_Y39_N1
\PC[16]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(16),
	o => \PC[16]~input_o\);

-- Location: IOIBUF_X117_Y39_N8
\immS_B[16]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immS_B(16),
	o => \immS_B[16]~input_o\);

-- Location: LCCOMB_X88_Y40_N8
\Mux65~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux65~0_combout\ = (\Mux37~2_combout\ & ((\PC[16]~input_o\) # ((!\Mux37~1_combout\)))) # (!\Mux37~2_combout\ & (((\Mux37~1_combout\ & \immS_B[16]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[16]~input_o\,
	datab => \Mux37~2_combout\,
	datac => \Mux37~1_combout\,
	datad => \immS_B[16]~input_o\,
	combout => \Mux65~0_combout\);

-- Location: LCCOMB_X69_Y53_N20
Mux65 : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux65~combout\ = (\Mux37~0_combout\ & (((\Mux65~0_combout\)))) # (!\Mux37~0_combout\ & ((\Mux65~0_combout\ & (\immI[16]~input_o\)) # (!\Mux65~0_combout\ & ((\rs2[16]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux37~0_combout\,
	datab => \immI[16]~input_o\,
	datac => \rs2[16]~input_o\,
	datad => \Mux65~0_combout\,
	combout => \Mux65~combout\);

-- Location: LCCOMB_X69_Y55_N20
\WIRING_THE_ALU|set_a_less_b|wiring|bits16|a_eq_b~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|set_a_less_b|wiring|bits16|a_eq_b~2_combout\ = \Mux65~combout\ $ (((\ASEL~input_o\ & ((\immU_J[16]~input_o\))) # (!\ASEL~input_o\ & (\rs1[16]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs1[16]~input_o\,
	datab => \Mux65~combout\,
	datac => \immU_J[16]~input_o\,
	datad => \ASEL~input_o\,
	combout => \WIRING_THE_ALU|set_a_less_b|wiring|bits16|a_eq_b~2_combout\);

-- Location: IOIBUF_X117_Y13_N8
\rs2[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rs2(13),
	o => \rs2[13]~input_o\);

-- Location: IOIBUF_X88_Y0_N22
\PC[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(13),
	o => \PC[13]~input_o\);

-- Location: IOIBUF_X117_Y36_N8
\immS_B[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immS_B(13),
	o => \immS_B[13]~input_o\);

-- Location: LCCOMB_X89_Y40_N8
\Mux59~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux59~0_combout\ = (\Mux37~1_combout\ & ((\Mux37~2_combout\ & (\PC[13]~input_o\)) # (!\Mux37~2_combout\ & ((\immS_B[13]~input_o\))))) # (!\Mux37~1_combout\ & (((\Mux37~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[13]~input_o\,
	datab => \Mux37~1_combout\,
	datac => \Mux37~2_combout\,
	datad => \immS_B[13]~input_o\,
	combout => \Mux59~0_combout\);

-- Location: IOIBUF_X117_Y36_N1
\immI[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immI(13),
	o => \immI[13]~input_o\);

-- Location: LCCOMB_X89_Y40_N10
Mux59 : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux59~combout\ = (\Mux37~0_combout\ & (((\Mux59~0_combout\)))) # (!\Mux37~0_combout\ & ((\Mux59~0_combout\ & ((\immI[13]~input_o\))) # (!\Mux59~0_combout\ & (\rs2[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs2[13]~input_o\,
	datab => \Mux37~0_combout\,
	datac => \Mux59~0_combout\,
	datad => \immI[13]~input_o\,
	combout => \Mux59~combout\);

-- Location: LCCOMB_X70_Y55_N30
\WIRING_THE_ALU|set_a_less_b|wiring|bits13|a_eq_b~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|set_a_less_b|wiring|bits13|a_eq_b~2_combout\ = \Mux59~combout\ $ (((\ASEL~input_o\ & ((\immU_J[13]~input_o\))) # (!\ASEL~input_o\ & (\rs1[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs1[13]~input_o\,
	datab => \Mux59~combout\,
	datac => \ASEL~input_o\,
	datad => \immU_J[13]~input_o\,
	combout => \WIRING_THE_ALU|set_a_less_b|wiring|bits13|a_eq_b~2_combout\);

-- Location: IOIBUF_X84_Y0_N1
\immI[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immI(14),
	o => \immI[14]~input_o\);

-- Location: IOIBUF_X86_Y0_N8
\immS_B[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immS_B(14),
	o => \immS_B[14]~input_o\);

-- Location: IOIBUF_X117_Y23_N1
\PC[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(14),
	o => \PC[14]~input_o\);

-- Location: LCCOMB_X88_Y40_N20
\Mux61~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux61~0_combout\ = (\Mux37~2_combout\ & (((\PC[14]~input_o\) # (!\Mux37~1_combout\)))) # (!\Mux37~2_combout\ & (\immS_B[14]~input_o\ & (\Mux37~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \immS_B[14]~input_o\,
	datab => \Mux37~2_combout\,
	datac => \Mux37~1_combout\,
	datad => \PC[14]~input_o\,
	combout => \Mux61~0_combout\);

-- Location: IOIBUF_X108_Y0_N22
\rs2[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rs2(14),
	o => \rs2[14]~input_o\);

-- Location: LCCOMB_X70_Y55_N14
Mux61 : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux61~combout\ = (\Mux37~0_combout\ & (((\Mux61~0_combout\)))) # (!\Mux37~0_combout\ & ((\Mux61~0_combout\ & (\immI[14]~input_o\)) # (!\Mux61~0_combout\ & ((\rs2[14]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \immI[14]~input_o\,
	datab => \Mux37~0_combout\,
	datac => \Mux61~0_combout\,
	datad => \rs2[14]~input_o\,
	combout => \Mux61~combout\);

-- Location: LCCOMB_X70_Y55_N20
\WIRING_THE_ALU|set_a_less_b|wiring|bits14|a_eq_b~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|set_a_less_b|wiring|bits14|a_eq_b~2_combout\ = \Mux61~combout\ $ (((\ASEL~input_o\ & ((\immU_J[14]~input_o\))) # (!\ASEL~input_o\ & (\rs1[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs1[14]~input_o\,
	datab => \ASEL~input_o\,
	datac => \Mux61~combout\,
	datad => \immU_J[14]~input_o\,
	combout => \WIRING_THE_ALU|set_a_less_b|wiring|bits14|a_eq_b~2_combout\);

-- Location: LCCOMB_X70_Y55_N18
\WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~14_combout\ = (!\WIRING_THE_ALU|set_a_less_b|wiring|bits15|a_eq_b~2_combout\ & (!\WIRING_THE_ALU|set_a_less_b|wiring|bits16|a_eq_b~2_combout\ & (!\WIRING_THE_ALU|set_a_less_b|wiring|bits13|a_eq_b~2_combout\ & 
-- !\WIRING_THE_ALU|set_a_less_b|wiring|bits14|a_eq_b~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|set_a_less_b|wiring|bits15|a_eq_b~2_combout\,
	datab => \WIRING_THE_ALU|set_a_less_b|wiring|bits16|a_eq_b~2_combout\,
	datac => \WIRING_THE_ALU|set_a_less_b|wiring|bits13|a_eq_b~2_combout\,
	datad => \WIRING_THE_ALU|set_a_less_b|wiring|bits14|a_eq_b~2_combout\,
	combout => \WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~14_combout\);

-- Location: LCCOMB_X68_Y51_N2
\WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~15_combout\ = (!\WIRING_THE_ALU|set_a_less_b|wiring|bits11|a_eq_b~2_combout\ & (!\WIRING_THE_ALU|set_a_less_b|wiring|bits12|a_eq_b~2_combout\ & (!\WIRING_THE_ALU|set_a_less_b|wiring|bits10|a_eq_b~2_combout\ & 
-- \WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|set_a_less_b|wiring|bits11|a_eq_b~2_combout\,
	datab => \WIRING_THE_ALU|set_a_less_b|wiring|bits12|a_eq_b~2_combout\,
	datac => \WIRING_THE_ALU|set_a_less_b|wiring|bits10|a_eq_b~2_combout\,
	datad => \WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~14_combout\,
	combout => \WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~15_combout\);

-- Location: LCCOMB_X68_Y53_N0
\WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~24_combout\ = (\WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~15_combout\ & ((\WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~23_combout\) # ((!\A[9]~31_combout\ & \Mux51~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~23_combout\,
	datab => \WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~15_combout\,
	datac => \A[9]~31_combout\,
	datad => \Mux51~combout\,
	combout => \WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~24_combout\);

-- Location: LCCOMB_X68_Y51_N20
\WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~25_combout\ = (\Mux55~combout\ & (((!\A[10]~22_combout\ & \Mux53~combout\)) # (!\A[11]~21_combout\))) # (!\Mux55~combout\ & (!\A[10]~22_combout\ & (\Mux53~combout\ & !\A[11]~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux55~combout\,
	datab => \A[10]~22_combout\,
	datac => \Mux53~combout\,
	datad => \A[11]~21_combout\,
	combout => \WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~25_combout\);

-- Location: LCCOMB_X70_Y55_N4
\WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~26_combout\ = (!\WIRING_THE_ALU|set_a_less_b|wiring|bits13|a_eq_b~2_combout\ & ((\A[12]~20_combout\ & (\Mux57~combout\ & \WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~25_combout\)) # (!\A[12]~20_combout\ & 
-- ((\Mux57~combout\) # (\WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~25_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[12]~20_combout\,
	datab => \Mux57~combout\,
	datac => \WIRING_THE_ALU|set_a_less_b|wiring|bits13|a_eq_b~2_combout\,
	datad => \WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~25_combout\,
	combout => \WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~26_combout\);

-- Location: LCCOMB_X70_Y55_N22
\WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~27_combout\ = (!\WIRING_THE_ALU|set_a_less_b|wiring|bits14|a_eq_b~2_combout\ & ((\WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~26_combout\) # ((!\A[13]~19_combout\ & \Mux59~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[13]~19_combout\,
	datab => \Mux59~combout\,
	datac => \WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~26_combout\,
	datad => \WIRING_THE_ALU|set_a_less_b|wiring|bits14|a_eq_b~2_combout\,
	combout => \WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~27_combout\);

-- Location: LCCOMB_X70_Y55_N8
\WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~28_combout\ = (!\WIRING_THE_ALU|set_a_less_b|wiring|bits15|a_eq_b~2_combout\ & ((\WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~27_combout\) # ((\Mux61~combout\ & !\A[14]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|set_a_less_b|wiring|bits15|a_eq_b~2_combout\,
	datab => \Mux61~combout\,
	datac => \WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~27_combout\,
	datad => \A[14]~18_combout\,
	combout => \WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~28_combout\);

-- Location: LCCOMB_X70_Y55_N26
\WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~29_combout\ = (!\WIRING_THE_ALU|set_a_less_b|wiring|bits16|a_eq_b~2_combout\ & ((\WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~28_combout\) # ((\Mux63~combout\ & !\A[15]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux63~combout\,
	datab => \WIRING_THE_ALU|set_a_less_b|wiring|bits16|a_eq_b~2_combout\,
	datac => \WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~28_combout\,
	datad => \A[15]~17_combout\,
	combout => \WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~29_combout\);

-- Location: LCCOMB_X68_Y55_N18
\WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~30_combout\ = (\WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~24_combout\) # ((\WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~29_combout\) # ((!\A[16]~16_combout\ & \Mux65~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[16]~16_combout\,
	datab => \WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~24_combout\,
	datac => \Mux65~combout\,
	datad => \WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~29_combout\,
	combout => \WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~30_combout\);

-- Location: IOIBUF_X39_Y91_N22
\immI[24]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immI(24),
	o => \immI[24]~input_o\);

-- Location: IOIBUF_X34_Y0_N22
\rs2[24]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rs2(24),
	o => \rs2[24]~input_o\);

-- Location: IOIBUF_X84_Y91_N8
\PC[24]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(24),
	o => \PC[24]~input_o\);

-- Location: IOIBUF_X117_Y80_N1
\immS_B[24]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immS_B(24),
	o => \immS_B[24]~input_o\);

-- Location: LCCOMB_X70_Y61_N28
\Mux81~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux81~0_combout\ = (\Mux37~2_combout\ & ((\PC[24]~input_o\) # ((!\Mux37~1_combout\)))) # (!\Mux37~2_combout\ & (((\Mux37~1_combout\ & \immS_B[24]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux37~2_combout\,
	datab => \PC[24]~input_o\,
	datac => \Mux37~1_combout\,
	datad => \immS_B[24]~input_o\,
	combout => \Mux81~0_combout\);

-- Location: LCCOMB_X70_Y58_N18
Mux81 : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux81~combout\ = (\Mux37~0_combout\ & (((\Mux81~0_combout\)))) # (!\Mux37~0_combout\ & ((\Mux81~0_combout\ & (\immI[24]~input_o\)) # (!\Mux81~0_combout\ & ((\rs2[24]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \immI[24]~input_o\,
	datab => \Mux37~0_combout\,
	datac => \rs2[24]~input_o\,
	datad => \Mux81~0_combout\,
	combout => \Mux81~combout\);

-- Location: LCCOMB_X70_Y58_N12
\WIRING_THE_ALU|set_a_less_b|wiring|bits24|a_eq_b~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|set_a_less_b|wiring|bits24|a_eq_b~2_combout\ = \Mux81~combout\ $ (((\ASEL~input_o\ & ((\immU_J[24]~input_o\))) # (!\ASEL~input_o\ & (\rs1[24]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux81~combout\,
	datab => \ASEL~input_o\,
	datac => \rs1[24]~input_o\,
	datad => \immU_J[24]~input_o\,
	combout => \WIRING_THE_ALU|set_a_less_b|wiring|bits24|a_eq_b~2_combout\);

-- Location: IOIBUF_X41_Y0_N15
\rs2[26]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rs2(26),
	o => \rs2[26]~input_o\);

-- Location: IOIBUF_X99_Y91_N1
\PC[26]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(26),
	o => \PC[26]~input_o\);

-- Location: IOIBUF_X117_Y68_N1
\immS_B[26]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immS_B(26),
	o => \immS_B[26]~input_o\);

-- Location: LCCOMB_X82_Y61_N24
\Mux85~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux85~0_combout\ = (\Mux37~1_combout\ & ((\Mux37~2_combout\ & (\PC[26]~input_o\)) # (!\Mux37~2_combout\ & ((\immS_B[26]~input_o\))))) # (!\Mux37~1_combout\ & (((\Mux37~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux37~1_combout\,
	datab => \PC[26]~input_o\,
	datac => \immS_B[26]~input_o\,
	datad => \Mux37~2_combout\,
	combout => \Mux85~0_combout\);

-- Location: IOIBUF_X117_Y51_N1
\immI[26]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immI(26),
	o => \immI[26]~input_o\);

-- Location: LCCOMB_X69_Y53_N18
Mux85 : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux85~combout\ = (\Mux85~0_combout\ & (((\Mux37~0_combout\) # (\immI[26]~input_o\)))) # (!\Mux85~0_combout\ & (\rs2[26]~input_o\ & (!\Mux37~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs2[26]~input_o\,
	datab => \Mux85~0_combout\,
	datac => \Mux37~0_combout\,
	datad => \immI[26]~input_o\,
	combout => \Mux85~combout\);

-- Location: LCCOMB_X69_Y53_N10
\WIRING_THE_ALU|set_a_less_b|wiring|bits26|a_eq_b~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|set_a_less_b|wiring|bits26|a_eq_b~2_combout\ = \Mux85~combout\ $ (((\ASEL~input_o\ & ((\immU_J[26]~input_o\))) # (!\ASEL~input_o\ & (\rs1[26]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs1[26]~input_o\,
	datab => \Mux85~combout\,
	datac => \immU_J[26]~input_o\,
	datad => \ASEL~input_o\,
	combout => \WIRING_THE_ALU|set_a_less_b|wiring|bits26|a_eq_b~2_combout\);

-- Location: IOIBUF_X44_Y0_N22
\rs2[25]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rs2(25),
	o => \rs2[25]~input_o\);

-- Location: IOIBUF_X44_Y91_N15
\PC[25]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(25),
	o => \PC[25]~input_o\);

-- Location: IOIBUF_X79_Y91_N15
\immS_B[25]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immS_B(25),
	o => \immS_B[25]~input_o\);

-- Location: LCCOMB_X70_Y61_N22
\Mux83~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux83~0_combout\ = (\Mux37~2_combout\ & ((\PC[25]~input_o\) # ((!\Mux37~1_combout\)))) # (!\Mux37~2_combout\ & (((\Mux37~1_combout\ & \immS_B[25]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux37~2_combout\,
	datab => \PC[25]~input_o\,
	datac => \Mux37~1_combout\,
	datad => \immS_B[25]~input_o\,
	combout => \Mux83~0_combout\);

-- Location: IOIBUF_X39_Y91_N15
\immI[25]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immI(25),
	o => \immI[25]~input_o\);

-- Location: LCCOMB_X70_Y61_N8
Mux83 : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux83~combout\ = (\Mux37~0_combout\ & (((\Mux83~0_combout\)))) # (!\Mux37~0_combout\ & ((\Mux83~0_combout\ & ((\immI[25]~input_o\))) # (!\Mux83~0_combout\ & (\rs2[25]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs2[25]~input_o\,
	datab => \Mux37~0_combout\,
	datac => \Mux83~0_combout\,
	datad => \immI[25]~input_o\,
	combout => \Mux83~combout\);

-- Location: LCCOMB_X70_Y58_N6
\WIRING_THE_ALU|set_a_less_b|wiring|bits24|eqi~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|set_a_less_b|wiring|bits24|eqi~0_combout\ = (\WIRING_THE_ALU|set_a_less_b|wiring|bits24|a_eq_b~2_combout\) # ((\WIRING_THE_ALU|set_a_less_b|wiring|bits26|a_eq_b~2_combout\) # (\A[25]~4_combout\ $ (\Mux83~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|set_a_less_b|wiring|bits24|a_eq_b~2_combout\,
	datab => \WIRING_THE_ALU|set_a_less_b|wiring|bits26|a_eq_b~2_combout\,
	datac => \A[25]~4_combout\,
	datad => \Mux83~combout\,
	combout => \WIRING_THE_ALU|set_a_less_b|wiring|bits24|eqi~0_combout\);

-- Location: IOIBUF_X117_Y69_N8
\PC[29]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(29),
	o => \PC[29]~input_o\);

-- Location: IOIBUF_X75_Y91_N1
\immS_B[29]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immS_B(29),
	o => \immS_B[29]~input_o\);

-- Location: LCCOMB_X70_Y61_N6
\Mux91~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux91~0_combout\ = (\Mux37~2_combout\ & ((\PC[29]~input_o\) # ((!\Mux37~1_combout\)))) # (!\Mux37~2_combout\ & (((\Mux37~1_combout\ & \immS_B[29]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux37~2_combout\,
	datab => \PC[29]~input_o\,
	datac => \Mux37~1_combout\,
	datad => \immS_B[29]~input_o\,
	combout => \Mux91~0_combout\);

-- Location: IOIBUF_X46_Y0_N15
\immI[29]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immI(29),
	o => \immI[29]~input_o\);

-- Location: IOIBUF_X106_Y0_N1
\rs2[29]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rs2(29),
	o => \rs2[29]~input_o\);

-- Location: LCCOMB_X70_Y61_N16
Mux91 : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux91~combout\ = (\Mux91~0_combout\ & ((\immI[29]~input_o\) # ((\Mux37~0_combout\)))) # (!\Mux91~0_combout\ & (((\rs2[29]~input_o\ & !\Mux37~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux91~0_combout\,
	datab => \immI[29]~input_o\,
	datac => \rs2[29]~input_o\,
	datad => \Mux37~0_combout\,
	combout => \Mux91~combout\);

-- Location: LCCOMB_X69_Y59_N20
\WIRING_THE_ALU|set_a_less_b|wiring|bits29|a_eq_b~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|set_a_less_b|wiring|bits29|a_eq_b~2_combout\ = \Mux91~combout\ $ (((\ASEL~input_o\ & ((\immU_J[29]~input_o\))) # (!\ASEL~input_o\ & (\rs1[29]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs1[29]~input_o\,
	datab => \ASEL~input_o\,
	datac => \immU_J[29]~input_o\,
	datad => \Mux91~combout\,
	combout => \WIRING_THE_ALU|set_a_less_b|wiring|bits29|a_eq_b~2_combout\);

-- Location: IOIBUF_X39_Y0_N15
\rs2[31]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rs2(31),
	o => \rs2[31]~input_o\);

-- Location: IOIBUF_X34_Y91_N8
\immI[31]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immI(31),
	o => \immI[31]~input_o\);

-- Location: IOIBUF_X41_Y91_N15
\PC[31]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(31),
	o => \PC[31]~input_o\);

-- Location: IOIBUF_X44_Y91_N22
\immS_B[31]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immS_B(31),
	o => \immS_B[31]~input_o\);

-- Location: LCCOMB_X70_Y61_N10
\Mux95~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux95~0_combout\ = (\Mux37~2_combout\ & ((\PC[31]~input_o\) # ((!\Mux37~1_combout\)))) # (!\Mux37~2_combout\ & (((\Mux37~1_combout\ & \immS_B[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux37~2_combout\,
	datab => \PC[31]~input_o\,
	datac => \Mux37~1_combout\,
	datad => \immS_B[31]~input_o\,
	combout => \Mux95~0_combout\);

-- Location: LCCOMB_X68_Y59_N8
Mux95 : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux95~combout\ = (\Mux37~0_combout\ & (((\Mux95~0_combout\)))) # (!\Mux37~0_combout\ & ((\Mux95~0_combout\ & ((\immI[31]~input_o\))) # (!\Mux95~0_combout\ & (\rs2[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux37~0_combout\,
	datab => \rs2[31]~input_o\,
	datac => \immI[31]~input_o\,
	datad => \Mux95~0_combout\,
	combout => \Mux95~combout\);

-- Location: IOIBUF_X97_Y91_N1
\immI[30]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immI(30),
	o => \immI[30]~input_o\);

-- Location: IOIBUF_X26_Y91_N15
\rs2[30]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rs2(30),
	o => \rs2[30]~input_o\);

-- Location: IOIBUF_X66_Y91_N8
\immS_B[30]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immS_B(30),
	o => \immS_B[30]~input_o\);

-- Location: IOIBUF_X41_Y91_N8
\PC[30]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(30),
	o => \PC[30]~input_o\);

-- Location: LCCOMB_X70_Y61_N2
\Mux93~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux93~0_combout\ = (\Mux37~1_combout\ & ((\Mux37~2_combout\ & ((\PC[30]~input_o\))) # (!\Mux37~2_combout\ & (\immS_B[30]~input_o\)))) # (!\Mux37~1_combout\ & (((\Mux37~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux37~1_combout\,
	datab => \immS_B[30]~input_o\,
	datac => \PC[30]~input_o\,
	datad => \Mux37~2_combout\,
	combout => \Mux93~0_combout\);

-- Location: LCCOMB_X70_Y61_N20
Mux93 : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux93~combout\ = (\Mux37~0_combout\ & (((\Mux93~0_combout\)))) # (!\Mux37~0_combout\ & ((\Mux93~0_combout\ & (\immI[30]~input_o\)) # (!\Mux93~0_combout\ & ((\rs2[30]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \immI[30]~input_o\,
	datab => \Mux37~0_combout\,
	datac => \rs2[30]~input_o\,
	datad => \Mux93~0_combout\,
	combout => \Mux93~combout\);

-- Location: LCCOMB_X69_Y59_N30
\WIRING_THE_ALU|set_a_less_b|wiring|bits30|a_eq_b~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|set_a_less_b|wiring|bits30|a_eq_b~2_combout\ = \Mux93~combout\ $ (((\ASEL~input_o\ & (\immU_J[30]~input_o\)) # (!\ASEL~input_o\ & ((\rs1[30]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \immU_J[30]~input_o\,
	datab => \ASEL~input_o\,
	datac => \Mux93~combout\,
	datad => \rs1[30]~input_o\,
	combout => \WIRING_THE_ALU|set_a_less_b|wiring|bits30|a_eq_b~2_combout\);

-- Location: IOIBUF_X46_Y91_N22
\immI[28]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immI(28),
	o => \immI[28]~input_o\);

-- Location: IOIBUF_X68_Y91_N8
\PC[28]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(28),
	o => \PC[28]~input_o\);

-- Location: IOIBUF_X30_Y91_N22
\immS_B[28]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immS_B(28),
	o => \immS_B[28]~input_o\);

-- Location: LCCOMB_X70_Y61_N14
\Mux89~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux89~0_combout\ = (\Mux37~2_combout\ & ((\PC[28]~input_o\) # ((!\Mux37~1_combout\)))) # (!\Mux37~2_combout\ & (((\Mux37~1_combout\ & \immS_B[28]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux37~2_combout\,
	datab => \PC[28]~input_o\,
	datac => \Mux37~1_combout\,
	datad => \immS_B[28]~input_o\,
	combout => \Mux89~0_combout\);

-- Location: IOIBUF_X37_Y0_N8
\rs2[28]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rs2(28),
	o => \rs2[28]~input_o\);

-- Location: LCCOMB_X70_Y61_N24
Mux89 : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux89~combout\ = (\Mux37~0_combout\ & (((\Mux89~0_combout\)))) # (!\Mux37~0_combout\ & ((\Mux89~0_combout\ & (\immI[28]~input_o\)) # (!\Mux89~0_combout\ & ((\rs2[28]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \immI[28]~input_o\,
	datab => \Mux37~0_combout\,
	datac => \Mux89~0_combout\,
	datad => \rs2[28]~input_o\,
	combout => \Mux89~combout\);

-- Location: LCCOMB_X68_Y58_N10
\WIRING_THE_ALU|set_a_less_b|wiring|bits28|a_eq_b~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|set_a_less_b|wiring|bits28|a_eq_b~2_combout\ = \Mux89~combout\ $ (((\ASEL~input_o\ & ((\immU_J[28]~input_o\))) # (!\ASEL~input_o\ & (\rs1[28]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux89~combout\,
	datab => \rs1[28]~input_o\,
	datac => \immU_J[28]~input_o\,
	datad => \ASEL~input_o\,
	combout => \WIRING_THE_ALU|set_a_less_b|wiring|bits28|a_eq_b~2_combout\);

-- Location: LCCOMB_X69_Y58_N4
\WIRING_THE_ALU|set_a_less_b|wiring|bits24|eqi~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|set_a_less_b|wiring|bits24|eqi~1_combout\ = (\WIRING_THE_ALU|set_a_less_b|wiring|bits30|a_eq_b~2_combout\) # ((\WIRING_THE_ALU|set_a_less_b|wiring|bits28|a_eq_b~2_combout\) # (\Mux95~combout\ $ (\A[31]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux95~combout\,
	datab => \A[31]~7_combout\,
	datac => \WIRING_THE_ALU|set_a_less_b|wiring|bits30|a_eq_b~2_combout\,
	datad => \WIRING_THE_ALU|set_a_less_b|wiring|bits28|a_eq_b~2_combout\,
	combout => \WIRING_THE_ALU|set_a_less_b|wiring|bits24|eqi~1_combout\);

-- Location: IOIBUF_X46_Y0_N22
\immI[27]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immI(27),
	o => \immI[27]~input_o\);

-- Location: IOIBUF_X28_Y91_N1
\rs2[27]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rs2(27),
	o => \rs2[27]~input_o\);

-- Location: IOIBUF_X32_Y91_N22
\immS_B[27]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immS_B(27),
	o => \immS_B[27]~input_o\);

-- Location: IOIBUF_X63_Y91_N1
\PC[27]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(27),
	o => \PC[27]~input_o\);

-- Location: LCCOMB_X70_Y61_N18
\Mux87~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux87~0_combout\ = (\Mux37~2_combout\ & (((\PC[27]~input_o\) # (!\Mux37~1_combout\)))) # (!\Mux37~2_combout\ & (\immS_B[27]~input_o\ & (\Mux37~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux37~2_combout\,
	datab => \immS_B[27]~input_o\,
	datac => \Mux37~1_combout\,
	datad => \PC[27]~input_o\,
	combout => \Mux87~0_combout\);

-- Location: LCCOMB_X69_Y58_N16
Mux87 : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux87~combout\ = (\Mux37~0_combout\ & (((\Mux87~0_combout\)))) # (!\Mux37~0_combout\ & ((\Mux87~0_combout\ & (\immI[27]~input_o\)) # (!\Mux87~0_combout\ & ((\rs2[27]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux37~0_combout\,
	datab => \immI[27]~input_o\,
	datac => \rs2[27]~input_o\,
	datad => \Mux87~0_combout\,
	combout => \Mux87~combout\);

-- Location: LCCOMB_X69_Y58_N2
\WIRING_THE_ALU|set_a_less_b|wiring|bits27|a_eq_b~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|set_a_less_b|wiring|bits27|a_eq_b~0_combout\ = \Mux87~combout\ $ (((\ASEL~input_o\ & ((\immU_J[27]~input_o\))) # (!\ASEL~input_o\ & (\rs1[27]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs1[27]~input_o\,
	datab => \ASEL~input_o\,
	datac => \immU_J[27]~input_o\,
	datad => \Mux87~combout\,
	combout => \WIRING_THE_ALU|set_a_less_b|wiring|bits27|a_eq_b~0_combout\);

-- Location: LCCOMB_X69_Y58_N30
\WIRING_THE_ALU|set_a_less_b|wiring|bits24|eqi~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|set_a_less_b|wiring|bits24|eqi~2_combout\ = (\WIRING_THE_ALU|set_a_less_b|wiring|bits24|eqi~0_combout\) # ((\WIRING_THE_ALU|set_a_less_b|wiring|bits29|a_eq_b~2_combout\) # ((\WIRING_THE_ALU|set_a_less_b|wiring|bits24|eqi~1_combout\) # 
-- (\WIRING_THE_ALU|set_a_less_b|wiring|bits27|a_eq_b~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|set_a_less_b|wiring|bits24|eqi~0_combout\,
	datab => \WIRING_THE_ALU|set_a_less_b|wiring|bits29|a_eq_b~2_combout\,
	datac => \WIRING_THE_ALU|set_a_less_b|wiring|bits24|eqi~1_combout\,
	datad => \WIRING_THE_ALU|set_a_less_b|wiring|bits27|a_eq_b~0_combout\,
	combout => \WIRING_THE_ALU|set_a_less_b|wiring|bits24|eqi~2_combout\);

-- Location: IOIBUF_X41_Y0_N1
\rs2[19]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rs2(19),
	o => \rs2[19]~input_o\);

-- Location: IOIBUF_X48_Y0_N15
\immI[19]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immI(19),
	o => \immI[19]~input_o\);

-- Location: IOIBUF_X117_Y61_N8
\PC[19]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(19),
	o => \PC[19]~input_o\);

-- Location: IOIBUF_X92_Y91_N8
\immS_B[19]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immS_B(19),
	o => \immS_B[19]~input_o\);

-- Location: LCCOMB_X67_Y53_N20
\Mux71~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux71~0_combout\ = (\Mux37~1_combout\ & ((\Mux37~2_combout\ & (\PC[19]~input_o\)) # (!\Mux37~2_combout\ & ((\immS_B[19]~input_o\))))) # (!\Mux37~1_combout\ & (((\Mux37~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[19]~input_o\,
	datab => \Mux37~1_combout\,
	datac => \Mux37~2_combout\,
	datad => \immS_B[19]~input_o\,
	combout => \Mux71~0_combout\);

-- Location: LCCOMB_X67_Y52_N0
Mux71 : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux71~combout\ = (\Mux37~0_combout\ & (((\Mux71~0_combout\)))) # (!\Mux37~0_combout\ & ((\Mux71~0_combout\ & ((\immI[19]~input_o\))) # (!\Mux71~0_combout\ & (\rs2[19]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs2[19]~input_o\,
	datab => \immI[19]~input_o\,
	datac => \Mux37~0_combout\,
	datad => \Mux71~0_combout\,
	combout => \Mux71~combout\);

-- Location: LCCOMB_X67_Y52_N22
\WIRING_THE_ALU|set_a_less_b|wiring|bits19|a_eq_b~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|set_a_less_b|wiring|bits19|a_eq_b~2_combout\ = \Mux71~combout\ $ (((\ASEL~input_o\ & (\immU_J[19]~input_o\)) # (!\ASEL~input_o\ & ((\rs1[19]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \immU_J[19]~input_o\,
	datab => \ASEL~input_o\,
	datac => \rs1[19]~input_o\,
	datad => \Mux71~combout\,
	combout => \WIRING_THE_ALU|set_a_less_b|wiring|bits19|a_eq_b~2_combout\);

-- Location: IOIBUF_X21_Y91_N1
\rs2[22]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rs2(22),
	o => \rs2[22]~input_o\);

-- Location: IOIBUF_X117_Y62_N1
\PC[22]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(22),
	o => \PC[22]~input_o\);

-- Location: IOIBUF_X117_Y69_N1
\immS_B[22]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immS_B(22),
	o => \immS_B[22]~input_o\);

-- Location: LCCOMB_X70_Y61_N30
\Mux77~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux77~0_combout\ = (\Mux37~1_combout\ & ((\Mux37~2_combout\ & (\PC[22]~input_o\)) # (!\Mux37~2_combout\ & ((\immS_B[22]~input_o\))))) # (!\Mux37~1_combout\ & (((\Mux37~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux37~1_combout\,
	datab => \PC[22]~input_o\,
	datac => \immS_B[22]~input_o\,
	datad => \Mux37~2_combout\,
	combout => \Mux77~0_combout\);

-- Location: IOIBUF_X50_Y0_N15
\immI[22]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immI(22),
	o => \immI[22]~input_o\);

-- Location: LCCOMB_X66_Y52_N30
Mux77 : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux77~combout\ = (\Mux37~0_combout\ & (((\Mux77~0_combout\)))) # (!\Mux37~0_combout\ & ((\Mux77~0_combout\ & ((\immI[22]~input_o\))) # (!\Mux77~0_combout\ & (\rs2[22]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux37~0_combout\,
	datab => \rs2[22]~input_o\,
	datac => \Mux77~0_combout\,
	datad => \immI[22]~input_o\,
	combout => \Mux77~combout\);

-- Location: LCCOMB_X66_Y52_N14
\WIRING_THE_ALU|set_a_less_b|wiring|bits22|a_eq_b~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|set_a_less_b|wiring|bits22|a_eq_b~2_combout\ = \Mux77~combout\ $ (((\ASEL~input_o\ & (\immU_J[22]~input_o\)) # (!\ASEL~input_o\ & ((\rs1[22]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux77~combout\,
	datab => \ASEL~input_o\,
	datac => \immU_J[22]~input_o\,
	datad => \rs1[22]~input_o\,
	combout => \WIRING_THE_ALU|set_a_less_b|wiring|bits22|a_eq_b~2_combout\);

-- Location: IOIBUF_X117_Y64_N1
\immS_B[21]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immS_B(21),
	o => \immS_B[21]~input_o\);

-- Location: IOIBUF_X104_Y91_N8
\PC[21]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(21),
	o => \PC[21]~input_o\);

-- Location: LCCOMB_X70_Y61_N4
\Mux75~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux75~0_combout\ = (\Mux37~2_combout\ & (((\PC[21]~input_o\) # (!\Mux37~1_combout\)))) # (!\Mux37~2_combout\ & (\immS_B[21]~input_o\ & (\Mux37~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux37~2_combout\,
	datab => \immS_B[21]~input_o\,
	datac => \Mux37~1_combout\,
	datad => \PC[21]~input_o\,
	combout => \Mux75~0_combout\);

-- Location: IOIBUF_X41_Y0_N8
\rs2[21]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rs2(21),
	o => \rs2[21]~input_o\);

-- Location: IOIBUF_X53_Y0_N22
\immI[21]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immI(21),
	o => \immI[21]~input_o\);

-- Location: LCCOMB_X66_Y52_N2
Mux75 : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux75~combout\ = (\Mux75~0_combout\ & (((\immI[21]~input_o\) # (\Mux37~0_combout\)))) # (!\Mux75~0_combout\ & (\rs2[21]~input_o\ & ((!\Mux37~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux75~0_combout\,
	datab => \rs2[21]~input_o\,
	datac => \immI[21]~input_o\,
	datad => \Mux37~0_combout\,
	combout => \Mux75~combout\);

-- Location: LCCOMB_X66_Y52_N20
\WIRING_THE_ALU|set_a_less_b|wiring|bits21|a_eq_b~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|set_a_less_b|wiring|bits21|a_eq_b~2_combout\ = \Mux75~combout\ $ (((\ASEL~input_o\ & ((\immU_J[21]~input_o\))) # (!\ASEL~input_o\ & (\rs1[21]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs1[21]~input_o\,
	datab => \ASEL~input_o\,
	datac => \immU_J[21]~input_o\,
	datad => \Mux75~combout\,
	combout => \WIRING_THE_ALU|set_a_less_b|wiring|bits21|a_eq_b~2_combout\);

-- Location: IOIBUF_X34_Y0_N8
\rs2[20]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rs2(20),
	o => \rs2[20]~input_o\);

-- Location: IOIBUF_X95_Y91_N1
\PC[20]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(20),
	o => \PC[20]~input_o\);

-- Location: IOIBUF_X117_Y60_N15
\immS_B[20]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immS_B(20),
	o => \immS_B[20]~input_o\);

-- Location: LCCOMB_X67_Y53_N8
\Mux73~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux73~0_combout\ = (\Mux37~1_combout\ & ((\Mux37~2_combout\ & (\PC[20]~input_o\)) # (!\Mux37~2_combout\ & ((\immS_B[20]~input_o\))))) # (!\Mux37~1_combout\ & (((\Mux37~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[20]~input_o\,
	datab => \Mux37~1_combout\,
	datac => \Mux37~2_combout\,
	datad => \immS_B[20]~input_o\,
	combout => \Mux73~0_combout\);

-- Location: IOIBUF_X66_Y0_N22
\immI[20]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immI(20),
	o => \immI[20]~input_o\);

-- Location: LCCOMB_X67_Y53_N26
Mux73 : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux73~combout\ = (\Mux37~0_combout\ & (((\Mux73~0_combout\)))) # (!\Mux37~0_combout\ & ((\Mux73~0_combout\ & ((\immI[20]~input_o\))) # (!\Mux73~0_combout\ & (\rs2[20]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux37~0_combout\,
	datab => \rs2[20]~input_o\,
	datac => \Mux73~0_combout\,
	datad => \immI[20]~input_o\,
	combout => \Mux73~combout\);

-- Location: LCCOMB_X67_Y53_N18
\WIRING_THE_ALU|set_a_less_b|wiring|bits20|a_eq_b~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|set_a_less_b|wiring|bits20|a_eq_b~2_combout\ = \Mux73~combout\ $ (((\ASEL~input_o\ & ((\immU_J[20]~input_o\))) # (!\ASEL~input_o\ & (\rs1[20]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ASEL~input_o\,
	datab => \Mux73~combout\,
	datac => \rs1[20]~input_o\,
	datad => \immU_J[20]~input_o\,
	combout => \WIRING_THE_ALU|set_a_less_b|wiring|bits20|a_eq_b~2_combout\);

-- Location: IOIBUF_X37_Y0_N15
\rs2[23]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rs2(23),
	o => \rs2[23]~input_o\);

-- Location: IOIBUF_X50_Y91_N15
\immI[23]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immI(23),
	o => \immI[23]~input_o\);

-- Location: IOIBUF_X95_Y91_N8
\PC[23]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(23),
	o => \PC[23]~input_o\);

-- Location: IOIBUF_X92_Y91_N1
\immS_B[23]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immS_B(23),
	o => \immS_B[23]~input_o\);

-- Location: LCCOMB_X67_Y53_N24
\Mux79~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux79~0_combout\ = (\Mux37~2_combout\ & ((\PC[23]~input_o\) # ((!\Mux37~1_combout\)))) # (!\Mux37~2_combout\ & (((\Mux37~1_combout\ & \immS_B[23]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[23]~input_o\,
	datab => \Mux37~2_combout\,
	datac => \Mux37~1_combout\,
	datad => \immS_B[23]~input_o\,
	combout => \Mux79~0_combout\);

-- Location: LCCOMB_X66_Y53_N2
Mux79 : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux79~combout\ = (\Mux37~0_combout\ & (((\Mux79~0_combout\)))) # (!\Mux37~0_combout\ & ((\Mux79~0_combout\ & ((\immI[23]~input_o\))) # (!\Mux79~0_combout\ & (\rs2[23]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs2[23]~input_o\,
	datab => \Mux37~0_combout\,
	datac => \immI[23]~input_o\,
	datad => \Mux79~0_combout\,
	combout => \Mux79~combout\);

-- Location: LCCOMB_X66_Y53_N20
\WIRING_THE_ALU|set_a_less_b|wiring|bits23|a_eq_b~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|set_a_less_b|wiring|bits23|a_eq_b~2_combout\ = \Mux79~combout\ $ (((\ASEL~input_o\ & (\immU_J[23]~input_o\)) # (!\ASEL~input_o\ & ((\rs1[23]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \immU_J[23]~input_o\,
	datab => \ASEL~input_o\,
	datac => \rs1[23]~input_o\,
	datad => \Mux79~combout\,
	combout => \WIRING_THE_ALU|set_a_less_b|wiring|bits23|a_eq_b~2_combout\);

-- Location: LCCOMB_X67_Y52_N16
\WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~31_combout\ = (!\WIRING_THE_ALU|set_a_less_b|wiring|bits22|a_eq_b~2_combout\ & (!\WIRING_THE_ALU|set_a_less_b|wiring|bits21|a_eq_b~2_combout\ & (!\WIRING_THE_ALU|set_a_less_b|wiring|bits20|a_eq_b~2_combout\ & 
-- !\WIRING_THE_ALU|set_a_less_b|wiring|bits23|a_eq_b~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|set_a_less_b|wiring|bits22|a_eq_b~2_combout\,
	datab => \WIRING_THE_ALU|set_a_less_b|wiring|bits21|a_eq_b~2_combout\,
	datac => \WIRING_THE_ALU|set_a_less_b|wiring|bits20|a_eq_b~2_combout\,
	datad => \WIRING_THE_ALU|set_a_less_b|wiring|bits23|a_eq_b~2_combout\,
	combout => \WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~31_combout\);

-- Location: IOIBUF_X86_Y91_N8
\immS_B[18]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immS_B(18),
	o => \immS_B[18]~input_o\);

-- Location: IOIBUF_X117_Y48_N1
\PC[18]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(18),
	o => \PC[18]~input_o\);

-- Location: LCCOMB_X86_Y54_N16
\Mux69~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux69~0_combout\ = (\Mux37~1_combout\ & ((\Mux37~2_combout\ & ((\PC[18]~input_o\))) # (!\Mux37~2_combout\ & (\immS_B[18]~input_o\)))) # (!\Mux37~1_combout\ & (((\Mux37~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux37~1_combout\,
	datab => \immS_B[18]~input_o\,
	datac => \Mux37~2_combout\,
	datad => \PC[18]~input_o\,
	combout => \Mux69~0_combout\);

-- Location: IOIBUF_X108_Y0_N15
\rs2[18]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rs2(18),
	o => \rs2[18]~input_o\);

-- Location: IOIBUF_X117_Y54_N1
\immI[18]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immI(18),
	o => \immI[18]~input_o\);

-- Location: LCCOMB_X71_Y54_N8
Mux69 : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux69~combout\ = (\Mux69~0_combout\ & (((\Mux37~0_combout\) # (\immI[18]~input_o\)))) # (!\Mux69~0_combout\ & (\rs2[18]~input_o\ & (!\Mux37~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux69~0_combout\,
	datab => \rs2[18]~input_o\,
	datac => \Mux37~0_combout\,
	datad => \immI[18]~input_o\,
	combout => \Mux69~combout\);

-- Location: LCCOMB_X71_Y54_N22
\WIRING_THE_ALU|set_a_less_b|wiring|bits18|a_eq_b~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|set_a_less_b|wiring|bits18|a_eq_b~2_combout\ = \Mux69~combout\ $ (((\ASEL~input_o\ & ((\immU_J[18]~input_o\))) # (!\ASEL~input_o\ & (\rs1[18]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ASEL~input_o\,
	datab => \Mux69~combout\,
	datac => \rs1[18]~input_o\,
	datad => \immU_J[18]~input_o\,
	combout => \WIRING_THE_ALU|set_a_less_b|wiring|bits18|a_eq_b~2_combout\);

-- Location: IOIBUF_X28_Y91_N8
\rs2[17]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rs2(17),
	o => \rs2[17]~input_o\);

-- Location: IOIBUF_X75_Y0_N8
\immI[17]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immI(17),
	o => \immI[17]~input_o\);

-- Location: IOIBUF_X86_Y0_N1
\PC[17]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(17),
	o => \PC[17]~input_o\);

-- Location: IOIBUF_X86_Y0_N22
\immS_B[17]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immS_B(17),
	o => \immS_B[17]~input_o\);

-- Location: LCCOMB_X86_Y54_N10
\Mux67~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux67~0_combout\ = (\Mux37~2_combout\ & ((\PC[17]~input_o\) # ((!\Mux37~1_combout\)))) # (!\Mux37~2_combout\ & (((\immS_B[17]~input_o\ & \Mux37~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[17]~input_o\,
	datab => \Mux37~2_combout\,
	datac => \immS_B[17]~input_o\,
	datad => \Mux37~1_combout\,
	combout => \Mux67~0_combout\);

-- Location: LCCOMB_X71_Y54_N10
Mux67 : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux67~combout\ = (\Mux37~0_combout\ & (((\Mux67~0_combout\)))) # (!\Mux37~0_combout\ & ((\Mux67~0_combout\ & ((\immI[17]~input_o\))) # (!\Mux67~0_combout\ & (\rs2[17]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs2[17]~input_o\,
	datab => \immI[17]~input_o\,
	datac => \Mux37~0_combout\,
	datad => \Mux67~0_combout\,
	combout => \Mux67~combout\);

-- Location: LCCOMB_X71_Y55_N4
\WIRING_THE_ALU|set_a_less_b|wiring|bits17|a_eq_b~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|set_a_less_b|wiring|bits17|a_eq_b~2_combout\ = \Mux67~combout\ $ (((\ASEL~input_o\ & ((\immU_J[17]~input_o\))) # (!\ASEL~input_o\ & (\rs1[17]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux67~combout\,
	datab => \ASEL~input_o\,
	datac => \rs1[17]~input_o\,
	datad => \immU_J[17]~input_o\,
	combout => \WIRING_THE_ALU|set_a_less_b|wiring|bits17|a_eq_b~2_combout\);

-- Location: LCCOMB_X67_Y52_N18
\WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~32_combout\ = (!\WIRING_THE_ALU|set_a_less_b|wiring|bits19|a_eq_b~2_combout\ & (\WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~31_combout\ & (!\WIRING_THE_ALU|set_a_less_b|wiring|bits18|a_eq_b~2_combout\ & 
-- !\WIRING_THE_ALU|set_a_less_b|wiring|bits17|a_eq_b~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|set_a_less_b|wiring|bits19|a_eq_b~2_combout\,
	datab => \WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~31_combout\,
	datac => \WIRING_THE_ALU|set_a_less_b|wiring|bits18|a_eq_b~2_combout\,
	datad => \WIRING_THE_ALU|set_a_less_b|wiring|bits17|a_eq_b~2_combout\,
	combout => \WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~32_combout\);

-- Location: LCCOMB_X70_Y58_N24
\WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~6_combout\ = (\A[25]~4_combout\ & (!\A[24]~3_combout\ & (\Mux81~combout\ & \Mux83~combout\))) # (!\A[25]~4_combout\ & ((\Mux83~combout\) # ((!\A[24]~3_combout\ & \Mux81~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[24]~3_combout\,
	datab => \Mux81~combout\,
	datac => \A[25]~4_combout\,
	datad => \Mux83~combout\,
	combout => \WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~6_combout\);

-- Location: LCCOMB_X69_Y58_N8
\WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~7_combout\ = (!\WIRING_THE_ALU|set_a_less_b|wiring|bits27|a_eq_b~0_combout\ & ((\A[26]~2_combout\ & (\Mux85~combout\ & \WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~6_combout\)) # (!\A[26]~2_combout\ & 
-- ((\Mux85~combout\) # (\WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[26]~2_combout\,
	datab => \WIRING_THE_ALU|set_a_less_b|wiring|bits27|a_eq_b~0_combout\,
	datac => \Mux85~combout\,
	datad => \WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~6_combout\,
	combout => \WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~7_combout\);

-- Location: LCCOMB_X69_Y58_N12
\WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~8_combout\ = (!\WIRING_THE_ALU|set_a_less_b|wiring|bits28|a_eq_b~2_combout\ & ((\WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~7_combout\) # ((!\A[27]~15_combout\ & \Mux87~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|set_a_less_b|wiring|bits28|a_eq_b~2_combout\,
	datab => \A[27]~15_combout\,
	datac => \WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~7_combout\,
	datad => \Mux87~combout\,
	combout => \WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~8_combout\);

-- Location: LCCOMB_X69_Y59_N12
\WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~9_combout\ = (!\WIRING_THE_ALU|set_a_less_b|wiring|bits29|a_eq_b~2_combout\ & ((\WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~8_combout\) # ((!\A[28]~6_combout\ & \Mux89~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~8_combout\,
	datab => \A[28]~6_combout\,
	datac => \Mux89~combout\,
	datad => \WIRING_THE_ALU|set_a_less_b|wiring|bits29|a_eq_b~2_combout\,
	combout => \WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~9_combout\);

-- Location: LCCOMB_X69_Y59_N6
\WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~10_combout\ = (!\WIRING_THE_ALU|set_a_less_b|wiring|bits30|a_eq_b~2_combout\ & ((\WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~9_combout\) # ((!\A[29]~1_combout\ & \Mux91~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~9_combout\,
	datab => \A[29]~1_combout\,
	datac => \WIRING_THE_ALU|set_a_less_b|wiring|bits30|a_eq_b~2_combout\,
	datad => \Mux91~combout\,
	combout => \WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~10_combout\);

-- Location: LCCOMB_X68_Y59_N28
\WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~11_combout\ = (\WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~10_combout\) # ((!\A[30]~5_combout\ & \Mux93~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~10_combout\,
	datab => \A[30]~5_combout\,
	datad => \Mux93~combout\,
	combout => \WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~11_combout\);

-- Location: LCCOMB_X68_Y59_N14
\WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~12_combout\ = (\A[31]~7_combout\ & ((\Mux95~combout\ & ((\WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~11_combout\))) # (!\Mux95~combout\ & (!\ALUFunct[0]~input_o\)))) # (!\A[31]~7_combout\ & 
-- ((\Mux95~combout\ & (\ALUFunct[0]~input_o\)) # (!\Mux95~combout\ & ((\WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~7_combout\,
	datab => \Mux95~combout\,
	datac => \ALUFunct[0]~input_o\,
	datad => \WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~11_combout\,
	combout => \WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~12_combout\);

-- Location: LCCOMB_X71_Y54_N6
\WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~0_combout\ = (\Mux69~combout\ & (((\Mux67~combout\ & !\A[17]~8_combout\)) # (!\A[18]~9_combout\))) # (!\Mux69~combout\ & (\Mux67~combout\ & (!\A[17]~8_combout\ & !\A[18]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux67~combout\,
	datab => \Mux69~combout\,
	datac => \A[17]~8_combout\,
	datad => \A[18]~9_combout\,
	combout => \WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~0_combout\);

-- Location: LCCOMB_X67_Y52_N28
\WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~1_combout\ = (\A[19]~10_combout\ & (\Mux71~combout\ & \WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~0_combout\)) # (!\A[19]~10_combout\ & ((\Mux71~combout\) # 
-- (\WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[19]~10_combout\,
	datab => \Mux71~combout\,
	datad => \WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~0_combout\,
	combout => \WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~1_combout\);

-- Location: LCCOMB_X67_Y52_N6
\WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~2_combout\ = (!\WIRING_THE_ALU|set_a_less_b|wiring|bits21|a_eq_b~2_combout\ & ((\Mux73~combout\ & ((\WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~1_combout\) # (!\A[20]~11_combout\))) # (!\Mux73~combout\ & 
-- (!\A[20]~11_combout\ & \WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux73~combout\,
	datab => \WIRING_THE_ALU|set_a_less_b|wiring|bits21|a_eq_b~2_combout\,
	datac => \A[20]~11_combout\,
	datad => \WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~1_combout\,
	combout => \WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~2_combout\);

-- Location: LCCOMB_X66_Y52_N0
\WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~3_combout\ = (!\WIRING_THE_ALU|set_a_less_b|wiring|bits22|a_eq_b~2_combout\ & ((\WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~2_combout\) # ((!\A[21]~12_combout\ & \Mux75~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~2_combout\,
	datab => \A[21]~12_combout\,
	datac => \WIRING_THE_ALU|set_a_less_b|wiring|bits22|a_eq_b~2_combout\,
	datad => \Mux75~combout\,
	combout => \WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~3_combout\);

-- Location: LCCOMB_X66_Y52_N10
\WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~4_combout\ = (!\WIRING_THE_ALU|set_a_less_b|wiring|bits23|a_eq_b~2_combout\ & ((\WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~3_combout\) # ((!\A[22]~13_combout\ & \Mux77~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~3_combout\,
	datab => \A[22]~13_combout\,
	datac => \Mux77~combout\,
	datad => \WIRING_THE_ALU|set_a_less_b|wiring|bits23|a_eq_b~2_combout\,
	combout => \WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~4_combout\);

-- Location: LCCOMB_X66_Y53_N28
\WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~5_combout\ = (\WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~4_combout\) # ((\Mux79~combout\ & !\A[23]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux79~combout\,
	datac => \WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~4_combout\,
	datad => \A[23]~14_combout\,
	combout => \WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~5_combout\);

-- Location: LCCOMB_X68_Y55_N0
\WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~13_combout\ = (\WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~12_combout\) # ((\WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~5_combout\ & !\WIRING_THE_ALU|set_a_less_b|wiring|bits24|eqi~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~12_combout\,
	datac => \WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~5_combout\,
	datad => \WIRING_THE_ALU|set_a_less_b|wiring|bits24|eqi~2_combout\,
	combout => \WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~13_combout\);

-- Location: LCCOMB_X68_Y55_N4
\WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~33_combout\ = (\WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~13_combout\) # ((\WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~30_combout\ & (!\WIRING_THE_ALU|set_a_less_b|wiring|bits24|eqi~2_combout\ & 
-- \WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~30_combout\,
	datab => \WIRING_THE_ALU|set_a_less_b|wiring|bits24|eqi~2_combout\,
	datac => \WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~32_combout\,
	datad => \WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~13_combout\,
	combout => \WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~33_combout\);

-- Location: LCCOMB_X67_Y59_N10
\WIRING_THE_ALU|Mux31~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Mux31~0_combout\ = (\ALUFunct[2]~input_o\ & ((\Mux0~combout\ & ((\A[0]~0_combout\) # (!\ALUFunct[0]~input_o\))) # (!\Mux0~combout\ & (\A[0]~0_combout\ & !\ALUFunct[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~combout\,
	datab => \A[0]~0_combout\,
	datac => \ALUFunct[0]~input_o\,
	datad => \ALUFunct[2]~input_o\,
	combout => \WIRING_THE_ALU|Mux31~0_combout\);

-- Location: LCCOMB_X67_Y59_N0
\WIRING_THE_ALU|Mux31~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Mux31~1_combout\ = (\ALUFunct[1]~input_o\ & ((\WIRING_THE_ALU|Mux31~0_combout\) # ((\WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~33_combout\ & !\ALUFunct[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|set_a_less_b|wiring|bits00|lti~33_combout\,
	datab => \ALUFunct[2]~input_o\,
	datac => \ALUFunct[1]~input_o\,
	datad => \WIRING_THE_ALU|Mux31~0_combout\,
	combout => \WIRING_THE_ALU|Mux31~1_combout\);

-- Location: LCCOMB_X67_Y59_N24
\WIRING_THE_ALU|Mux31~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Mux31~4_combout\ = (\WIRING_THE_ALU|Mux31~1_combout\) # ((\WIRING_THE_ALU|Mux31~3_combout\ & !\ALUFunct[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Mux31~3_combout\,
	datac => \ALUFunct[1]~input_o\,
	datad => \WIRING_THE_ALU|Mux31~1_combout\,
	combout => \WIRING_THE_ALU|Mux31~4_combout\);

-- Location: LCCOMB_X86_Y59_N16
\Mux1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (!\WDSEL[1]~input_o\ & ((\WDSEL[0]~input_o\ & ((\WIRING_THE_ALU|Mux31~4_combout\))) # (!\WDSEL[0]~input_o\ & (!\PC[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WDSEL[0]~input_o\,
	datab => \PC[0]~input_o\,
	datac => \WIRING_THE_ALU|Mux31~4_combout\,
	datad => \WDSEL[1]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X86_Y59_N2
\Mux1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (\Mux1~0_combout\) # ((\Memo_READ_Data[0]~input_o\ & \WDSEL[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_READ_Data[0]~input_o\,
	datab => \WDSEL[1]~input_o\,
	datad => \Mux1~0_combout\,
	combout => \Mux1~1_combout\);

-- Location: LCCOMB_X71_Y55_N30
\Mux33~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux33~0_combout\ = (!\WDSEL[0]~input_o\) # (!\WDSEL[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \WDSEL[1]~input_o\,
	datad => \WDSEL[0]~input_o\,
	combout => \Mux33~0_combout\);

-- Location: IOIBUF_X104_Y91_N1
\Memo_READ_Data[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Memo_READ_Data(1),
	o => \Memo_READ_Data[1]~input_o\);

-- Location: LCCOMB_X67_Y59_N22
\WIRING_THE_ALU|set_a_less_b|wiring|bits01|a_eq_b~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|set_a_less_b|wiring|bits01|a_eq_b~2_combout\ = \Mux35~combout\ $ (((\ASEL~input_o\ & (\immU_J[1]~input_o\)) # (!\ASEL~input_o\ & ((\rs1[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \immU_J[1]~input_o\,
	datab => \ASEL~input_o\,
	datac => \Mux35~combout\,
	datad => \rs1[1]~input_o\,
	combout => \WIRING_THE_ALU|set_a_less_b|wiring|bits01|a_eq_b~2_combout\);

-- Location: LCCOMB_X68_Y58_N22
\WIRING_THE_ALU|Mux12~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Mux12~0_combout\ = \ALUFunct[0]~input_o\ $ (\ALUFunct[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALUFunct[0]~input_o\,
	datad => \ALUFunct[2]~input_o\,
	combout => \WIRING_THE_ALU|Mux12~0_combout\);

-- Location: LCCOMB_X67_Y55_N4
\WIRING_THE_ALU|Shifting|shifting|z[30]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|z[30]~12_combout\ = (\Mux0~combout\ & (\WIRING_THE_ALU|Shifting|xToIn[31]~5_combout\)) # (!\Mux0~combout\ & ((\WIRING_THE_ALU|Shifting|xToIn[30]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Shifting|xToIn[31]~5_combout\,
	datac => \WIRING_THE_ALU|Shifting|xToIn[30]~9_combout\,
	datad => \Mux0~combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|z[30]~12_combout\);

-- Location: LCCOMB_X67_Y55_N14
\WIRING_THE_ALU|Shifting|shifting|z[30]~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|z[30]~13_combout\ = (\Mux35~combout\ & (((\WIRING_THE_ALU|Shifting|sftIn~combout\)))) # (!\Mux35~combout\ & ((\WIRING_THE_ALU|Shifting|shifting|z[31]~8_combout\ & (\WIRING_THE_ALU|Shifting|shifting|z[30]~12_combout\)) # 
-- (!\WIRING_THE_ALU|Shifting|shifting|z[31]~8_combout\ & ((\WIRING_THE_ALU|Shifting|sftIn~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux35~combout\,
	datab => \WIRING_THE_ALU|Shifting|shifting|z[30]~12_combout\,
	datac => \WIRING_THE_ALU|Shifting|sftIn~combout\,
	datad => \WIRING_THE_ALU|Shifting|shifting|z[31]~8_combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|z[30]~13_combout\);

-- Location: LCCOMB_X68_Y57_N26
\WIRING_THE_ALU|Shifting|shifting|MUXout3[2]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|MUXout3[2]~7_combout\ = (!\Mux37~combout\ & ((\Mux35~combout\ & ((\WIRING_THE_ALU|Shifting|shifting|MUXout1[4]~23_combout\))) # (!\Mux35~combout\ & (\WIRING_THE_ALU|Shifting|shifting|MUXout2[2]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux35~combout\,
	datab => \WIRING_THE_ALU|Shifting|shifting|MUXout2[2]~3_combout\,
	datac => \Mux37~combout\,
	datad => \WIRING_THE_ALU|Shifting|shifting|MUXout1[4]~23_combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|MUXout3[2]~7_combout\);

-- Location: LCCOMB_X69_Y56_N8
\WIRING_THE_ALU|Shifting|shifting|MUXout0[16]~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|MUXout0[16]~16_combout\ = (\ALUFunct[2]~input_o\ & (\A[31]~7_combout\ & (\ALUFunct[3]~input_o\ & \Mux41~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUFunct[2]~input_o\,
	datab => \A[31]~7_combout\,
	datac => \ALUFunct[3]~input_o\,
	datad => \Mux41~combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|MUXout0[16]~16_combout\);

-- Location: LCCOMB_X69_Y56_N2
\WIRING_THE_ALU|Shifting|shifting|MUXout1[8]~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|MUXout1[8]~24_combout\ = (!\Mux41~combout\ & ((\ALUFunct[2]~input_o\ & (\A[16]~16_combout\)) # (!\ALUFunct[2]~input_o\ & ((\A[15]~17_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUFunct[2]~input_o\,
	datab => \A[16]~16_combout\,
	datac => \A[15]~17_combout\,
	datad => \Mux41~combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|MUXout1[8]~24_combout\);

-- Location: LCCOMB_X68_Y57_N20
\WIRING_THE_ALU|Shifting|shifting|MUXout1[8]~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|MUXout1[8]~25_combout\ = (\Mux39~combout\ & ((\WIRING_THE_ALU|Shifting|shifting|MUXout0[16]~16_combout\) # ((\WIRING_THE_ALU|Shifting|shifting|MUXout1[8]~24_combout\)))) # (!\Mux39~combout\ & 
-- (((\WIRING_THE_ALU|Shifting|shifting|MUXout0[8]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Shifting|shifting|MUXout0[16]~16_combout\,
	datab => \WIRING_THE_ALU|Shifting|shifting|MUXout0[8]~13_combout\,
	datac => \Mux39~combout\,
	datad => \WIRING_THE_ALU|Shifting|shifting|MUXout1[8]~24_combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|MUXout1[8]~25_combout\);

-- Location: LCCOMB_X69_Y57_N24
\WIRING_THE_ALU|Shifting|shifting|MUXout3[6]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|MUXout3[6]~8_combout\ = (\Mux35~combout\ & ((\WIRING_THE_ALU|Shifting|shifting|MUXout1[8]~25_combout\))) # (!\Mux35~combout\ & (\WIRING_THE_ALU|Shifting|shifting|MUXout1[6]~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WIRING_THE_ALU|Shifting|shifting|MUXout1[6]~21_combout\,
	datac => \Mux35~combout\,
	datad => \WIRING_THE_ALU|Shifting|shifting|MUXout1[8]~25_combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|MUXout3[6]~8_combout\);

-- Location: LCCOMB_X68_Y57_N22
\WIRING_THE_ALU|Shifting|shifting|MUXout3[2]~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|MUXout3[2]~9_combout\ = (\WIRING_THE_ALU|Shifting|shifting|MUXout3[2]~7_combout\) # ((\Mux37~combout\ & \WIRING_THE_ALU|Shifting|shifting|MUXout3[6]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Shifting|shifting|MUXout3[2]~7_combout\,
	datac => \Mux37~combout\,
	datad => \WIRING_THE_ALU|Shifting|shifting|MUXout3[6]~8_combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|MUXout3[2]~9_combout\);

-- Location: LCCOMB_X68_Y57_N16
\WIRING_THE_ALU|Shifting|shifting|z[1]~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|z[1]~11_combout\ = (\Mux0~combout\ & ((\WIRING_THE_ALU|Shifting|shifting|MUXout3[2]~9_combout\))) # (!\Mux0~combout\ & (\WIRING_THE_ALU|Shifting|shifting|MUXout3[1]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Shifting|shifting|MUXout3[1]~6_combout\,
	datab => \Mux0~combout\,
	datac => \WIRING_THE_ALU|Shifting|shifting|MUXout3[2]~9_combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|z[1]~11_combout\);

-- Location: LCCOMB_X67_Y59_N12
\WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit0to7|bit0123|bit01|bit0|cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit0to7|bit0123|bit01|bit0|cout~0_combout\ = (\Mux0~combout\ & (\A[0]~0_combout\)) # (!\Mux0~combout\ & ((\ALUFunct[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~combout\,
	datab => \A[0]~0_combout\,
	datac => \ALUFunct[3]~input_o\,
	combout => \WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit0to7|bit0123|bit01|bit0|cout~0_combout\);

-- Location: LCCOMB_X67_Y59_N14
\WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit0to7|bit0123|bit01|bit1|s~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit0to7|bit0123|bit01|bit1|s~0_combout\ = \WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit0to7|bit0123|bit01|bit0|cout~0_combout\ $ (\Mux35~combout\ $ (\ALUFunct[3]~input_o\ $ (\A[1]~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit0to7|bit0123|bit01|bit0|cout~0_combout\,
	datab => \Mux35~combout\,
	datac => \ALUFunct[3]~input_o\,
	datad => \A[1]~23_combout\,
	combout => \WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit0to7|bit0123|bit01|bit1|s~0_combout\);

-- Location: LCCOMB_X68_Y59_N2
\WIRING_THE_ALU|Mux30~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Mux30~1_combout\ = (\ALUFunct[2]~input_o\ & (\WIRING_THE_ALU|Shifting|shifting|z[1]~11_combout\ & (\ALUFunct[0]~input_o\))) # (!\ALUFunct[2]~input_o\ & (((\ALUFunct[0]~input_o\) # 
-- (\WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit0to7|bit0123|bit01|bit1|s~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUFunct[2]~input_o\,
	datab => \WIRING_THE_ALU|Shifting|shifting|z[1]~11_combout\,
	datac => \ALUFunct[0]~input_o\,
	datad => \WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit0to7|bit0123|bit01|bit1|s~0_combout\,
	combout => \WIRING_THE_ALU|Mux30~1_combout\);

-- Location: LCCOMB_X67_Y59_N8
\WIRING_THE_ALU|Mux30~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Mux30~2_combout\ = (\WIRING_THE_ALU|Mux12~0_combout\ & ((\WIRING_THE_ALU|Mux30~1_combout\ & ((\WIRING_THE_ALU|Shifting|shifting|z[30]~13_combout\))) # (!\WIRING_THE_ALU|Mux30~1_combout\ & 
-- (\WIRING_THE_ALU|set_a_less_b|wiring|bits01|a_eq_b~2_combout\)))) # (!\WIRING_THE_ALU|Mux12~0_combout\ & (((\WIRING_THE_ALU|Mux30~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|set_a_less_b|wiring|bits01|a_eq_b~2_combout\,
	datab => \WIRING_THE_ALU|Mux12~0_combout\,
	datac => \WIRING_THE_ALU|Shifting|shifting|z[30]~13_combout\,
	datad => \WIRING_THE_ALU|Mux30~1_combout\,
	combout => \WIRING_THE_ALU|Mux30~2_combout\);

-- Location: LCCOMB_X67_Y59_N2
\WIRING_THE_ALU|Mux30~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Mux30~0_combout\ = (\ALUFunct[1]~input_o\ & ((\ALUFunct[0]~input_o\ & (\Mux35~combout\ & \A[1]~23_combout\)) # (!\ALUFunct[0]~input_o\ & ((\Mux35~combout\) # (\A[1]~23_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUFunct[0]~input_o\,
	datab => \Mux35~combout\,
	datac => \ALUFunct[1]~input_o\,
	datad => \A[1]~23_combout\,
	combout => \WIRING_THE_ALU|Mux30~0_combout\);

-- Location: LCCOMB_X67_Y59_N26
\WIRING_THE_ALU|Mux30~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Mux30~3_combout\ = (\WIRING_THE_ALU|Mux30~0_combout\) # ((\WIRING_THE_ALU|Mux30~2_combout\ & !\ALUFunct[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WIRING_THE_ALU|Mux30~2_combout\,
	datac => \ALUFunct[1]~input_o\,
	datad => \WIRING_THE_ALU|Mux30~0_combout\,
	combout => \WIRING_THE_ALU|Mux30~3_combout\);

-- Location: LCCOMB_X82_Y61_N12
\Mux2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\WDSEL[0]~input_o\ & (((\WIRING_THE_ALU|Mux30~3_combout\)))) # (!\WDSEL[0]~input_o\ & (\PC[0]~input_o\ $ (((\PC[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[0]~input_o\,
	datab => \WIRING_THE_ALU|Mux30~3_combout\,
	datac => \WDSEL[0]~input_o\,
	datad => \PC[1]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X82_Y61_N22
\Mux2~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (\WDSEL[1]~input_o\ & (\Memo_READ_Data[1]~input_o\)) # (!\WDSEL[1]~input_o\ & ((\Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WDSEL[1]~input_o\,
	datac => \Memo_READ_Data[1]~input_o\,
	datad => \Mux2~0_combout\,
	combout => \Mux2~1_combout\);

-- Location: LCCOMB_X82_Y61_N0
\Mux3~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (!\WDSEL[0]~input_o\ & (\PC[2]~input_o\ $ (((\PC[0]~input_o\ & \PC[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[0]~input_o\,
	datab => \PC[2]~input_o\,
	datac => \WDSEL[0]~input_o\,
	datad => \PC[1]~input_o\,
	combout => \Mux3~1_combout\);

-- Location: IOIBUF_X46_Y91_N8
\Memo_READ_Data[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Memo_READ_Data(2),
	o => \Memo_READ_Data[2]~input_o\);

-- Location: LCCOMB_X67_Y57_N16
\WIRING_THE_ALU|Shifting|shifting|MUXout3[3]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|MUXout3[3]~10_combout\ = (!\Mux37~combout\ & ((\Mux35~combout\ & (\WIRING_THE_ALU|Shifting|shifting|MUXout1[5]~19_combout\)) # (!\Mux35~combout\ & ((\WIRING_THE_ALU|Shifting|shifting|MUXout2[3]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux35~combout\,
	datab => \Mux37~combout\,
	datac => \WIRING_THE_ALU|Shifting|shifting|MUXout1[5]~19_combout\,
	datad => \WIRING_THE_ALU|Shifting|shifting|MUXout2[3]~1_combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|MUXout3[3]~10_combout\);

-- Location: LCCOMB_X67_Y53_N30
\WIRING_THE_ALU|Shifting|shifting|MUXout1[9]~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|MUXout1[9]~33_combout\ = (!\Mux41~combout\ & ((\ALUFunct[2]~input_o\ & (\A[17]~8_combout\)) # (!\ALUFunct[2]~input_o\ & ((\A[14]~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux41~combout\,
	datab => \A[17]~8_combout\,
	datac => \ALUFunct[2]~input_o\,
	datad => \A[14]~18_combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|MUXout1[9]~33_combout\);

-- Location: LCCOMB_X67_Y57_N26
\WIRING_THE_ALU|Shifting|shifting|MUXout1[9]~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|MUXout1[9]~26_combout\ = (\Mux39~combout\ & (((\WIRING_THE_ALU|Shifting|shifting|MUXout1[9]~33_combout\) # (\WIRING_THE_ALU|Shifting|shifting|MUXout0[16]~16_combout\)))) # (!\Mux39~combout\ & 
-- (\WIRING_THE_ALU|Shifting|shifting|MUXout0[9]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Shifting|shifting|MUXout0[9]~3_combout\,
	datab => \WIRING_THE_ALU|Shifting|shifting|MUXout1[9]~33_combout\,
	datac => \WIRING_THE_ALU|Shifting|shifting|MUXout0[16]~16_combout\,
	datad => \Mux39~combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|MUXout1[9]~26_combout\);

-- Location: LCCOMB_X67_Y57_N20
\WIRING_THE_ALU|Shifting|shifting|MUXout3[7]~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|MUXout3[7]~11_combout\ = (\Mux35~combout\ & (\WIRING_THE_ALU|Shifting|shifting|MUXout1[9]~26_combout\)) # (!\Mux35~combout\ & ((\WIRING_THE_ALU|Shifting|shifting|MUXout1[7]~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Shifting|shifting|MUXout1[9]~26_combout\,
	datab => \WIRING_THE_ALU|Shifting|shifting|MUXout1[7]~17_combout\,
	datac => \Mux35~combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|MUXout3[7]~11_combout\);

-- Location: LCCOMB_X67_Y57_N6
\WIRING_THE_ALU|Shifting|shifting|MUXout3[3]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|MUXout3[3]~12_combout\ = (\WIRING_THE_ALU|Shifting|shifting|MUXout3[3]~10_combout\) # ((\Mux37~combout\ & \WIRING_THE_ALU|Shifting|shifting|MUXout3[7]~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WIRING_THE_ALU|Shifting|shifting|MUXout3[3]~10_combout\,
	datac => \Mux37~combout\,
	datad => \WIRING_THE_ALU|Shifting|shifting|MUXout3[7]~11_combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|MUXout3[3]~12_combout\);

-- Location: LCCOMB_X68_Y57_N2
\WIRING_THE_ALU|Shifting|shifting|z[2]~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|z[2]~14_combout\ = (\Mux0~combout\ & ((\WIRING_THE_ALU|Shifting|shifting|MUXout3[3]~12_combout\))) # (!\Mux0~combout\ & (\WIRING_THE_ALU|Shifting|shifting|MUXout3[2]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Shifting|shifting|MUXout3[2]~9_combout\,
	datab => \Mux0~combout\,
	datac => \WIRING_THE_ALU|Shifting|shifting|MUXout3[3]~12_combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|z[2]~14_combout\);

-- Location: LCCOMB_X67_Y59_N4
\WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit0to7|bit0123|bit01|bit1|cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit0to7|bit0123|bit01|bit1|cout~0_combout\ = (\WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit0to7|bit0123|bit01|bit0|cout~0_combout\ & ((\A[1]~23_combout\) # (\Mux35~combout\ $ (\ALUFunct[3]~input_o\)))) # 
-- (!\WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit0to7|bit0123|bit01|bit0|cout~0_combout\ & (\A[1]~23_combout\ & (\Mux35~combout\ $ (\ALUFunct[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit0to7|bit0123|bit01|bit0|cout~0_combout\,
	datab => \Mux35~combout\,
	datac => \ALUFunct[3]~input_o\,
	datad => \A[1]~23_combout\,
	combout => \WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit0to7|bit0123|bit01|bit1|cout~0_combout\);

-- Location: LCCOMB_X67_Y58_N12
\WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit0to7|bit0123|bit23|bit0|s\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit0to7|bit0123|bit23|bit0|s~combout\ = \Mux37~combout\ $ (\A[2]~24_combout\ $ (\ALUFunct[3]~input_o\ $ (\WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit0to7|bit0123|bit01|bit1|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux37~combout\,
	datab => \A[2]~24_combout\,
	datac => \ALUFunct[3]~input_o\,
	datad => \WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit0to7|bit0123|bit01|bit1|cout~0_combout\,
	combout => \WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit0to7|bit0123|bit23|bit0|s~combout\);

-- Location: LCCOMB_X67_Y58_N22
\WIRING_THE_ALU|Mux29~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Mux29~1_combout\ = (\ALUFunct[2]~input_o\ & (\ALUFunct[0]~input_o\ & (\WIRING_THE_ALU|Shifting|shifting|z[2]~14_combout\))) # (!\ALUFunct[2]~input_o\ & ((\ALUFunct[0]~input_o\) # 
-- ((\WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit0to7|bit0123|bit23|bit0|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUFunct[2]~input_o\,
	datab => \ALUFunct[0]~input_o\,
	datac => \WIRING_THE_ALU|Shifting|shifting|z[2]~14_combout\,
	datad => \WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit0to7|bit0123|bit23|bit0|s~combout\,
	combout => \WIRING_THE_ALU|Mux29~1_combout\);

-- Location: LCCOMB_X67_Y58_N14
\WIRING_THE_ALU|set_a_less_b|wiring|bits02|a_eq_b~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|set_a_less_b|wiring|bits02|a_eq_b~2_combout\ = \Mux37~combout\ $ (((\ASEL~input_o\ & ((\immU_J[2]~input_o\))) # (!\ASEL~input_o\ & (\rs1[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs1[2]~input_o\,
	datab => \immU_J[2]~input_o\,
	datac => \Mux37~combout\,
	datad => \ASEL~input_o\,
	combout => \WIRING_THE_ALU|set_a_less_b|wiring|bits02|a_eq_b~2_combout\);

-- Location: LCCOMB_X67_Y55_N2
\WIRING_THE_ALU|Shifting|shifting|z[29]~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|z[29]~16_combout\ = (\WIRING_THE_ALU|Shifting|shifting|z[31]~8_combout\ & ((\Mux35~combout\ & (\WIRING_THE_ALU|Shifting|sftIn~combout\)) # (!\Mux35~combout\ & ((\WIRING_THE_ALU|Shifting|xToIn[30]~9_combout\))))) # 
-- (!\WIRING_THE_ALU|Shifting|shifting|z[31]~8_combout\ & (\WIRING_THE_ALU|Shifting|sftIn~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Shifting|sftIn~combout\,
	datab => \WIRING_THE_ALU|Shifting|shifting|z[31]~8_combout\,
	datac => \WIRING_THE_ALU|Shifting|xToIn[30]~9_combout\,
	datad => \Mux35~combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|z[29]~16_combout\);

-- Location: LCCOMB_X67_Y55_N0
\WIRING_THE_ALU|Shifting|shifting|z[29]~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|z[29]~15_combout\ = (\Mux35~combout\ & (\WIRING_THE_ALU|Shifting|xToIn[31]~5_combout\)) # (!\Mux35~combout\ & ((\WIRING_THE_ALU|Shifting|xToIn[29]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Shifting|xToIn[31]~5_combout\,
	datab => \WIRING_THE_ALU|Shifting|xToIn[29]~7_combout\,
	datad => \Mux35~combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|z[29]~15_combout\);

-- Location: LCCOMB_X67_Y55_N28
\WIRING_THE_ALU|Shifting|shifting|z[29]~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|z[29]~17_combout\ = (\Mux0~combout\ & (\WIRING_THE_ALU|Shifting|shifting|z[29]~16_combout\)) # (!\Mux0~combout\ & ((\WIRING_THE_ALU|Shifting|shifting|z[31]~8_combout\ & 
-- ((\WIRING_THE_ALU|Shifting|shifting|z[29]~15_combout\))) # (!\WIRING_THE_ALU|Shifting|shifting|z[31]~8_combout\ & (\WIRING_THE_ALU|Shifting|shifting|z[29]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Shifting|shifting|z[29]~16_combout\,
	datab => \Mux0~combout\,
	datac => \WIRING_THE_ALU|Shifting|shifting|z[31]~8_combout\,
	datad => \WIRING_THE_ALU|Shifting|shifting|z[29]~15_combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|z[29]~17_combout\);

-- Location: LCCOMB_X67_Y58_N0
\WIRING_THE_ALU|Mux29~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Mux29~2_combout\ = (\WIRING_THE_ALU|Mux29~1_combout\ & (((\WIRING_THE_ALU|Shifting|shifting|z[29]~17_combout\)) # (!\WIRING_THE_ALU|Mux12~0_combout\))) # (!\WIRING_THE_ALU|Mux29~1_combout\ & (\WIRING_THE_ALU|Mux12~0_combout\ & 
-- (\WIRING_THE_ALU|set_a_less_b|wiring|bits02|a_eq_b~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Mux29~1_combout\,
	datab => \WIRING_THE_ALU|Mux12~0_combout\,
	datac => \WIRING_THE_ALU|set_a_less_b|wiring|bits02|a_eq_b~2_combout\,
	datad => \WIRING_THE_ALU|Shifting|shifting|z[29]~17_combout\,
	combout => \WIRING_THE_ALU|Mux29~2_combout\);

-- Location: LCCOMB_X70_Y64_N0
\WIRING_THE_ALU|Mux29~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Mux29~0_combout\ = (\ALUFunct[1]~input_o\ & ((\A[2]~24_combout\ & ((\Mux37~combout\) # (!\ALUFunct[0]~input_o\))) # (!\A[2]~24_combout\ & (!\ALUFunct[0]~input_o\ & \Mux37~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~24_combout\,
	datab => \ALUFunct[1]~input_o\,
	datac => \ALUFunct[0]~input_o\,
	datad => \Mux37~combout\,
	combout => \WIRING_THE_ALU|Mux29~0_combout\);

-- Location: LCCOMB_X70_Y64_N24
\Mux3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\WDSEL[0]~input_o\ & ((\WIRING_THE_ALU|Mux29~0_combout\) # ((\WIRING_THE_ALU|Mux29~2_combout\ & !\ALUFunct[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Mux29~2_combout\,
	datab => \ALUFunct[1]~input_o\,
	datac => \WDSEL[0]~input_o\,
	datad => \WIRING_THE_ALU|Mux29~0_combout\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X70_Y64_N26
\Mux3~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = (\WDSEL[1]~input_o\ & (((\Memo_READ_Data[2]~input_o\)))) # (!\WDSEL[1]~input_o\ & ((\Mux3~1_combout\) # ((\Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~1_combout\,
	datab => \Memo_READ_Data[2]~input_o\,
	datac => \WDSEL[1]~input_o\,
	datad => \Mux3~0_combout\,
	combout => \Mux3~2_combout\);

-- Location: IOIBUF_X48_Y91_N15
\Memo_READ_Data[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Memo_READ_Data(3),
	o => \Memo_READ_Data[3]~input_o\);

-- Location: LCCOMB_X66_Y55_N24
\WIRING_THE_ALU|Shifting|shifting|MUXout3[24]~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|MUXout3[24]~16_combout\ = (\Mux35~combout\ & (\WIRING_THE_ALU|Shifting|xToIn[30]~9_combout\)) # (!\Mux35~combout\ & ((\WIRING_THE_ALU|Shifting|xToIn[28]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux35~combout\,
	datab => \WIRING_THE_ALU|Shifting|xToIn[30]~9_combout\,
	datac => \WIRING_THE_ALU|Shifting|xToIn[28]~11_combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|MUXout3[24]~16_combout\);

-- Location: LCCOMB_X67_Y55_N6
\WIRING_THE_ALU|Shifting|shifting|z[28]~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|z[28]~19_combout\ = (\Mux0~combout\ & ((\WIRING_THE_ALU|Shifting|shifting|z[29]~15_combout\))) # (!\Mux0~combout\ & (\WIRING_THE_ALU|Shifting|shifting|MUXout3[24]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux0~combout\,
	datac => \WIRING_THE_ALU|Shifting|shifting|MUXout3[24]~16_combout\,
	datad => \WIRING_THE_ALU|Shifting|shifting|z[29]~15_combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|z[28]~19_combout\);

-- Location: LCCOMB_X67_Y55_N24
\WIRING_THE_ALU|Shifting|shifting|z[28]~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|z[28]~20_combout\ = (\WIRING_THE_ALU|Shifting|shifting|z[31]~8_combout\ & ((\WIRING_THE_ALU|Shifting|shifting|z[28]~19_combout\))) # (!\WIRING_THE_ALU|Shifting|shifting|z[31]~8_combout\ & 
-- (\WIRING_THE_ALU|Shifting|sftIn~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WIRING_THE_ALU|Shifting|shifting|z[31]~8_combout\,
	datac => \WIRING_THE_ALU|Shifting|sftIn~combout\,
	datad => \WIRING_THE_ALU|Shifting|shifting|z[28]~19_combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|z[28]~20_combout\);

-- Location: LCCOMB_X67_Y58_N18
\WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit0to7|bit0123|bit23|bit0|cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit0to7|bit0123|bit23|bit0|cout~0_combout\ = (\A[2]~24_combout\ & ((\WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit0to7|bit0123|bit01|bit1|cout~0_combout\) # (\Mux37~combout\ $ (\ALUFunct[3]~input_o\)))) # 
-- (!\A[2]~24_combout\ & (\WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit0to7|bit0123|bit01|bit1|cout~0_combout\ & (\Mux37~combout\ $ (\ALUFunct[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux37~combout\,
	datab => \A[2]~24_combout\,
	datac => \ALUFunct[3]~input_o\,
	datad => \WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit0to7|bit0123|bit01|bit1|cout~0_combout\,
	combout => \WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit0to7|bit0123|bit23|bit0|cout~0_combout\);

-- Location: LCCOMB_X67_Y58_N28
\WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit0to7|bit0123|bit23|bit1|s\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit0to7|bit0123|bit23|bit1|s~combout\ = \Mux39~combout\ $ (\A[3]~25_combout\ $ (\ALUFunct[3]~input_o\ $ (\WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit0to7|bit0123|bit23|bit0|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux39~combout\,
	datab => \A[3]~25_combout\,
	datac => \ALUFunct[3]~input_o\,
	datad => \WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit0to7|bit0123|bit23|bit0|cout~0_combout\,
	combout => \WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit0to7|bit0123|bit23|bit1|s~combout\);

-- Location: LCCOMB_X68_Y57_N12
\WIRING_THE_ALU|Shifting|shifting|MUXout3[4]~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|MUXout3[4]~13_combout\ = (!\Mux37~combout\ & ((\Mux35~combout\ & (\WIRING_THE_ALU|Shifting|shifting|MUXout1[6]~21_combout\)) # (!\Mux35~combout\ & ((\WIRING_THE_ALU|Shifting|shifting|MUXout1[4]~23_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux35~combout\,
	datab => \WIRING_THE_ALU|Shifting|shifting|MUXout1[6]~21_combout\,
	datac => \Mux37~combout\,
	datad => \WIRING_THE_ALU|Shifting|shifting|MUXout1[4]~23_combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|MUXout3[4]~13_combout\);

-- Location: LCCOMB_X67_Y56_N28
\WIRING_THE_ALU|Shifting|shifting|MUXout1[10]~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|MUXout1[10]~34_combout\ = (!\Mux41~combout\ & ((\ALUFunct[2]~input_o\ & (\A[18]~9_combout\)) # (!\ALUFunct[2]~input_o\ & ((\A[13]~19_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[18]~9_combout\,
	datab => \Mux41~combout\,
	datac => \ALUFunct[2]~input_o\,
	datad => \A[13]~19_combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|MUXout1[10]~34_combout\);

-- Location: LCCOMB_X67_Y56_N20
\WIRING_THE_ALU|Shifting|shifting|MUXout1[10]~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|MUXout1[10]~27_combout\ = (\Mux39~combout\ & ((\WIRING_THE_ALU|Shifting|shifting|MUXout0[16]~16_combout\) # ((\WIRING_THE_ALU|Shifting|shifting|MUXout1[10]~34_combout\)))) # (!\Mux39~combout\ & 
-- (((\WIRING_THE_ALU|Shifting|shifting|MUXout0[10]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Shifting|shifting|MUXout0[16]~16_combout\,
	datab => \WIRING_THE_ALU|Shifting|shifting|MUXout0[10]~15_combout\,
	datac => \WIRING_THE_ALU|Shifting|shifting|MUXout1[10]~34_combout\,
	datad => \Mux39~combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|MUXout1[10]~27_combout\);

-- Location: LCCOMB_X69_Y57_N26
\WIRING_THE_ALU|Shifting|shifting|MUXout3[8]~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|MUXout3[8]~14_combout\ = (\Mux35~combout\ & (\WIRING_THE_ALU|Shifting|shifting|MUXout1[10]~27_combout\)) # (!\Mux35~combout\ & ((\WIRING_THE_ALU|Shifting|shifting|MUXout1[8]~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux35~combout\,
	datac => \WIRING_THE_ALU|Shifting|shifting|MUXout1[10]~27_combout\,
	datad => \WIRING_THE_ALU|Shifting|shifting|MUXout1[8]~25_combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|MUXout3[8]~14_combout\);

-- Location: LCCOMB_X68_Y57_N30
\WIRING_THE_ALU|Shifting|shifting|MUXout3[4]~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|MUXout3[4]~15_combout\ = (\WIRING_THE_ALU|Shifting|shifting|MUXout3[4]~13_combout\) # ((\Mux37~combout\ & \WIRING_THE_ALU|Shifting|shifting|MUXout3[8]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Shifting|shifting|MUXout3[4]~13_combout\,
	datac => \Mux37~combout\,
	datad => \WIRING_THE_ALU|Shifting|shifting|MUXout3[8]~14_combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|MUXout3[4]~15_combout\);

-- Location: LCCOMB_X68_Y57_N0
\WIRING_THE_ALU|Shifting|shifting|z[3]~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|z[3]~18_combout\ = (\Mux0~combout\ & (\WIRING_THE_ALU|Shifting|shifting|MUXout3[4]~15_combout\)) # (!\Mux0~combout\ & ((\WIRING_THE_ALU|Shifting|shifting|MUXout3[3]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Shifting|shifting|MUXout3[4]~15_combout\,
	datab => \Mux0~combout\,
	datac => \WIRING_THE_ALU|Shifting|shifting|MUXout3[3]~12_combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|z[3]~18_combout\);

-- Location: LCCOMB_X68_Y58_N26
\WIRING_THE_ALU|Mux28~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Mux28~1_combout\ = (\ALUFunct[2]~input_o\ & (((\ALUFunct[0]~input_o\ & \WIRING_THE_ALU|Shifting|shifting|z[3]~18_combout\)))) # (!\ALUFunct[2]~input_o\ & ((\WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit0to7|bit0123|bit23|bit1|s~combout\) 
-- # ((\ALUFunct[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUFunct[2]~input_o\,
	datab => \WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit0to7|bit0123|bit23|bit1|s~combout\,
	datac => \ALUFunct[0]~input_o\,
	datad => \WIRING_THE_ALU|Shifting|shifting|z[3]~18_combout\,
	combout => \WIRING_THE_ALU|Mux28~1_combout\);

-- Location: LCCOMB_X68_Y58_N12
\WIRING_THE_ALU|set_a_less_b|wiring|bits03|a_eq_b~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|set_a_less_b|wiring|bits03|a_eq_b~2_combout\ = \Mux39~combout\ $ (((\ASEL~input_o\ & ((\immU_J[3]~input_o\))) # (!\ASEL~input_o\ & (\rs1[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs1[3]~input_o\,
	datab => \ASEL~input_o\,
	datac => \Mux39~combout\,
	datad => \immU_J[3]~input_o\,
	combout => \WIRING_THE_ALU|set_a_less_b|wiring|bits03|a_eq_b~2_combout\);

-- Location: LCCOMB_X68_Y58_N4
\WIRING_THE_ALU|Mux28~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Mux28~2_combout\ = (\WIRING_THE_ALU|Mux12~0_combout\ & ((\WIRING_THE_ALU|Mux28~1_combout\ & (\WIRING_THE_ALU|Shifting|shifting|z[28]~20_combout\)) # (!\WIRING_THE_ALU|Mux28~1_combout\ & 
-- ((\WIRING_THE_ALU|set_a_less_b|wiring|bits03|a_eq_b~2_combout\))))) # (!\WIRING_THE_ALU|Mux12~0_combout\ & (((\WIRING_THE_ALU|Mux28~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Mux12~0_combout\,
	datab => \WIRING_THE_ALU|Shifting|shifting|z[28]~20_combout\,
	datac => \WIRING_THE_ALU|Mux28~1_combout\,
	datad => \WIRING_THE_ALU|set_a_less_b|wiring|bits03|a_eq_b~2_combout\,
	combout => \WIRING_THE_ALU|Mux28~2_combout\);

-- Location: LCCOMB_X68_Y58_N16
\WIRING_THE_ALU|Mux28~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Mux28~0_combout\ = (\ALUFunct[1]~input_o\ & ((\ALUFunct[0]~input_o\ & (\A[3]~25_combout\ & \Mux39~combout\)) # (!\ALUFunct[0]~input_o\ & ((\A[3]~25_combout\) # (\Mux39~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUFunct[0]~input_o\,
	datab => \A[3]~25_combout\,
	datac => \Mux39~combout\,
	datad => \ALUFunct[1]~input_o\,
	combout => \WIRING_THE_ALU|Mux28~0_combout\);

-- Location: LCCOMB_X68_Y58_N14
\WIRING_THE_ALU|Mux28~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Mux28~3_combout\ = (\WIRING_THE_ALU|Mux28~0_combout\) # ((!\ALUFunct[1]~input_o\ & \WIRING_THE_ALU|Mux28~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALUFunct[1]~input_o\,
	datac => \WIRING_THE_ALU|Mux28~2_combout\,
	datad => \WIRING_THE_ALU|Mux28~0_combout\,
	combout => \WIRING_THE_ALU|Mux28~3_combout\);

-- Location: LCCOMB_X82_Y61_N18
\PCADDING_1|z[3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PCADDING_1|z\(3) = \PC[3]~input_o\ $ (((\PC[2]~input_o\ & (\PC[0]~input_o\ & \PC[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[3]~input_o\,
	datab => \PC[2]~input_o\,
	datac => \PC[0]~input_o\,
	datad => \PC[1]~input_o\,
	combout => \PCADDING_1|z\(3));

-- Location: LCCOMB_X70_Y64_N20
\Mux4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (!\WDSEL[1]~input_o\ & ((\WDSEL[0]~input_o\ & (\WIRING_THE_ALU|Mux28~3_combout\)) # (!\WDSEL[0]~input_o\ & ((\PCADDING_1|z\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WDSEL[0]~input_o\,
	datab => \WIRING_THE_ALU|Mux28~3_combout\,
	datac => \WDSEL[1]~input_o\,
	datad => \PCADDING_1|z\(3),
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X70_Y64_N30
\Mux4~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (\Mux4~0_combout\) # ((\Memo_READ_Data[3]~input_o\ & \WDSEL[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memo_READ_Data[3]~input_o\,
	datac => \WDSEL[1]~input_o\,
	datad => \Mux4~0_combout\,
	combout => \Mux4~1_combout\);

-- Location: IOIBUF_X117_Y15_N1
\Memo_READ_Data[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Memo_READ_Data(4),
	o => \Memo_READ_Data[4]~input_o\);

-- Location: LCCOMB_X82_Y61_N4
\PCADDING_1|c[3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PCADDING_1|c\(3) = (\PC[3]~input_o\ & (\PC[2]~input_o\ & (\PC[0]~input_o\ & \PC[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[3]~input_o\,
	datab => \PC[2]~input_o\,
	datac => \PC[0]~input_o\,
	datad => \PC[1]~input_o\,
	combout => \PCADDING_1|c\(3));

-- Location: LCCOMB_X68_Y58_N8
\WIRING_THE_ALU|Mux27~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Mux27~0_combout\ = (\ALUFunct[1]~input_o\ & ((\ALUFunct[0]~input_o\ & (\Mux41~combout\ & \A[4]~26_combout\)) # (!\ALUFunct[0]~input_o\ & ((\Mux41~combout\) # (\A[4]~26_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUFunct[0]~input_o\,
	datab => \Mux41~combout\,
	datac => \A[4]~26_combout\,
	datad => \ALUFunct[1]~input_o\,
	combout => \WIRING_THE_ALU|Mux27~0_combout\);

-- Location: LCCOMB_X69_Y54_N18
\WIRING_THE_ALU|Shifting|shifting|MUXout1[11]~35\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|MUXout1[11]~35_combout\ = (!\Mux41~combout\ & ((\ALUFunct[2]~input_o\ & (\A[19]~10_combout\)) # (!\ALUFunct[2]~input_o\ & ((\A[12]~20_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux41~combout\,
	datab => \ALUFunct[2]~input_o\,
	datac => \A[19]~10_combout\,
	datad => \A[12]~20_combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|MUXout1[11]~35_combout\);

-- Location: LCCOMB_X67_Y57_N24
\WIRING_THE_ALU|Shifting|shifting|MUXout1[11]~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|MUXout1[11]~28_combout\ = (\Mux39~combout\ & (((\WIRING_THE_ALU|Shifting|shifting|MUXout1[11]~35_combout\) # (\WIRING_THE_ALU|Shifting|shifting|MUXout0[16]~16_combout\)))) # (!\Mux39~combout\ & 
-- (\WIRING_THE_ALU|Shifting|shifting|MUXout0[11]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Shifting|shifting|MUXout0[11]~1_combout\,
	datab => \WIRING_THE_ALU|Shifting|shifting|MUXout1[11]~35_combout\,
	datac => \WIRING_THE_ALU|Shifting|shifting|MUXout0[16]~16_combout\,
	datad => \Mux39~combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|MUXout1[11]~28_combout\);

-- Location: LCCOMB_X67_Y57_N10
\WIRING_THE_ALU|Shifting|shifting|MUXout3[9]~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|MUXout3[9]~17_combout\ = (\Mux35~combout\ & ((\WIRING_THE_ALU|Shifting|shifting|MUXout1[11]~28_combout\))) # (!\Mux35~combout\ & (\WIRING_THE_ALU|Shifting|shifting|MUXout1[9]~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Shifting|shifting|MUXout1[9]~26_combout\,
	datab => \WIRING_THE_ALU|Shifting|shifting|MUXout1[11]~28_combout\,
	datac => \Mux35~combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|MUXout3[9]~17_combout\);

-- Location: LCCOMB_X67_Y57_N4
\WIRING_THE_ALU|Shifting|shifting|MUXout3[5]~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|MUXout3[5]~18_combout\ = (\Mux37~combout\ & (\WIRING_THE_ALU|Shifting|shifting|MUXout3[9]~17_combout\)) # (!\Mux37~combout\ & ((\WIRING_THE_ALU|Shifting|shifting|MUXout3[5]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Shifting|shifting|MUXout3[9]~17_combout\,
	datab => \WIRING_THE_ALU|Shifting|shifting|MUXout3[5]~5_combout\,
	datac => \Mux37~combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|MUXout3[5]~18_combout\);

-- Location: LCCOMB_X68_Y57_N10
\WIRING_THE_ALU|Shifting|shifting|z[4]~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|z[4]~21_combout\ = (\Mux0~combout\ & ((\WIRING_THE_ALU|Shifting|shifting|MUXout3[5]~18_combout\))) # (!\Mux0~combout\ & (\WIRING_THE_ALU|Shifting|shifting|MUXout3[4]~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Shifting|shifting|MUXout3[4]~15_combout\,
	datab => \Mux0~combout\,
	datac => \WIRING_THE_ALU|Shifting|shifting|MUXout3[5]~18_combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|z[4]~21_combout\);

-- Location: LCCOMB_X67_Y58_N30
\WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit0to7|bit0123|bit23|bit1|cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit0to7|bit0123|bit23|bit1|cout~0_combout\ = (\A[3]~25_combout\ & ((\WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit0to7|bit0123|bit23|bit0|cout~0_combout\) # (\Mux39~combout\ $ (\ALUFunct[3]~input_o\)))) # 
-- (!\A[3]~25_combout\ & (\WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit0to7|bit0123|bit23|bit0|cout~0_combout\ & (\Mux39~combout\ $ (\ALUFunct[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux39~combout\,
	datab => \A[3]~25_combout\,
	datac => \ALUFunct[3]~input_o\,
	datad => \WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit0to7|bit0123|bit23|bit0|cout~0_combout\,
	combout => \WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit0to7|bit0123|bit23|bit1|cout~0_combout\);

-- Location: LCCOMB_X67_Y58_N8
\WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit0to7|bit4567|bit01|bit0|s\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit0to7|bit4567|bit01|bit0|s~combout\ = \WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit0to7|bit0123|bit23|bit1|cout~0_combout\ $ (\ALUFunct[3]~input_o\ $ 
-- (\WIRING_THE_ALU|set_a_less_b|wiring|bits04|a_eq_b~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit0to7|bit0123|bit23|bit1|cout~0_combout\,
	datac => \ALUFunct[3]~input_o\,
	datad => \WIRING_THE_ALU|set_a_less_b|wiring|bits04|a_eq_b~2_combout\,
	combout => \WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit0to7|bit4567|bit01|bit0|s~combout\);

-- Location: LCCOMB_X69_Y58_N6
\WIRING_THE_ALU|Mux27~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Mux27~1_combout\ = (\ALUFunct[0]~input_o\ & ((\WIRING_THE_ALU|Shifting|shifting|z[4]~21_combout\) # ((!\ALUFunct[2]~input_o\)))) # (!\ALUFunct[0]~input_o\ & 
-- (((\WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit0to7|bit4567|bit01|bit0|s~combout\ & !\ALUFunct[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Shifting|shifting|z[4]~21_combout\,
	datab => \ALUFunct[0]~input_o\,
	datac => \WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit0to7|bit4567|bit01|bit0|s~combout\,
	datad => \ALUFunct[2]~input_o\,
	combout => \WIRING_THE_ALU|Mux27~1_combout\);

-- Location: LCCOMB_X66_Y54_N18
\WIRING_THE_ALU|Shifting|shifting|z[27]~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|z[27]~23_combout\ = (\Mux37~combout\ & ((\Mux0~combout\) # (\Mux35~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux0~combout\,
	datac => \Mux37~combout\,
	datad => \Mux35~combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|z[27]~23_combout\);

-- Location: LCCOMB_X68_Y54_N0
\WIRING_THE_ALU|Shifting|shifting|MUXout3[27]~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|MUXout3[27]~19_combout\ = (!\Mux35~combout\ & ((\Mux37~combout\ & (\WIRING_THE_ALU|Shifting|xToIn[31]~5_combout\)) # (!\Mux37~combout\ & ((\WIRING_THE_ALU|Shifting|xToIn[27]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Shifting|xToIn[31]~5_combout\,
	datab => \WIRING_THE_ALU|Shifting|xToIn[27]~1_combout\,
	datac => \Mux37~combout\,
	datad => \Mux35~combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|MUXout3[27]~19_combout\);

-- Location: LCCOMB_X68_Y54_N10
\WIRING_THE_ALU|Shifting|shifting|MUXout3[27]~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|MUXout3[27]~20_combout\ = (\WIRING_THE_ALU|Shifting|shifting|MUXout3[27]~19_combout\) # ((\Mux35~combout\ & \WIRING_THE_ALU|Shifting|xToIn[29]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux35~combout\,
	datac => \WIRING_THE_ALU|Shifting|xToIn[29]~7_combout\,
	datad => \WIRING_THE_ALU|Shifting|shifting|MUXout3[27]~19_combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|MUXout3[27]~20_combout\);

-- Location: LCCOMB_X66_Y54_N0
\WIRING_THE_ALU|Shifting|shifting|z[27]~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|z[27]~22_combout\ = (\Mux0~combout\ & (\WIRING_THE_ALU|Shifting|shifting|MUXout3[24]~16_combout\)) # (!\Mux0~combout\ & ((\WIRING_THE_ALU|Shifting|shifting|MUXout3[27]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WIRING_THE_ALU|Shifting|shifting|MUXout3[24]~16_combout\,
	datac => \Mux0~combout\,
	datad => \WIRING_THE_ALU|Shifting|shifting|MUXout3[27]~20_combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|z[27]~22_combout\);

-- Location: LCCOMB_X66_Y54_N28
\WIRING_THE_ALU|Shifting|shifting|z[27]~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|z[27]~24_combout\ = (\WIRING_THE_ALU|Shifting|shifting|MUXout1[31]~15_combout\ & (((\WIRING_THE_ALU|Shifting|sftIn~combout\)))) # (!\WIRING_THE_ALU|Shifting|shifting|MUXout1[31]~15_combout\ & 
-- ((\WIRING_THE_ALU|Shifting|shifting|z[27]~23_combout\ & (\WIRING_THE_ALU|Shifting|sftIn~combout\)) # (!\WIRING_THE_ALU|Shifting|shifting|z[27]~23_combout\ & ((\WIRING_THE_ALU|Shifting|shifting|z[27]~22_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Shifting|shifting|MUXout1[31]~15_combout\,
	datab => \WIRING_THE_ALU|Shifting|shifting|z[27]~23_combout\,
	datac => \WIRING_THE_ALU|Shifting|sftIn~combout\,
	datad => \WIRING_THE_ALU|Shifting|shifting|z[27]~22_combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|z[27]~24_combout\);

-- Location: LCCOMB_X68_Y58_N2
\WIRING_THE_ALU|Mux27~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Mux27~2_combout\ = (\WIRING_THE_ALU|Mux27~1_combout\ & ((\WIRING_THE_ALU|Shifting|shifting|z[27]~24_combout\) # ((!\WIRING_THE_ALU|Mux12~0_combout\)))) # (!\WIRING_THE_ALU|Mux27~1_combout\ & (((\WIRING_THE_ALU|Mux12~0_combout\ & 
-- \WIRING_THE_ALU|set_a_less_b|wiring|bits04|a_eq_b~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Mux27~1_combout\,
	datab => \WIRING_THE_ALU|Shifting|shifting|z[27]~24_combout\,
	datac => \WIRING_THE_ALU|Mux12~0_combout\,
	datad => \WIRING_THE_ALU|set_a_less_b|wiring|bits04|a_eq_b~2_combout\,
	combout => \WIRING_THE_ALU|Mux27~2_combout\);

-- Location: LCCOMB_X68_Y58_N28
\WIRING_THE_ALU|Mux27~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Mux27~3_combout\ = (\WIRING_THE_ALU|Mux27~0_combout\) # ((!\ALUFunct[1]~input_o\ & \WIRING_THE_ALU|Mux27~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALUFunct[1]~input_o\,
	datac => \WIRING_THE_ALU|Mux27~0_combout\,
	datad => \WIRING_THE_ALU|Mux27~2_combout\,
	combout => \WIRING_THE_ALU|Mux27~3_combout\);

-- Location: LCCOMB_X97_Y38_N0
\Mux5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\WDSEL[0]~input_o\ & (((\WIRING_THE_ALU|Mux27~3_combout\)))) # (!\WDSEL[0]~input_o\ & (\PCADDING_1|c\(3) $ (((\PC[4]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PCADDING_1|c\(3),
	datab => \WDSEL[0]~input_o\,
	datac => \WIRING_THE_ALU|Mux27~3_combout\,
	datad => \PC[4]~input_o\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X97_Y38_N10
\Mux5~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = (\WDSEL[1]~input_o\ & (\Memo_READ_Data[4]~input_o\)) # (!\WDSEL[1]~input_o\ & ((\Mux5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WDSEL[1]~input_o\,
	datac => \Memo_READ_Data[4]~input_o\,
	datad => \Mux5~0_combout\,
	combout => \Mux5~1_combout\);

-- Location: LCCOMB_X97_Y38_N12
\Mux6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (!\WDSEL[0]~input_o\ & (\PC[5]~input_o\ $ (((\PC[4]~input_o\ & \PCADDING_1|c\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[4]~input_o\,
	datab => \PC[5]~input_o\,
	datac => \PCADDING_1|c\(3),
	datad => \WDSEL[0]~input_o\,
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X67_Y58_N2
\WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit0to7|bit4567|bit01|bit0|cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit0to7|bit4567|bit01|bit0|cout~0_combout\ = (\A[4]~26_combout\ & ((\WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit0to7|bit0123|bit23|bit1|cout~0_combout\) # (\ALUFunct[3]~input_o\ $ (\Mux41~combout\)))) # 
-- (!\A[4]~26_combout\ & (\WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit0to7|bit0123|bit23|bit1|cout~0_combout\ & (\ALUFunct[3]~input_o\ $ (\Mux41~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUFunct[3]~input_o\,
	datab => \A[4]~26_combout\,
	datac => \WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit0to7|bit0123|bit23|bit1|cout~0_combout\,
	datad => \Mux41~combout\,
	combout => \WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit0to7|bit4567|bit01|bit0|cout~0_combout\);

-- Location: LCCOMB_X70_Y57_N30
\WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit0to7|bit4567|bit01|bit1|s\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit0to7|bit4567|bit01|bit1|s~combout\ = \WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit0to7|bit4567|bit01|bit0|cout~0_combout\ $ (\ALUFunct[3]~input_o\ $ 
-- (\WIRING_THE_ALU|set_a_less_b|wiring|bits05|a_eq_b~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit0to7|bit4567|bit01|bit0|cout~0_combout\,
	datac => \ALUFunct[3]~input_o\,
	datad => \WIRING_THE_ALU|set_a_less_b|wiring|bits05|a_eq_b~2_combout\,
	combout => \WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit0to7|bit4567|bit01|bit1|s~combout\);

-- Location: LCCOMB_X69_Y54_N28
\WIRING_THE_ALU|Shifting|shifting|MUXout1[12]~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|MUXout1[12]~36_combout\ = (!\Mux41~combout\ & ((\ALUFunct[2]~input_o\ & (\A[20]~11_combout\)) # (!\ALUFunct[2]~input_o\ & ((\A[11]~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[20]~11_combout\,
	datab => \ALUFunct[2]~input_o\,
	datac => \Mux41~combout\,
	datad => \A[11]~21_combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|MUXout1[12]~36_combout\);

-- Location: LCCOMB_X69_Y54_N20
\WIRING_THE_ALU|Shifting|shifting|MUXout1[12]~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|MUXout1[12]~29_combout\ = (\Mux39~combout\ & ((\WIRING_THE_ALU|Shifting|shifting|MUXout0[16]~16_combout\) # ((\WIRING_THE_ALU|Shifting|shifting|MUXout1[12]~36_combout\)))) # (!\Mux39~combout\ & 
-- (((\WIRING_THE_ALU|Shifting|shifting|MUXout0[12]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux39~combout\,
	datab => \WIRING_THE_ALU|Shifting|shifting|MUXout0[16]~16_combout\,
	datac => \WIRING_THE_ALU|Shifting|shifting|MUXout0[12]~11_combout\,
	datad => \WIRING_THE_ALU|Shifting|shifting|MUXout1[12]~36_combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|MUXout1[12]~29_combout\);

-- Location: LCCOMB_X69_Y57_N12
\WIRING_THE_ALU|Shifting|shifting|MUXout3[6]~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|MUXout3[6]~21_combout\ = (\Mux37~combout\ & ((\Mux35~combout\ & ((\WIRING_THE_ALU|Shifting|shifting|MUXout1[12]~29_combout\))) # (!\Mux35~combout\ & (\WIRING_THE_ALU|Shifting|shifting|MUXout1[10]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux35~combout\,
	datab => \WIRING_THE_ALU|Shifting|shifting|MUXout1[10]~27_combout\,
	datac => \Mux37~combout\,
	datad => \WIRING_THE_ALU|Shifting|shifting|MUXout1[12]~29_combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|MUXout3[6]~21_combout\);

-- Location: LCCOMB_X69_Y57_N22
\WIRING_THE_ALU|Shifting|shifting|MUXout3[6]~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|MUXout3[6]~22_combout\ = (\WIRING_THE_ALU|Shifting|shifting|MUXout3[6]~21_combout\) # ((!\Mux37~combout\ & \WIRING_THE_ALU|Shifting|shifting|MUXout3[6]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Shifting|shifting|MUXout3[6]~21_combout\,
	datac => \Mux37~combout\,
	datad => \WIRING_THE_ALU|Shifting|shifting|MUXout3[6]~8_combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|MUXout3[6]~22_combout\);

-- Location: LCCOMB_X69_Y57_N16
\WIRING_THE_ALU|Shifting|shifting|z[5]~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|z[5]~25_combout\ = (\Mux0~combout\ & ((\WIRING_THE_ALU|Shifting|shifting|MUXout3[6]~22_combout\))) # (!\Mux0~combout\ & (\WIRING_THE_ALU|Shifting|shifting|MUXout3[5]~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Shifting|shifting|MUXout3[5]~18_combout\,
	datab => \Mux0~combout\,
	datac => \WIRING_THE_ALU|Shifting|shifting|MUXout3[6]~22_combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|z[5]~25_combout\);

-- Location: LCCOMB_X69_Y53_N12
\WIRING_THE_ALU|Mux26~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Mux26~1_combout\ = (\ALUFunct[0]~input_o\ & (((\WIRING_THE_ALU|Shifting|shifting|z[5]~25_combout\) # (!\ALUFunct[2]~input_o\)))) # (!\ALUFunct[0]~input_o\ & 
-- (\WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit0to7|bit4567|bit01|bit1|s~combout\ & ((!\ALUFunct[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit0to7|bit4567|bit01|bit1|s~combout\,
	datab => \WIRING_THE_ALU|Shifting|shifting|z[5]~25_combout\,
	datac => \ALUFunct[0]~input_o\,
	datad => \ALUFunct[2]~input_o\,
	combout => \WIRING_THE_ALU|Mux26~1_combout\);

-- Location: LCCOMB_X66_Y54_N14
\WIRING_THE_ALU|Shifting|shifting|z[26]~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|z[26]~26_combout\ = (!\Mux39~combout\ & (!\Mux41~combout\ & ((!\Mux35~combout\) # (!\Mux37~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux37~combout\,
	datab => \Mux39~combout\,
	datac => \Mux41~combout\,
	datad => \Mux35~combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|z[26]~26_combout\);

-- Location: LCCOMB_X66_Y55_N10
\WIRING_THE_ALU|Shifting|shifting|MUXout3[26]~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|MUXout3[26]~23_combout\ = (!\Mux35~combout\ & ((\Mux37~combout\ & (\WIRING_THE_ALU|Shifting|xToIn[30]~9_combout\)) # (!\Mux37~combout\ & ((\WIRING_THE_ALU|Shifting|xToIn[26]~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux37~combout\,
	datab => \WIRING_THE_ALU|Shifting|xToIn[30]~9_combout\,
	datac => \Mux35~combout\,
	datad => \WIRING_THE_ALU|Shifting|xToIn[26]~15_combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|MUXout3[26]~23_combout\);

-- Location: LCCOMB_X66_Y55_N20
\WIRING_THE_ALU|Shifting|shifting|MUXout3[26]~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|MUXout3[26]~24_combout\ = (\WIRING_THE_ALU|Shifting|shifting|MUXout3[26]~23_combout\) # ((\Mux35~combout\ & \WIRING_THE_ALU|Shifting|xToIn[28]~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux35~combout\,
	datac => \WIRING_THE_ALU|Shifting|xToIn[28]~11_combout\,
	datad => \WIRING_THE_ALU|Shifting|shifting|MUXout3[26]~23_combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|MUXout3[26]~24_combout\);

-- Location: LCCOMB_X66_Y54_N16
\WIRING_THE_ALU|Shifting|shifting|z[26]~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|z[26]~27_combout\ = (\WIRING_THE_ALU|Shifting|shifting|z[26]~26_combout\ & ((\Mux0~combout\ & ((\WIRING_THE_ALU|Shifting|shifting|MUXout3[27]~20_combout\))) # (!\Mux0~combout\ & 
-- (\WIRING_THE_ALU|Shifting|shifting|MUXout3[26]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Shifting|shifting|MUXout3[26]~24_combout\,
	datab => \WIRING_THE_ALU|Shifting|shifting|z[26]~26_combout\,
	datac => \Mux0~combout\,
	datad => \WIRING_THE_ALU|Shifting|shifting|MUXout3[27]~20_combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|z[26]~27_combout\);

-- Location: LCCOMB_X66_Y54_N10
\WIRING_THE_ALU|Shifting|shifting|z[26]~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|z[26]~28_combout\ = (\WIRING_THE_ALU|Shifting|shifting|z[26]~27_combout\) # ((!\WIRING_THE_ALU|Shifting|shifting|z[26]~26_combout\ & \WIRING_THE_ALU|Shifting|sftIn~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WIRING_THE_ALU|Shifting|shifting|z[26]~26_combout\,
	datac => \WIRING_THE_ALU|Shifting|sftIn~combout\,
	datad => \WIRING_THE_ALU|Shifting|shifting|z[26]~27_combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|z[26]~28_combout\);

-- Location: LCCOMB_X69_Y53_N6
\WIRING_THE_ALU|Mux26~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Mux26~2_combout\ = (\WIRING_THE_ALU|Mux26~1_combout\ & (((\WIRING_THE_ALU|Shifting|shifting|z[26]~28_combout\) # (!\WIRING_THE_ALU|Mux12~0_combout\)))) # (!\WIRING_THE_ALU|Mux26~1_combout\ & 
-- (\WIRING_THE_ALU|set_a_less_b|wiring|bits05|a_eq_b~2_combout\ & (\WIRING_THE_ALU|Mux12~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Mux26~1_combout\,
	datab => \WIRING_THE_ALU|set_a_less_b|wiring|bits05|a_eq_b~2_combout\,
	datac => \WIRING_THE_ALU|Mux12~0_combout\,
	datad => \WIRING_THE_ALU|Shifting|shifting|z[26]~28_combout\,
	combout => \WIRING_THE_ALU|Mux26~2_combout\);

-- Location: LCCOMB_X69_Y53_N26
\WIRING_THE_ALU|Mux26~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Mux26~0_combout\ = (\ALUFunct[1]~input_o\ & ((\A[5]~27_combout\ & ((\Mux43~combout\) # (!\ALUFunct[0]~input_o\))) # (!\A[5]~27_combout\ & (!\ALUFunct[0]~input_o\ & \Mux43~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~27_combout\,
	datab => \ALUFunct[1]~input_o\,
	datac => \ALUFunct[0]~input_o\,
	datad => \Mux43~combout\,
	combout => \WIRING_THE_ALU|Mux26~0_combout\);

-- Location: LCCOMB_X69_Y53_N24
\WIRING_THE_ALU|Mux26~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Mux26~3_combout\ = (\WIRING_THE_ALU|Mux26~0_combout\) # ((\WIRING_THE_ALU|Mux26~2_combout\ & !\ALUFunct[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Mux26~2_combout\,
	datab => \ALUFunct[1]~input_o\,
	datac => \WIRING_THE_ALU|Mux26~0_combout\,
	combout => \WIRING_THE_ALU|Mux26~3_combout\);

-- Location: LCCOMB_X97_Y38_N6
\Mux6~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = (!\WDSEL[1]~input_o\ & ((\Mux6~0_combout\) # ((\WIRING_THE_ALU|Mux26~3_combout\ & \WDSEL[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~0_combout\,
	datab => \WDSEL[1]~input_o\,
	datac => \WIRING_THE_ALU|Mux26~3_combout\,
	datad => \WDSEL[0]~input_o\,
	combout => \Mux6~1_combout\);

-- Location: IOIBUF_X117_Y31_N8
\Memo_READ_Data[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Memo_READ_Data(5),
	o => \Memo_READ_Data[5]~input_o\);

-- Location: LCCOMB_X97_Y38_N8
\Mux6~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux6~2_combout\ = (\Mux6~1_combout\) # ((\WDSEL[1]~input_o\ & \Memo_READ_Data[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~1_combout\,
	datab => \WDSEL[1]~input_o\,
	datad => \Memo_READ_Data[5]~input_o\,
	combout => \Mux6~2_combout\);

-- Location: IOIBUF_X104_Y0_N1
\Memo_READ_Data[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Memo_READ_Data(6),
	o => \Memo_READ_Data[6]~input_o\);

-- Location: LCCOMB_X67_Y56_N22
\WIRING_THE_ALU|Shifting|shifting|MUXout1[13]~37\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|MUXout1[13]~37_combout\ = (!\Mux41~combout\ & ((\ALUFunct[2]~input_o\ & (\A[21]~12_combout\)) # (!\ALUFunct[2]~input_o\ & ((\A[10]~22_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[21]~12_combout\,
	datab => \Mux41~combout\,
	datac => \ALUFunct[2]~input_o\,
	datad => \A[10]~22_combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|MUXout1[13]~37_combout\);

-- Location: LCCOMB_X67_Y56_N14
\WIRING_THE_ALU|Shifting|shifting|MUXout1[13]~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|MUXout1[13]~30_combout\ = (\Mux39~combout\ & (((\WIRING_THE_ALU|Shifting|shifting|MUXout1[13]~37_combout\) # (\WIRING_THE_ALU|Shifting|shifting|MUXout0[16]~16_combout\)))) # (!\Mux39~combout\ & 
-- (\WIRING_THE_ALU|Shifting|shifting|MUXout0[13]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Shifting|shifting|MUXout0[13]~7_combout\,
	datab => \Mux39~combout\,
	datac => \WIRING_THE_ALU|Shifting|shifting|MUXout1[13]~37_combout\,
	datad => \WIRING_THE_ALU|Shifting|shifting|MUXout0[16]~16_combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|MUXout1[13]~30_combout\);

-- Location: LCCOMB_X68_Y56_N0
\WIRING_THE_ALU|Shifting|shifting|MUXout3[7]~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|MUXout3[7]~25_combout\ = (\Mux37~combout\ & ((\Mux35~combout\ & (\WIRING_THE_ALU|Shifting|shifting|MUXout1[13]~30_combout\)) # (!\Mux35~combout\ & ((\WIRING_THE_ALU|Shifting|shifting|MUXout1[11]~28_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Shifting|shifting|MUXout1[13]~30_combout\,
	datab => \WIRING_THE_ALU|Shifting|shifting|MUXout1[11]~28_combout\,
	datac => \Mux37~combout\,
	datad => \Mux35~combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|MUXout3[7]~25_combout\);

-- Location: LCCOMB_X69_Y57_N10
\WIRING_THE_ALU|Shifting|shifting|MUXout3[7]~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|MUXout3[7]~26_combout\ = (\WIRING_THE_ALU|Shifting|shifting|MUXout3[7]~25_combout\) # ((!\Mux37~combout\ & \WIRING_THE_ALU|Shifting|shifting|MUXout3[7]~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Shifting|shifting|MUXout3[7]~25_combout\,
	datac => \Mux37~combout\,
	datad => \WIRING_THE_ALU|Shifting|shifting|MUXout3[7]~11_combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|MUXout3[7]~26_combout\);

-- Location: LCCOMB_X69_Y57_N20
\WIRING_THE_ALU|Shifting|shifting|z[6]~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|z[6]~29_combout\ = (\Mux0~combout\ & ((\WIRING_THE_ALU|Shifting|shifting|MUXout3[7]~26_combout\))) # (!\Mux0~combout\ & (\WIRING_THE_ALU|Shifting|shifting|MUXout3[6]~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux0~combout\,
	datac => \WIRING_THE_ALU|Shifting|shifting|MUXout3[6]~22_combout\,
	datad => \WIRING_THE_ALU|Shifting|shifting|MUXout3[7]~26_combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|z[6]~29_combout\);

-- Location: LCCOMB_X70_Y57_N18
\WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit0to7|bit4567|bit01|bit1|cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit0to7|bit4567|bit01|bit1|cout~0_combout\ = (\WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit0to7|bit4567|bit01|bit0|cout~0_combout\ & ((\A[5]~27_combout\) # (\ALUFunct[3]~input_o\ $ (\Mux43~combout\)))) # 
-- (!\WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit0to7|bit4567|bit01|bit0|cout~0_combout\ & (\A[5]~27_combout\ & (\ALUFunct[3]~input_o\ $ (\Mux43~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit0to7|bit4567|bit01|bit0|cout~0_combout\,
	datab => \ALUFunct[3]~input_o\,
	datac => \A[5]~27_combout\,
	datad => \Mux43~combout\,
	combout => \WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit0to7|bit4567|bit01|bit1|cout~0_combout\);

-- Location: LCCOMB_X70_Y57_N12
\WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit0to7|bit4567|bit23|bit0|s\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit0to7|bit4567|bit23|bit0|s~combout\ = \WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit0to7|bit4567|bit01|bit1|cout~0_combout\ $ (\ALUFunct[3]~input_o\ $ 
-- (\WIRING_THE_ALU|set_a_less_b|wiring|bits06|a_eq_b~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit0to7|bit4567|bit01|bit1|cout~0_combout\,
	datac => \ALUFunct[3]~input_o\,
	datad => \WIRING_THE_ALU|set_a_less_b|wiring|bits06|a_eq_b~2_combout\,
	combout => \WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit0to7|bit4567|bit23|bit0|s~combout\);

-- Location: LCCOMB_X70_Y57_N22
\WIRING_THE_ALU|Mux25~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Mux25~1_combout\ = (\ALUFunct[2]~input_o\ & (\WIRING_THE_ALU|Shifting|shifting|z[6]~29_combout\ & (\ALUFunct[0]~input_o\))) # (!\ALUFunct[2]~input_o\ & (((\ALUFunct[0]~input_o\) # 
-- (\WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit0to7|bit4567|bit23|bit0|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUFunct[2]~input_o\,
	datab => \WIRING_THE_ALU|Shifting|shifting|z[6]~29_combout\,
	datac => \ALUFunct[0]~input_o\,
	datad => \WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit0to7|bit4567|bit23|bit0|s~combout\,
	combout => \WIRING_THE_ALU|Mux25~1_combout\);

-- Location: LCCOMB_X67_Y55_N18
\WIRING_THE_ALU|Shifting|shifting|MUXout3[25]~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|MUXout3[25]~27_combout\ = (!\Mux37~combout\ & ((\Mux35~combout\ & ((\WIRING_THE_ALU|Shifting|xToIn[27]~1_combout\))) # (!\Mux35~combout\ & (\WIRING_THE_ALU|Shifting|xToIn[25]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux37~combout\,
	datab => \WIRING_THE_ALU|Shifting|xToIn[25]~2_combout\,
	datac => \WIRING_THE_ALU|Shifting|xToIn[27]~1_combout\,
	datad => \Mux35~combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|MUXout3[25]~27_combout\);

-- Location: LCCOMB_X67_Y55_N20
\WIRING_THE_ALU|Shifting|shifting|MUXout3[25]~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|MUXout3[25]~28_combout\ = (\WIRING_THE_ALU|Shifting|shifting|MUXout3[25]~27_combout\) # ((\Mux37~combout\ & \WIRING_THE_ALU|Shifting|shifting|z[29]~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux37~combout\,
	datab => \WIRING_THE_ALU|Shifting|shifting|MUXout3[25]~27_combout\,
	datad => \WIRING_THE_ALU|Shifting|shifting|z[29]~15_combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|MUXout3[25]~28_combout\);

-- Location: LCCOMB_X66_Y54_N12
\WIRING_THE_ALU|Shifting|shifting|z[25]~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|z[25]~30_combout\ = (!\WIRING_THE_ALU|Shifting|shifting|MUXout1[31]~15_combout\ & (((!\Mux35~combout\) # (!\Mux37~combout\)) # (!\Mux0~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Shifting|shifting|MUXout1[31]~15_combout\,
	datab => \Mux0~combout\,
	datac => \Mux37~combout\,
	datad => \Mux35~combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|z[25]~30_combout\);

-- Location: LCCOMB_X66_Y54_N22
\WIRING_THE_ALU|Shifting|shifting|z[25]~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|z[25]~31_combout\ = (\WIRING_THE_ALU|Shifting|shifting|z[25]~30_combout\ & ((\Mux0~combout\ & (\WIRING_THE_ALU|Shifting|shifting|MUXout3[26]~24_combout\)) # (!\Mux0~combout\ & 
-- ((\WIRING_THE_ALU|Shifting|shifting|MUXout3[25]~28_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Shifting|shifting|MUXout3[26]~24_combout\,
	datab => \WIRING_THE_ALU|Shifting|shifting|MUXout3[25]~28_combout\,
	datac => \Mux0~combout\,
	datad => \WIRING_THE_ALU|Shifting|shifting|z[25]~30_combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|z[25]~31_combout\);

-- Location: LCCOMB_X66_Y54_N24
\WIRING_THE_ALU|Shifting|shifting|z[25]~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|z[25]~32_combout\ = (\WIRING_THE_ALU|Shifting|shifting|z[25]~31_combout\) # ((\WIRING_THE_ALU|Shifting|sftIn~combout\ & !\WIRING_THE_ALU|Shifting|shifting|z[25]~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Shifting|shifting|z[25]~31_combout\,
	datac => \WIRING_THE_ALU|Shifting|sftIn~combout\,
	datad => \WIRING_THE_ALU|Shifting|shifting|z[25]~30_combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|z[25]~32_combout\);

-- Location: LCCOMB_X70_Y57_N8
\WIRING_THE_ALU|Mux25~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Mux25~2_combout\ = (\WIRING_THE_ALU|Mux12~0_combout\ & ((\WIRING_THE_ALU|Mux25~1_combout\ & (\WIRING_THE_ALU|Shifting|shifting|z[25]~32_combout\)) # (!\WIRING_THE_ALU|Mux25~1_combout\ & 
-- ((\WIRING_THE_ALU|set_a_less_b|wiring|bits06|a_eq_b~2_combout\))))) # (!\WIRING_THE_ALU|Mux12~0_combout\ & (\WIRING_THE_ALU|Mux25~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Mux12~0_combout\,
	datab => \WIRING_THE_ALU|Mux25~1_combout\,
	datac => \WIRING_THE_ALU|Shifting|shifting|z[25]~32_combout\,
	datad => \WIRING_THE_ALU|set_a_less_b|wiring|bits06|a_eq_b~2_combout\,
	combout => \WIRING_THE_ALU|Mux25~2_combout\);

-- Location: LCCOMB_X70_Y57_N0
\WIRING_THE_ALU|Mux25~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Mux25~0_combout\ = (\ALUFunct[1]~input_o\ & ((\Mux45~combout\ & ((\A[6]~28_combout\) # (!\ALUFunct[0]~input_o\))) # (!\Mux45~combout\ & (!\ALUFunct[0]~input_o\ & \A[6]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUFunct[1]~input_o\,
	datab => \Mux45~combout\,
	datac => \ALUFunct[0]~input_o\,
	datad => \A[6]~28_combout\,
	combout => \WIRING_THE_ALU|Mux25~0_combout\);

-- Location: LCCOMB_X70_Y57_N10
\WIRING_THE_ALU|Mux25~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Mux25~3_combout\ = (\WIRING_THE_ALU|Mux25~0_combout\) # ((!\ALUFunct[1]~input_o\ & \WIRING_THE_ALU|Mux25~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUFunct[1]~input_o\,
	datac => \WIRING_THE_ALU|Mux25~2_combout\,
	datad => \WIRING_THE_ALU|Mux25~0_combout\,
	combout => \WIRING_THE_ALU|Mux25~3_combout\);

-- Location: LCCOMB_X93_Y41_N28
\PCADDING_1|z[6]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PCADDING_1|z\(6) = \PC[6]~input_o\ $ (((\PC[4]~input_o\ & (\PCADDING_1|c\(3) & \PC[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[4]~input_o\,
	datab => \PC[6]~input_o\,
	datac => \PCADDING_1|c\(3),
	datad => \PC[5]~input_o\,
	combout => \PCADDING_1|z\(6));

-- Location: LCCOMB_X97_Y38_N2
\Mux7~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (!\WDSEL[1]~input_o\ & ((\WDSEL[0]~input_o\ & (\WIRING_THE_ALU|Mux25~3_combout\)) # (!\WDSEL[0]~input_o\ & ((\PCADDING_1|z\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Mux25~3_combout\,
	datab => \WDSEL[0]~input_o\,
	datac => \PCADDING_1|z\(6),
	datad => \WDSEL[1]~input_o\,
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X97_Y38_N28
\Mux7~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = (\Mux7~0_combout\) # ((\WDSEL[1]~input_o\ & \Memo_READ_Data[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WDSEL[1]~input_o\,
	datac => \Memo_READ_Data[6]~input_o\,
	datad => \Mux7~0_combout\,
	combout => \Mux7~1_combout\);

-- Location: LCCOMB_X93_Y41_N14
\PCADDING_1|c[6]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PCADDING_1|c\(6) = (\PC[4]~input_o\ & (\PC[6]~input_o\ & (\PCADDING_1|c\(3) & \PC[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[4]~input_o\,
	datab => \PC[6]~input_o\,
	datac => \PCADDING_1|c\(3),
	datad => \PC[5]~input_o\,
	combout => \PCADDING_1|c\(6));

-- Location: LCCOMB_X66_Y55_N14
\WIRING_THE_ALU|Shifting|shifting|MUXout3[24]~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|MUXout3[24]~31_combout\ = (!\Mux37~combout\ & ((\Mux35~combout\ & (\WIRING_THE_ALU|Shifting|xToIn[26]~15_combout\)) # (!\Mux35~combout\ & ((\WIRING_THE_ALU|Shifting|xToIn[24]~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux37~combout\,
	datab => \WIRING_THE_ALU|Shifting|xToIn[26]~15_combout\,
	datac => \Mux35~combout\,
	datad => \WIRING_THE_ALU|Shifting|xToIn[24]~13_combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|MUXout3[24]~31_combout\);

-- Location: LCCOMB_X66_Y55_N16
\WIRING_THE_ALU|Shifting|shifting|MUXout3[24]~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|MUXout3[24]~32_combout\ = (\WIRING_THE_ALU|Shifting|shifting|MUXout3[24]~31_combout\) # ((\Mux37~combout\ & \WIRING_THE_ALU|Shifting|shifting|MUXout3[24]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux37~combout\,
	datac => \WIRING_THE_ALU|Shifting|shifting|MUXout3[24]~31_combout\,
	datad => \WIRING_THE_ALU|Shifting|shifting|MUXout3[24]~16_combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|MUXout3[24]~32_combout\);

-- Location: LCCOMB_X66_Y54_N2
\WIRING_THE_ALU|Shifting|shifting|z[24]~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|z[24]~34_combout\ = (!\WIRING_THE_ALU|Shifting|shifting|MUXout1[31]~15_combout\ & ((\Mux0~combout\ & ((\WIRING_THE_ALU|Shifting|shifting|MUXout3[25]~28_combout\))) # (!\Mux0~combout\ & 
-- (\WIRING_THE_ALU|Shifting|shifting|MUXout3[24]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Shifting|shifting|MUXout1[31]~15_combout\,
	datab => \WIRING_THE_ALU|Shifting|shifting|MUXout3[24]~32_combout\,
	datac => \Mux0~combout\,
	datad => \WIRING_THE_ALU|Shifting|shifting|MUXout3[25]~28_combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|z[24]~34_combout\);

-- Location: LCCOMB_X66_Y54_N30
\WIRING_THE_ALU|Shifting|shifting|z[24]~74\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|z[24]~74_combout\ = (\WIRING_THE_ALU|Shifting|shifting|z[24]~34_combout\) # ((\WIRING_THE_ALU|Shifting|sftIn~combout\ & ((\Mux39~combout\) # (\Mux41~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Shifting|sftIn~combout\,
	datab => \Mux39~combout\,
	datac => \Mux41~combout\,
	datad => \WIRING_THE_ALU|Shifting|shifting|z[24]~34_combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|z[24]~74_combout\);

-- Location: LCCOMB_X70_Y57_N28
\WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit0to7|bit4567|bit23|bit0|cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit0to7|bit4567|bit23|bit0|cout~0_combout\ = (\WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit0to7|bit4567|bit01|bit1|cout~0_combout\ & ((\A[6]~28_combout\) # (\ALUFunct[3]~input_o\ $ (\Mux45~combout\)))) # 
-- (!\WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit0to7|bit4567|bit01|bit1|cout~0_combout\ & (\A[6]~28_combout\ & (\ALUFunct[3]~input_o\ $ (\Mux45~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUFunct[3]~input_o\,
	datab => \WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit0to7|bit4567|bit01|bit1|cout~0_combout\,
	datac => \Mux45~combout\,
	datad => \A[6]~28_combout\,
	combout => \WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit0to7|bit4567|bit23|bit0|cout~0_combout\);

-- Location: LCCOMB_X70_Y57_N14
\WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit0to7|bit4567|bit23|bit1|s\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit0to7|bit4567|bit23|bit1|s~combout\ = \WIRING_THE_ALU|set_a_less_b|wiring|bits07|a_eq_b~2_combout\ $ (\ALUFunct[3]~input_o\ $ 
-- (\WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit0to7|bit4567|bit23|bit0|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WIRING_THE_ALU|set_a_less_b|wiring|bits07|a_eq_b~2_combout\,
	datac => \ALUFunct[3]~input_o\,
	datad => \WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit0to7|bit4567|bit23|bit0|cout~0_combout\,
	combout => \WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit0to7|bit4567|bit23|bit1|s~combout\);

-- Location: LCCOMB_X68_Y53_N28
\WIRING_THE_ALU|Shifting|shifting|MUXout1[14]~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|MUXout1[14]~38_combout\ = (!\Mux41~combout\ & ((\ALUFunct[2]~input_o\ & ((\A[22]~13_combout\))) # (!\ALUFunct[2]~input_o\ & (\A[9]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUFunct[2]~input_o\,
	datab => \Mux41~combout\,
	datac => \A[9]~31_combout\,
	datad => \A[22]~13_combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|MUXout1[14]~38_combout\);

-- Location: LCCOMB_X69_Y56_N28
\WIRING_THE_ALU|Shifting|shifting|MUXout1[14]~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|MUXout1[14]~31_combout\ = (\Mux39~combout\ & ((\WIRING_THE_ALU|Shifting|shifting|MUXout1[14]~38_combout\) # ((\WIRING_THE_ALU|Shifting|shifting|MUXout0[16]~16_combout\)))) # (!\Mux39~combout\ & 
-- (((\WIRING_THE_ALU|Shifting|shifting|MUXout0[14]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Shifting|shifting|MUXout1[14]~38_combout\,
	datab => \WIRING_THE_ALU|Shifting|shifting|MUXout0[16]~16_combout\,
	datac => \WIRING_THE_ALU|Shifting|shifting|MUXout0[14]~9_combout\,
	datad => \Mux39~combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|MUXout1[14]~31_combout\);

-- Location: LCCOMB_X69_Y57_N6
\WIRING_THE_ALU|Shifting|shifting|MUXout3[8]~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|MUXout3[8]~29_combout\ = (\Mux37~combout\ & ((\Mux35~combout\ & ((\WIRING_THE_ALU|Shifting|shifting|MUXout1[14]~31_combout\))) # (!\Mux35~combout\ & (\WIRING_THE_ALU|Shifting|shifting|MUXout1[12]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux35~combout\,
	datab => \WIRING_THE_ALU|Shifting|shifting|MUXout1[12]~29_combout\,
	datac => \Mux37~combout\,
	datad => \WIRING_THE_ALU|Shifting|shifting|MUXout1[14]~31_combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|MUXout3[8]~29_combout\);

-- Location: LCCOMB_X69_Y57_N0
\WIRING_THE_ALU|Shifting|shifting|MUXout3[8]~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|MUXout3[8]~30_combout\ = (\WIRING_THE_ALU|Shifting|shifting|MUXout3[8]~29_combout\) # ((!\Mux37~combout\ & \WIRING_THE_ALU|Shifting|shifting|MUXout3[8]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux37~combout\,
	datac => \WIRING_THE_ALU|Shifting|shifting|MUXout3[8]~14_combout\,
	datad => \WIRING_THE_ALU|Shifting|shifting|MUXout3[8]~29_combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|MUXout3[8]~30_combout\);

-- Location: LCCOMB_X69_Y57_N2
\WIRING_THE_ALU|Shifting|shifting|z[7]~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|z[7]~33_combout\ = (\Mux0~combout\ & ((\WIRING_THE_ALU|Shifting|shifting|MUXout3[8]~30_combout\))) # (!\Mux0~combout\ & (\WIRING_THE_ALU|Shifting|shifting|MUXout3[7]~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Shifting|shifting|MUXout3[7]~26_combout\,
	datab => \Mux0~combout\,
	datad => \WIRING_THE_ALU|Shifting|shifting|MUXout3[8]~30_combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|z[7]~33_combout\);

-- Location: LCCOMB_X70_Y57_N16
\WIRING_THE_ALU|Mux24~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Mux24~1_combout\ = (\ALUFunct[2]~input_o\ & (((\ALUFunct[0]~input_o\ & \WIRING_THE_ALU|Shifting|shifting|z[7]~33_combout\)))) # (!\ALUFunct[2]~input_o\ & ((\WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit0to7|bit4567|bit23|bit1|s~combout\) 
-- # ((\ALUFunct[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUFunct[2]~input_o\,
	datab => \WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit0to7|bit4567|bit23|bit1|s~combout\,
	datac => \ALUFunct[0]~input_o\,
	datad => \WIRING_THE_ALU|Shifting|shifting|z[7]~33_combout\,
	combout => \WIRING_THE_ALU|Mux24~1_combout\);

-- Location: LCCOMB_X70_Y53_N6
\WIRING_THE_ALU|Mux24~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Mux24~2_combout\ = (\WIRING_THE_ALU|Mux12~0_combout\ & ((\WIRING_THE_ALU|Mux24~1_combout\ & ((\WIRING_THE_ALU|Shifting|shifting|z[24]~74_combout\))) # (!\WIRING_THE_ALU|Mux24~1_combout\ & 
-- (\WIRING_THE_ALU|set_a_less_b|wiring|bits07|a_eq_b~2_combout\)))) # (!\WIRING_THE_ALU|Mux12~0_combout\ & (((\WIRING_THE_ALU|Mux24~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Mux12~0_combout\,
	datab => \WIRING_THE_ALU|set_a_less_b|wiring|bits07|a_eq_b~2_combout\,
	datac => \WIRING_THE_ALU|Shifting|shifting|z[24]~74_combout\,
	datad => \WIRING_THE_ALU|Mux24~1_combout\,
	combout => \WIRING_THE_ALU|Mux24~2_combout\);

-- Location: LCCOMB_X70_Y53_N12
\WIRING_THE_ALU|Mux24~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Mux24~0_combout\ = (\ALUFunct[1]~input_o\ & ((\Mux47~combout\ & ((\A[7]~29_combout\) # (!\ALUFunct[0]~input_o\))) # (!\Mux47~combout\ & (!\ALUFunct[0]~input_o\ & \A[7]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux47~combout\,
	datab => \ALUFunct[0]~input_o\,
	datac => \ALUFunct[1]~input_o\,
	datad => \A[7]~29_combout\,
	combout => \WIRING_THE_ALU|Mux24~0_combout\);

-- Location: LCCOMB_X70_Y53_N24
\WIRING_THE_ALU|Mux24~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Mux24~3_combout\ = (\WIRING_THE_ALU|Mux24~0_combout\) # ((\WIRING_THE_ALU|Mux24~2_combout\ & !\ALUFunct[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Mux24~2_combout\,
	datac => \ALUFunct[1]~input_o\,
	datad => \WIRING_THE_ALU|Mux24~0_combout\,
	combout => \WIRING_THE_ALU|Mux24~3_combout\);

-- Location: LCCOMB_X70_Y53_N14
\Mux8~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (\WDSEL[0]~input_o\ & (((\WIRING_THE_ALU|Mux24~3_combout\)))) # (!\WDSEL[0]~input_o\ & (\PCADDING_1|c\(6) $ ((\PC[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WDSEL[0]~input_o\,
	datab => \PCADDING_1|c\(6),
	datac => \PC[7]~input_o\,
	datad => \WIRING_THE_ALU|Mux24~3_combout\,
	combout => \Mux8~0_combout\);

-- Location: IOIBUF_X48_Y91_N8
\Memo_READ_Data[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Memo_READ_Data(7),
	o => \Memo_READ_Data[7]~input_o\);

-- Location: LCCOMB_X70_Y53_N16
\Mux8~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux8~1_combout\ = (\WDSEL[1]~input_o\ & ((\Memo_READ_Data[7]~input_o\))) # (!\WDSEL[1]~input_o\ & (\Mux8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WDSEL[1]~input_o\,
	datab => \Mux8~0_combout\,
	datac => \Memo_READ_Data[7]~input_o\,
	combout => \Mux8~1_combout\);

-- Location: LCCOMB_X70_Y53_N4
\Mux9~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux9~1_combout\ = (!\WDSEL[0]~input_o\ & (\PC[8]~input_o\ $ (((\PCADDING_1|c\(6) & \PC[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[8]~input_o\,
	datab => \PCADDING_1|c\(6),
	datac => \PC[7]~input_o\,
	datad => \WDSEL[0]~input_o\,
	combout => \Mux9~1_combout\);

-- Location: IOIBUF_X48_Y0_N8
\Memo_READ_Data[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Memo_READ_Data(8),
	o => \Memo_READ_Data[8]~input_o\);

-- Location: LCCOMB_X68_Y53_N14
\WIRING_THE_ALU|Shifting|shifting|MUXout1[15]~39\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|MUXout1[15]~39_combout\ = (!\Mux41~combout\ & ((\ALUFunct[2]~input_o\ & ((\A[23]~14_combout\))) # (!\ALUFunct[2]~input_o\ & (\A[8]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUFunct[2]~input_o\,
	datab => \A[8]~30_combout\,
	datac => \Mux41~combout\,
	datad => \A[23]~14_combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|MUXout1[15]~39_combout\);

-- Location: LCCOMB_X69_Y56_N14
\WIRING_THE_ALU|Shifting|shifting|MUXout1[15]~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|MUXout1[15]~32_combout\ = (\Mux39~combout\ & ((\WIRING_THE_ALU|Shifting|shifting|MUXout1[15]~39_combout\) # ((\WIRING_THE_ALU|Shifting|shifting|MUXout0[16]~16_combout\)))) # (!\Mux39~combout\ & 
-- (((\WIRING_THE_ALU|Shifting|shifting|MUXout0[15]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Shifting|shifting|MUXout1[15]~39_combout\,
	datab => \WIRING_THE_ALU|Shifting|shifting|MUXout0[15]~5_combout\,
	datac => \WIRING_THE_ALU|Shifting|shifting|MUXout0[16]~16_combout\,
	datad => \Mux39~combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|MUXout1[15]~32_combout\);

-- Location: LCCOMB_X68_Y56_N2
\WIRING_THE_ALU|Shifting|shifting|MUXout3[9]~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|MUXout3[9]~33_combout\ = (\Mux37~combout\ & ((\Mux35~combout\ & ((\WIRING_THE_ALU|Shifting|shifting|MUXout1[15]~32_combout\))) # (!\Mux35~combout\ & (\WIRING_THE_ALU|Shifting|shifting|MUXout1[13]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Shifting|shifting|MUXout1[13]~30_combout\,
	datab => \WIRING_THE_ALU|Shifting|shifting|MUXout1[15]~32_combout\,
	datac => \Mux37~combout\,
	datad => \Mux35~combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|MUXout3[9]~33_combout\);

-- Location: LCCOMB_X67_Y57_N22
\WIRING_THE_ALU|Shifting|shifting|MUXout3[9]~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|MUXout3[9]~34_combout\ = (\WIRING_THE_ALU|Shifting|shifting|MUXout3[9]~33_combout\) # ((!\Mux37~combout\ & \WIRING_THE_ALU|Shifting|shifting|MUXout3[9]~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Shifting|shifting|MUXout3[9]~33_combout\,
	datac => \Mux37~combout\,
	datad => \WIRING_THE_ALU|Shifting|shifting|MUXout3[9]~17_combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|MUXout3[9]~34_combout\);

-- Location: LCCOMB_X69_Y57_N4
\WIRING_THE_ALU|Shifting|shifting|z[8]~35\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|z[8]~35_combout\ = (\Mux0~combout\ & (\WIRING_THE_ALU|Shifting|shifting|MUXout3[9]~34_combout\)) # (!\Mux0~combout\ & ((\WIRING_THE_ALU|Shifting|shifting|MUXout3[8]~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Shifting|shifting|MUXout3[9]~34_combout\,
	datab => \Mux0~combout\,
	datad => \WIRING_THE_ALU|Shifting|shifting|MUXout3[8]~30_combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|z[8]~35_combout\);

-- Location: LCCOMB_X70_Y53_N26
\WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit0to7|bit4567|bit23|bit1|cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit0to7|bit4567|bit23|bit1|cout~0_combout\ = (\WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit0to7|bit4567|bit23|bit0|cout~0_combout\ & ((\A[7]~29_combout\) # (\Mux47~combout\ $ (\ALUFunct[3]~input_o\)))) # 
-- (!\WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit0to7|bit4567|bit23|bit0|cout~0_combout\ & (\A[7]~29_combout\ & (\Mux47~combout\ $ (\ALUFunct[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux47~combout\,
	datab => \ALUFunct[3]~input_o\,
	datac => \WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit0to7|bit4567|bit23|bit0|cout~0_combout\,
	datad => \A[7]~29_combout\,
	combout => \WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit0to7|bit4567|bit23|bit1|cout~0_combout\);

-- Location: LCCOMB_X66_Y53_N22
\WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit8toF|bit0123|bit01|bit0|s\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit8toF|bit0123|bit01|bit0|s~combout\ = \WIRING_THE_ALU|set_a_less_b|wiring|bits08|a_eq_b~2_combout\ $ (\ALUFunct[3]~input_o\ $ 
-- (\WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit0to7|bit4567|bit23|bit1|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|set_a_less_b|wiring|bits08|a_eq_b~2_combout\,
	datab => \ALUFunct[3]~input_o\,
	datac => \WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit0to7|bit4567|bit23|bit1|cout~0_combout\,
	combout => \WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit8toF|bit0123|bit01|bit0|s~combout\);

-- Location: LCCOMB_X66_Y53_N8
\WIRING_THE_ALU|Mux23~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Mux23~1_combout\ = (\ALUFunct[2]~input_o\ & (\ALUFunct[0]~input_o\ & (\WIRING_THE_ALU|Shifting|shifting|z[8]~35_combout\))) # (!\ALUFunct[2]~input_o\ & ((\ALUFunct[0]~input_o\) # 
-- ((\WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit8toF|bit0123|bit01|bit0|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUFunct[2]~input_o\,
	datab => \ALUFunct[0]~input_o\,
	datac => \WIRING_THE_ALU|Shifting|shifting|z[8]~35_combout\,
	datad => \WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit8toF|bit0123|bit01|bit0|s~combout\,
	combout => \WIRING_THE_ALU|Mux23~1_combout\);

-- Location: LCCOMB_X67_Y54_N8
\WIRING_THE_ALU|Shifting|shifting|MUXout3[23]~35\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|MUXout3[23]~35_combout\ = (\Mux35~combout\ & ((\Mux37~combout\ & ((\WIRING_THE_ALU|Shifting|xToIn[29]~7_combout\))) # (!\Mux37~combout\ & (\WIRING_THE_ALU|Shifting|xToIn[25]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux37~combout\,
	datab => \WIRING_THE_ALU|Shifting|xToIn[25]~2_combout\,
	datac => \Mux35~combout\,
	datad => \WIRING_THE_ALU|Shifting|xToIn[29]~7_combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|MUXout3[23]~35_combout\);

-- Location: LCCOMB_X68_Y54_N12
\WIRING_THE_ALU|Shifting|shifting|MUXout2[19]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|MUXout2[19]~4_combout\ = (\Mux39~combout\ & (\WIRING_THE_ALU|Shifting|xToIn[31]~5_combout\)) # (!\Mux39~combout\ & ((\WIRING_THE_ALU|Shifting|xToIn[23]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Shifting|xToIn[31]~5_combout\,
	datac => \Mux39~combout\,
	datad => \WIRING_THE_ALU|Shifting|xToIn[23]~4_combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|MUXout2[19]~4_combout\);

-- Location: LCCOMB_X68_Y54_N6
\WIRING_THE_ALU|Shifting|shifting|MUXout2[23]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|MUXout2[23]~5_combout\ = (\Mux37~combout\ & (\WIRING_THE_ALU|Shifting|xToIn[27]~1_combout\)) # (!\Mux37~combout\ & ((\WIRING_THE_ALU|Shifting|shifting|MUXout2[19]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WIRING_THE_ALU|Shifting|xToIn[27]~1_combout\,
	datac => \Mux37~combout\,
	datad => \WIRING_THE_ALU|Shifting|shifting|MUXout2[19]~4_combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|MUXout2[23]~5_combout\);

-- Location: LCCOMB_X67_Y54_N18
\WIRING_THE_ALU|Shifting|shifting|MUXout3[23]~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|MUXout3[23]~36_combout\ = (\WIRING_THE_ALU|Shifting|shifting|MUXout3[23]~35_combout\) # ((!\Mux35~combout\ & \WIRING_THE_ALU|Shifting|shifting|MUXout2[23]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux35~combout\,
	datac => \WIRING_THE_ALU|Shifting|shifting|MUXout3[23]~35_combout\,
	datad => \WIRING_THE_ALU|Shifting|shifting|MUXout2[23]~5_combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|MUXout3[23]~36_combout\);

-- Location: LCCOMB_X67_Y55_N22
\WIRING_THE_ALU|Shifting|shifting|z[23]~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|z[23]~36_combout\ = (\Mux41~combout\) # ((\Mux39~combout\ & ((\Mux37~combout\) # (!\WIRING_THE_ALU|Shifting|shifting|z[31]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux37~combout\,
	datab => \WIRING_THE_ALU|Shifting|shifting|z[31]~9_combout\,
	datac => \Mux41~combout\,
	datad => \Mux39~combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|z[23]~36_combout\);

-- Location: LCCOMB_X66_Y53_N10
\WIRING_THE_ALU|Shifting|shifting|z[23]~37\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|z[23]~37_combout\ = (!\WIRING_THE_ALU|Shifting|shifting|z[23]~36_combout\ & ((\Mux0~combout\ & ((\WIRING_THE_ALU|Shifting|shifting|MUXout3[24]~32_combout\))) # (!\Mux0~combout\ & 
-- (\WIRING_THE_ALU|Shifting|shifting|MUXout3[23]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Shifting|shifting|MUXout3[23]~36_combout\,
	datab => \WIRING_THE_ALU|Shifting|shifting|MUXout3[24]~32_combout\,
	datac => \Mux0~combout\,
	datad => \WIRING_THE_ALU|Shifting|shifting|z[23]~36_combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|z[23]~37_combout\);

-- Location: LCCOMB_X66_Y53_N12
\WIRING_THE_ALU|Shifting|shifting|z[23]~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|z[23]~38_combout\ = (\WIRING_THE_ALU|Shifting|shifting|z[23]~37_combout\) # ((\WIRING_THE_ALU|Shifting|sftIn~combout\ & \WIRING_THE_ALU|Shifting|shifting|z[23]~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Shifting|shifting|z[23]~37_combout\,
	datac => \WIRING_THE_ALU|Shifting|sftIn~combout\,
	datad => \WIRING_THE_ALU|Shifting|shifting|z[23]~36_combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|z[23]~38_combout\);

-- Location: LCCOMB_X66_Y53_N6
\WIRING_THE_ALU|Mux23~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Mux23~2_combout\ = (\WIRING_THE_ALU|Mux12~0_combout\ & ((\WIRING_THE_ALU|Mux23~1_combout\ & ((\WIRING_THE_ALU|Shifting|shifting|z[23]~38_combout\))) # (!\WIRING_THE_ALU|Mux23~1_combout\ & 
-- (\WIRING_THE_ALU|set_a_less_b|wiring|bits08|a_eq_b~2_combout\)))) # (!\WIRING_THE_ALU|Mux12~0_combout\ & (\WIRING_THE_ALU|Mux23~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Mux12~0_combout\,
	datab => \WIRING_THE_ALU|Mux23~1_combout\,
	datac => \WIRING_THE_ALU|set_a_less_b|wiring|bits08|a_eq_b~2_combout\,
	datad => \WIRING_THE_ALU|Shifting|shifting|z[23]~38_combout\,
	combout => \WIRING_THE_ALU|Mux23~2_combout\);

-- Location: LCCOMB_X69_Y53_N2
\WIRING_THE_ALU|Mux23~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Mux23~0_combout\ = (\ALUFunct[1]~input_o\ & ((\Mux49~combout\ & ((\A[8]~30_combout\) # (!\ALUFunct[0]~input_o\))) # (!\Mux49~combout\ & (!\ALUFunct[0]~input_o\ & \A[8]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUFunct[1]~input_o\,
	datab => \Mux49~combout\,
	datac => \ALUFunct[0]~input_o\,
	datad => \A[8]~30_combout\,
	combout => \WIRING_THE_ALU|Mux23~0_combout\);

-- Location: LCCOMB_X70_Y53_N2
\Mux9~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (\WDSEL[0]~input_o\ & ((\WIRING_THE_ALU|Mux23~0_combout\) # ((\WIRING_THE_ALU|Mux23~2_combout\ & !\ALUFunct[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WDSEL[0]~input_o\,
	datab => \WIRING_THE_ALU|Mux23~2_combout\,
	datac => \ALUFunct[1]~input_o\,
	datad => \WIRING_THE_ALU|Mux23~0_combout\,
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X70_Y53_N30
\Mux9~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux9~2_combout\ = (\WDSEL[1]~input_o\ & (((\Memo_READ_Data[8]~input_o\)))) # (!\WDSEL[1]~input_o\ & ((\Mux9~1_combout\) # ((\Mux9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WDSEL[1]~input_o\,
	datab => \Mux9~1_combout\,
	datac => \Memo_READ_Data[8]~input_o\,
	datad => \Mux9~0_combout\,
	combout => \Mux9~2_combout\);

-- Location: LCCOMB_X89_Y42_N2
\PCADDING_1|z[9]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PCADDING_1|z\(9) = \PC[9]~input_o\ $ (((\PC[7]~input_o\ & (\PCADDING_1|c\(6) & \PC[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[7]~input_o\,
	datab => \PCADDING_1|c\(6),
	datac => \PC[9]~input_o\,
	datad => \PC[8]~input_o\,
	combout => \PCADDING_1|z\(9));

-- Location: LCCOMB_X68_Y52_N2
\WIRING_THE_ALU|Mux22~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Mux22~0_combout\ = (\ALUFunct[1]~input_o\ & ((\Mux51~combout\ & ((\A[9]~31_combout\) # (!\ALUFunct[0]~input_o\))) # (!\Mux51~combout\ & (\A[9]~31_combout\ & !\ALUFunct[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux51~combout\,
	datab => \ALUFunct[1]~input_o\,
	datac => \A[9]~31_combout\,
	datad => \ALUFunct[0]~input_o\,
	combout => \WIRING_THE_ALU|Mux22~0_combout\);

-- Location: LCCOMB_X69_Y57_N14
\WIRING_THE_ALU|Shifting|shifting|MUXout3[10]~37\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|MUXout3[10]~37_combout\ = (!\Mux35~combout\ & ((\Mux37~combout\ & ((\WIRING_THE_ALU|Shifting|shifting|MUXout1[14]~31_combout\))) # (!\Mux37~combout\ & (\WIRING_THE_ALU|Shifting|shifting|MUXout1[10]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux35~combout\,
	datab => \WIRING_THE_ALU|Shifting|shifting|MUXout1[10]~27_combout\,
	datac => \Mux37~combout\,
	datad => \WIRING_THE_ALU|Shifting|shifting|MUXout1[14]~31_combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|MUXout3[10]~37_combout\);

-- Location: LCCOMB_X69_Y56_N0
\WIRING_THE_ALU|Shifting|shifting|MUXout2[12]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|MUXout2[12]~6_combout\ = (!\Mux41~combout\ & ((\Mux39~combout\ & (\WIRING_THE_ALU|Shifting|xToIn[24]~13_combout\)) # (!\Mux39~combout\ & ((\WIRING_THE_ALU|Shifting|xToIn[16]~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Shifting|xToIn[24]~13_combout\,
	datab => \WIRING_THE_ALU|Shifting|xToIn[16]~12_combout\,
	datac => \Mux39~combout\,
	datad => \Mux41~combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|MUXout2[12]~6_combout\);

-- Location: LCCOMB_X69_Y57_N8
\WIRING_THE_ALU|Shifting|shifting|MUXout2[12]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|MUXout2[12]~7_combout\ = (\Mux37~combout\ & (((\WIRING_THE_ALU|Shifting|shifting|MUXout0[16]~16_combout\) # (\WIRING_THE_ALU|Shifting|shifting|MUXout2[12]~6_combout\)))) # (!\Mux37~combout\ & 
-- (\WIRING_THE_ALU|Shifting|shifting|MUXout1[12]~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux37~combout\,
	datab => \WIRING_THE_ALU|Shifting|shifting|MUXout1[12]~29_combout\,
	datac => \WIRING_THE_ALU|Shifting|shifting|MUXout0[16]~16_combout\,
	datad => \WIRING_THE_ALU|Shifting|shifting|MUXout2[12]~6_combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|MUXout2[12]~7_combout\);

-- Location: LCCOMB_X69_Y57_N18
\WIRING_THE_ALU|Shifting|shifting|MUXout3[10]~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|MUXout3[10]~38_combout\ = (\WIRING_THE_ALU|Shifting|shifting|MUXout3[10]~37_combout\) # ((\Mux35~combout\ & \WIRING_THE_ALU|Shifting|shifting|MUXout2[12]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux35~combout\,
	datab => \WIRING_THE_ALU|Shifting|shifting|MUXout3[10]~37_combout\,
	datac => \WIRING_THE_ALU|Shifting|shifting|MUXout2[12]~7_combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|MUXout3[10]~38_combout\);

-- Location: LCCOMB_X69_Y57_N28
\WIRING_THE_ALU|Shifting|shifting|z[9]~39\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|z[9]~39_combout\ = (\Mux0~combout\ & ((\WIRING_THE_ALU|Shifting|shifting|MUXout3[10]~38_combout\))) # (!\Mux0~combout\ & (\WIRING_THE_ALU|Shifting|shifting|MUXout3[9]~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Shifting|shifting|MUXout3[9]~34_combout\,
	datab => \WIRING_THE_ALU|Shifting|shifting|MUXout3[10]~38_combout\,
	datad => \Mux0~combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|z[9]~39_combout\);

-- Location: LCCOMB_X68_Y53_N30
\WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit8toF|bit0123|bit01|bit0|cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit8toF|bit0123|bit01|bit0|cout~0_combout\ = (\WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit0to7|bit4567|bit23|bit1|cout~0_combout\ & ((\A[8]~30_combout\) # (\ALUFunct[3]~input_o\ $ (\Mux49~combout\)))) # 
-- (!\WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit0to7|bit4567|bit23|bit1|cout~0_combout\ & (\A[8]~30_combout\ & (\ALUFunct[3]~input_o\ $ (\Mux49~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUFunct[3]~input_o\,
	datab => \Mux49~combout\,
	datac => \WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit0to7|bit4567|bit23|bit1|cout~0_combout\,
	datad => \A[8]~30_combout\,
	combout => \WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit8toF|bit0123|bit01|bit0|cout~0_combout\);

-- Location: LCCOMB_X68_Y52_N20
\WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit8toF|bit0123|bit01|bit1|s\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit8toF|bit0123|bit01|bit1|s~combout\ = \ALUFunct[3]~input_o\ $ (\WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit8toF|bit0123|bit01|bit0|cout~0_combout\ $ 
-- (\WIRING_THE_ALU|set_a_less_b|wiring|bits09|a_eq_b~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALUFunct[3]~input_o\,
	datac => \WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit8toF|bit0123|bit01|bit0|cout~0_combout\,
	datad => \WIRING_THE_ALU|set_a_less_b|wiring|bits09|a_eq_b~2_combout\,
	combout => \WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit8toF|bit0123|bit01|bit1|s~combout\);

-- Location: LCCOMB_X68_Y52_N22
\WIRING_THE_ALU|Mux22~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Mux22~1_combout\ = (\ALUFunct[0]~input_o\ & (((\WIRING_THE_ALU|Shifting|shifting|z[9]~39_combout\)) # (!\ALUFunct[2]~input_o\))) # (!\ALUFunct[0]~input_o\ & (!\ALUFunct[2]~input_o\ & 
-- ((\WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit8toF|bit0123|bit01|bit1|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUFunct[0]~input_o\,
	datab => \ALUFunct[2]~input_o\,
	datac => \WIRING_THE_ALU|Shifting|shifting|z[9]~39_combout\,
	datad => \WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit8toF|bit0123|bit01|bit1|s~combout\,
	combout => \WIRING_THE_ALU|Mux22~1_combout\);

-- Location: LCCOMB_X67_Y54_N22
\WIRING_THE_ALU|Shifting|shifting|MUXout3[23]~41\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|MUXout3[23]~41_combout\ = (\Mux41~combout\) # ((\Mux39~combout\ & ((\Mux35~combout\) # (\Mux37~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux41~combout\,
	datab => \Mux35~combout\,
	datac => \Mux39~combout\,
	datad => \Mux37~combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|MUXout3[23]~41_combout\);

-- Location: LCCOMB_X66_Y55_N2
\WIRING_THE_ALU|Shifting|shifting|MUXout3[22]~39\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|MUXout3[22]~39_combout\ = (\Mux35~combout\ & ((\Mux37~combout\ & ((\WIRING_THE_ALU|Shifting|xToIn[28]~11_combout\))) # (!\Mux37~combout\ & (\WIRING_THE_ALU|Shifting|xToIn[24]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux35~combout\,
	datab => \WIRING_THE_ALU|Shifting|xToIn[24]~13_combout\,
	datac => \WIRING_THE_ALU|Shifting|xToIn[28]~11_combout\,
	datad => \Mux37~combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|MUXout3[22]~39_combout\);

-- Location: LCCOMB_X66_Y55_N12
\WIRING_THE_ALU|Shifting|shifting|MUXout2[18]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|MUXout2[18]~8_combout\ = (\Mux39~combout\ & ((\WIRING_THE_ALU|Shifting|xToIn[30]~9_combout\))) # (!\Mux39~combout\ & (\WIRING_THE_ALU|Shifting|xToIn[22]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Shifting|xToIn[22]~8_combout\,
	datab => \WIRING_THE_ALU|Shifting|xToIn[30]~9_combout\,
	datac => \Mux39~combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|MUXout2[18]~8_combout\);

-- Location: LCCOMB_X66_Y55_N22
\WIRING_THE_ALU|Shifting|shifting|MUXout2[22]~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|MUXout2[22]~9_combout\ = (\Mux37~combout\ & (\WIRING_THE_ALU|Shifting|xToIn[26]~15_combout\)) # (!\Mux37~combout\ & ((\WIRING_THE_ALU|Shifting|shifting|MUXout2[18]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux37~combout\,
	datab => \WIRING_THE_ALU|Shifting|xToIn[26]~15_combout\,
	datad => \WIRING_THE_ALU|Shifting|shifting|MUXout2[18]~8_combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|MUXout2[22]~9_combout\);

-- Location: LCCOMB_X66_Y55_N8
\WIRING_THE_ALU|Shifting|shifting|MUXout3[22]~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|MUXout3[22]~40_combout\ = (\WIRING_THE_ALU|Shifting|shifting|MUXout3[22]~39_combout\) # ((!\Mux35~combout\ & \WIRING_THE_ALU|Shifting|shifting|MUXout2[22]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux35~combout\,
	datab => \WIRING_THE_ALU|Shifting|shifting|MUXout3[22]~39_combout\,
	datac => \WIRING_THE_ALU|Shifting|shifting|MUXout2[22]~9_combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|MUXout3[22]~40_combout\);

-- Location: LCCOMB_X67_Y54_N12
\WIRING_THE_ALU|Shifting|shifting|z[22]~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|z[22]~40_combout\ = (\Mux0~combout\ & ((\WIRING_THE_ALU|Shifting|shifting|MUXout3[23]~36_combout\))) # (!\Mux0~combout\ & (\WIRING_THE_ALU|Shifting|shifting|MUXout3[22]~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux0~combout\,
	datac => \WIRING_THE_ALU|Shifting|shifting|MUXout3[22]~40_combout\,
	datad => \WIRING_THE_ALU|Shifting|shifting|MUXout3[23]~36_combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|z[22]~40_combout\);

-- Location: LCCOMB_X67_Y54_N24
\WIRING_THE_ALU|Shifting|shifting|z[22]~41\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|z[22]~41_combout\ = (\WIRING_THE_ALU|Shifting|shifting|MUXout3[23]~41_combout\ & (\WIRING_THE_ALU|Shifting|sftIn~combout\)) # (!\WIRING_THE_ALU|Shifting|shifting|MUXout3[23]~41_combout\ & 
-- ((\WIRING_THE_ALU|Shifting|shifting|z[22]~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WIRING_THE_ALU|Shifting|sftIn~combout\,
	datac => \WIRING_THE_ALU|Shifting|shifting|MUXout3[23]~41_combout\,
	datad => \WIRING_THE_ALU|Shifting|shifting|z[22]~40_combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|z[22]~41_combout\);

-- Location: LCCOMB_X68_Y52_N24
\WIRING_THE_ALU|Mux22~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Mux22~2_combout\ = (\WIRING_THE_ALU|Mux22~1_combout\ & (((\WIRING_THE_ALU|Shifting|shifting|z[22]~41_combout\)) # (!\WIRING_THE_ALU|Mux12~0_combout\))) # (!\WIRING_THE_ALU|Mux22~1_combout\ & (\WIRING_THE_ALU|Mux12~0_combout\ & 
-- ((\WIRING_THE_ALU|set_a_less_b|wiring|bits09|a_eq_b~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Mux22~1_combout\,
	datab => \WIRING_THE_ALU|Mux12~0_combout\,
	datac => \WIRING_THE_ALU|Shifting|shifting|z[22]~41_combout\,
	datad => \WIRING_THE_ALU|set_a_less_b|wiring|bits09|a_eq_b~2_combout\,
	combout => \WIRING_THE_ALU|Mux22~2_combout\);

-- Location: LCCOMB_X68_Y52_N26
\WIRING_THE_ALU|Mux22~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Mux22~3_combout\ = (\WIRING_THE_ALU|Mux22~0_combout\) # ((!\ALUFunct[1]~input_o\ & \WIRING_THE_ALU|Mux22~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALUFunct[1]~input_o\,
	datac => \WIRING_THE_ALU|Mux22~0_combout\,
	datad => \WIRING_THE_ALU|Mux22~2_combout\,
	combout => \WIRING_THE_ALU|Mux22~3_combout\);

-- Location: LCCOMB_X97_Y38_N30
\Mux10~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (!\WDSEL[1]~input_o\ & ((\WDSEL[0]~input_o\ & ((\WIRING_THE_ALU|Mux22~3_combout\))) # (!\WDSEL[0]~input_o\ & (\PCADDING_1|z\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PCADDING_1|z\(9),
	datab => \WDSEL[1]~input_o\,
	datac => \WIRING_THE_ALU|Mux22~3_combout\,
	datad => \WDSEL[0]~input_o\,
	combout => \Mux10~0_combout\);

-- Location: IOIBUF_X117_Y22_N8
\Memo_READ_Data[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Memo_READ_Data(9),
	o => \Memo_READ_Data[9]~input_o\);

-- Location: LCCOMB_X97_Y38_N24
\Mux10~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux10~1_combout\ = (\Mux10~0_combout\) # ((\WDSEL[1]~input_o\ & \Memo_READ_Data[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WDSEL[1]~input_o\,
	datac => \Mux10~0_combout\,
	datad => \Memo_READ_Data[9]~input_o\,
	combout => \Mux10~1_combout\);

-- Location: IOIBUF_X117_Y17_N1
\Memo_READ_Data[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Memo_READ_Data(10),
	o => \Memo_READ_Data[10]~input_o\);

-- Location: LCCOMB_X68_Y52_N4
\WIRING_THE_ALU|Mux21~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Mux21~0_combout\ = (\ALUFunct[1]~input_o\ & ((\ALUFunct[0]~input_o\ & (\A[10]~22_combout\ & \Mux53~combout\)) # (!\ALUFunct[0]~input_o\ & ((\A[10]~22_combout\) # (\Mux53~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUFunct[0]~input_o\,
	datab => \A[10]~22_combout\,
	datac => \Mux53~combout\,
	datad => \ALUFunct[1]~input_o\,
	combout => \WIRING_THE_ALU|Mux21~0_combout\);

-- Location: LCCOMB_X67_Y54_N20
\WIRING_THE_ALU|Shifting|shifting|z[21]~45\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|z[21]~45_combout\ = (\Mux39~combout\ & ((\Mux37~combout\) # ((\Mux0~combout\ & \Mux35~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux37~combout\,
	datab => \Mux0~combout\,
	datac => \Mux39~combout\,
	datad => \Mux35~combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|z[21]~45_combout\);

-- Location: LCCOMB_X67_Y54_N4
\WIRING_THE_ALU|Shifting|shifting|MUXout2[17]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|MUXout2[17]~12_combout\ = (\Mux39~combout\ & (\WIRING_THE_ALU|Shifting|xToIn[29]~7_combout\)) # (!\Mux39~combout\ & ((\WIRING_THE_ALU|Shifting|xToIn[21]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Shifting|xToIn[29]~7_combout\,
	datac => \Mux39~combout\,
	datad => \WIRING_THE_ALU|Shifting|xToIn[21]~6_combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|MUXout2[17]~12_combout\);

-- Location: LCCOMB_X67_Y54_N6
\WIRING_THE_ALU|Shifting|shifting|MUXout2[21]~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|MUXout2[21]~13_combout\ = (\Mux37~combout\ & ((\WIRING_THE_ALU|Shifting|xToIn[25]~2_combout\))) # (!\Mux37~combout\ & (\WIRING_THE_ALU|Shifting|shifting|MUXout2[17]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WIRING_THE_ALU|Shifting|shifting|MUXout2[17]~12_combout\,
	datac => \Mux37~combout\,
	datad => \WIRING_THE_ALU|Shifting|xToIn[25]~2_combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|MUXout2[21]~13_combout\);

-- Location: LCCOMB_X67_Y54_N0
\WIRING_THE_ALU|Shifting|shifting|z[20]~43\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|z[20]~43_combout\ = (\Mux35~combout\ & ((\WIRING_THE_ALU|Shifting|shifting|MUXout2[23]~5_combout\))) # (!\Mux35~combout\ & (\WIRING_THE_ALU|Shifting|shifting|MUXout2[21]~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Shifting|shifting|MUXout2[21]~13_combout\,
	datab => \Mux35~combout\,
	datad => \WIRING_THE_ALU|Shifting|shifting|MUXout2[23]~5_combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|z[20]~43_combout\);

-- Location: LCCOMB_X67_Y54_N2
\WIRING_THE_ALU|Shifting|shifting|z[21]~44\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|z[21]~44_combout\ = (\Mux0~combout\ & (\WIRING_THE_ALU|Shifting|shifting|MUXout3[22]~40_combout\)) # (!\Mux0~combout\ & ((\WIRING_THE_ALU|Shifting|shifting|z[20]~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux0~combout\,
	datac => \WIRING_THE_ALU|Shifting|shifting|MUXout3[22]~40_combout\,
	datad => \WIRING_THE_ALU|Shifting|shifting|z[20]~43_combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|z[21]~44_combout\);

-- Location: LCCOMB_X67_Y54_N30
\WIRING_THE_ALU|Shifting|shifting|z[21]~46\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|z[21]~46_combout\ = (\WIRING_THE_ALU|Shifting|shifting|z[21]~45_combout\ & (\WIRING_THE_ALU|Shifting|sftIn~combout\)) # (!\WIRING_THE_ALU|Shifting|shifting|z[21]~45_combout\ & ((\Mux41~combout\ & 
-- (\WIRING_THE_ALU|Shifting|sftIn~combout\)) # (!\Mux41~combout\ & ((\WIRING_THE_ALU|Shifting|shifting|z[21]~44_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Shifting|shifting|z[21]~45_combout\,
	datab => \WIRING_THE_ALU|Shifting|sftIn~combout\,
	datac => \Mux41~combout\,
	datad => \WIRING_THE_ALU|Shifting|shifting|z[21]~44_combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|z[21]~46_combout\);

-- Location: LCCOMB_X68_Y56_N4
\WIRING_THE_ALU|Shifting|shifting|MUXout3[11]~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|MUXout3[11]~42_combout\ = (!\Mux35~combout\ & ((\Mux37~combout\ & ((\WIRING_THE_ALU|Shifting|shifting|MUXout1[15]~32_combout\))) # (!\Mux37~combout\ & (\WIRING_THE_ALU|Shifting|shifting|MUXout1[11]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux37~combout\,
	datab => \WIRING_THE_ALU|Shifting|shifting|MUXout1[11]~28_combout\,
	datac => \WIRING_THE_ALU|Shifting|shifting|MUXout1[15]~32_combout\,
	datad => \Mux35~combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|MUXout3[11]~42_combout\);

-- Location: LCCOMB_X67_Y53_N10
\WIRING_THE_ALU|Shifting|xToIn[17]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|xToIn[17]~3_combout\ = (\ALUFunct[2]~input_o\ & (\A[17]~8_combout\)) # (!\ALUFunct[2]~input_o\ & ((\A[14]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[17]~8_combout\,
	datac => \ALUFunct[2]~input_o\,
	datad => \A[14]~18_combout\,
	combout => \WIRING_THE_ALU|Shifting|xToIn[17]~3_combout\);

-- Location: LCCOMB_X67_Y54_N26
\WIRING_THE_ALU|Shifting|shifting|MUXout2[13]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|MUXout2[13]~10_combout\ = (!\Mux41~combout\ & ((\Mux39~combout\ & (\WIRING_THE_ALU|Shifting|xToIn[25]~2_combout\)) # (!\Mux39~combout\ & ((\WIRING_THE_ALU|Shifting|xToIn[17]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux41~combout\,
	datab => \WIRING_THE_ALU|Shifting|xToIn[25]~2_combout\,
	datac => \WIRING_THE_ALU|Shifting|xToIn[17]~3_combout\,
	datad => \Mux39~combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|MUXout2[13]~10_combout\);

-- Location: LCCOMB_X68_Y56_N14
\WIRING_THE_ALU|Shifting|shifting|MUXout2[13]~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|MUXout2[13]~11_combout\ = (\Mux37~combout\ & (((\WIRING_THE_ALU|Shifting|shifting|MUXout2[13]~10_combout\) # (\WIRING_THE_ALU|Shifting|shifting|MUXout0[16]~16_combout\)))) # (!\Mux37~combout\ & 
-- (\WIRING_THE_ALU|Shifting|shifting|MUXout1[13]~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Shifting|shifting|MUXout1[13]~30_combout\,
	datab => \WIRING_THE_ALU|Shifting|shifting|MUXout2[13]~10_combout\,
	datac => \Mux37~combout\,
	datad => \WIRING_THE_ALU|Shifting|shifting|MUXout0[16]~16_combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|MUXout2[13]~11_combout\);

-- Location: LCCOMB_X68_Y56_N16
\WIRING_THE_ALU|Shifting|shifting|MUXout3[11]~43\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|MUXout3[11]~43_combout\ = (\WIRING_THE_ALU|Shifting|shifting|MUXout3[11]~42_combout\) # ((\WIRING_THE_ALU|Shifting|shifting|MUXout2[13]~11_combout\ & \Mux35~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WIRING_THE_ALU|Shifting|shifting|MUXout3[11]~42_combout\,
	datac => \WIRING_THE_ALU|Shifting|shifting|MUXout2[13]~11_combout\,
	datad => \Mux35~combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|MUXout3[11]~43_combout\);

-- Location: LCCOMB_X68_Y56_N26
\WIRING_THE_ALU|Shifting|shifting|z[10]~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|z[10]~42_combout\ = (\Mux0~combout\ & (\WIRING_THE_ALU|Shifting|shifting|MUXout3[11]~43_combout\)) # (!\Mux0~combout\ & ((\WIRING_THE_ALU|Shifting|shifting|MUXout3[10]~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~combout\,
	datab => \WIRING_THE_ALU|Shifting|shifting|MUXout3[11]~43_combout\,
	datac => \WIRING_THE_ALU|Shifting|shifting|MUXout3[10]~38_combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|z[10]~42_combout\);

-- Location: LCCOMB_X68_Y52_N30
\WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit8toF|bit0123|bit01|bit1|cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit8toF|bit0123|bit01|bit1|cout~0_combout\ = (\A[9]~31_combout\ & ((\WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit8toF|bit0123|bit01|bit0|cout~0_combout\) # (\Mux51~combout\ $ (\ALUFunct[3]~input_o\)))) # 
-- (!\A[9]~31_combout\ & (\WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit8toF|bit0123|bit01|bit0|cout~0_combout\ & (\Mux51~combout\ $ (\ALUFunct[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux51~combout\,
	datab => \A[9]~31_combout\,
	datac => \WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit8toF|bit0123|bit01|bit0|cout~0_combout\,
	datad => \ALUFunct[3]~input_o\,
	combout => \WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit8toF|bit0123|bit01|bit1|cout~0_combout\);

-- Location: LCCOMB_X68_Y52_N8
\WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit8toF|bit0123|bit23|bit0|s\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit8toF|bit0123|bit23|bit0|s~combout\ = \ALUFunct[3]~input_o\ $ (\WIRING_THE_ALU|set_a_less_b|wiring|bits10|a_eq_b~2_combout\ $ 
-- (\WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit8toF|bit0123|bit01|bit1|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALUFunct[3]~input_o\,
	datac => \WIRING_THE_ALU|set_a_less_b|wiring|bits10|a_eq_b~2_combout\,
	datad => \WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit8toF|bit0123|bit01|bit1|cout~0_combout\,
	combout => \WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit8toF|bit0123|bit23|bit0|s~combout\);

-- Location: LCCOMB_X68_Y52_N10
\WIRING_THE_ALU|Mux21~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Mux21~1_combout\ = (\ALUFunct[0]~input_o\ & ((\WIRING_THE_ALU|Shifting|shifting|z[10]~42_combout\) # ((!\ALUFunct[2]~input_o\)))) # (!\ALUFunct[0]~input_o\ & 
-- (((\WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit8toF|bit0123|bit23|bit0|s~combout\ & !\ALUFunct[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUFunct[0]~input_o\,
	datab => \WIRING_THE_ALU|Shifting|shifting|z[10]~42_combout\,
	datac => \WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit8toF|bit0123|bit23|bit0|s~combout\,
	datad => \ALUFunct[2]~input_o\,
	combout => \WIRING_THE_ALU|Mux21~1_combout\);

-- Location: LCCOMB_X68_Y52_N12
\WIRING_THE_ALU|Mux21~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Mux21~2_combout\ = (\WIRING_THE_ALU|Mux12~0_combout\ & ((\WIRING_THE_ALU|Mux21~1_combout\ & (\WIRING_THE_ALU|Shifting|shifting|z[21]~46_combout\)) # (!\WIRING_THE_ALU|Mux21~1_combout\ & 
-- ((\WIRING_THE_ALU|set_a_less_b|wiring|bits10|a_eq_b~2_combout\))))) # (!\WIRING_THE_ALU|Mux12~0_combout\ & (((\WIRING_THE_ALU|Mux21~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Shifting|shifting|z[21]~46_combout\,
	datab => \WIRING_THE_ALU|Mux12~0_combout\,
	datac => \WIRING_THE_ALU|set_a_less_b|wiring|bits10|a_eq_b~2_combout\,
	datad => \WIRING_THE_ALU|Mux21~1_combout\,
	combout => \WIRING_THE_ALU|Mux21~2_combout\);

-- Location: LCCOMB_X68_Y52_N14
\WIRING_THE_ALU|Mux21~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Mux21~3_combout\ = (\WIRING_THE_ALU|Mux21~0_combout\) # ((!\ALUFunct[1]~input_o\ & \WIRING_THE_ALU|Mux21~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALUFunct[1]~input_o\,
	datac => \WIRING_THE_ALU|Mux21~0_combout\,
	datad => \WIRING_THE_ALU|Mux21~2_combout\,
	combout => \WIRING_THE_ALU|Mux21~3_combout\);

-- Location: LCCOMB_X89_Y42_N20
\PCADDING_1|c[9]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PCADDING_1|c\(9) = (\PC[7]~input_o\ & (\PCADDING_1|c\(6) & (\PC[9]~input_o\ & \PC[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[7]~input_o\,
	datab => \PCADDING_1|c\(6),
	datac => \PC[9]~input_o\,
	datad => \PC[8]~input_o\,
	combout => \PCADDING_1|c\(9));

-- Location: LCCOMB_X89_Y34_N0
\Mux11~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (\WDSEL[0]~input_o\ & (\WIRING_THE_ALU|Mux21~3_combout\)) # (!\WDSEL[0]~input_o\ & ((\PCADDING_1|c\(9) $ (\PC[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Mux21~3_combout\,
	datab => \PCADDING_1|c\(9),
	datac => \PC[10]~input_o\,
	datad => \WDSEL[0]~input_o\,
	combout => \Mux11~0_combout\);

-- Location: LCCOMB_X89_Y34_N18
\Mux11~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux11~1_combout\ = (\WDSEL[1]~input_o\ & (\Memo_READ_Data[10]~input_o\)) # (!\WDSEL[1]~input_o\ & ((\Mux11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WDSEL[1]~input_o\,
	datab => \Memo_READ_Data[10]~input_o\,
	datad => \Mux11~0_combout\,
	combout => \Mux11~1_combout\);

-- Location: LCCOMB_X66_Y54_N4
\WIRING_THE_ALU|Shifting|shifting|z[20]~49\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|z[20]~49_combout\ = (!\Mux41~combout\ & ((!\Mux39~combout\) # (!\Mux37~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux37~combout\,
	datac => \Mux41~combout\,
	datad => \Mux39~combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|z[20]~49_combout\);

-- Location: LCCOMB_X66_Y55_N18
\WIRING_THE_ALU|Shifting|shifting|MUXout2[16]~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|MUXout2[16]~16_combout\ = (\Mux39~combout\ & (\WIRING_THE_ALU|Shifting|xToIn[28]~11_combout\)) # (!\Mux39~combout\ & ((\WIRING_THE_ALU|Shifting|xToIn[20]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Shifting|xToIn[28]~11_combout\,
	datab => \WIRING_THE_ALU|Shifting|xToIn[20]~10_combout\,
	datac => \Mux39~combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|MUXout2[16]~16_combout\);

-- Location: LCCOMB_X66_Y55_N4
\WIRING_THE_ALU|Shifting|shifting|MUXout2[20]~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|MUXout2[20]~17_combout\ = (\Mux37~combout\ & ((\WIRING_THE_ALU|Shifting|xToIn[24]~13_combout\))) # (!\Mux37~combout\ & (\WIRING_THE_ALU|Shifting|shifting|MUXout2[16]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux37~combout\,
	datab => \WIRING_THE_ALU|Shifting|shifting|MUXout2[16]~16_combout\,
	datac => \WIRING_THE_ALU|Shifting|xToIn[24]~13_combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|MUXout2[20]~17_combout\);

-- Location: LCCOMB_X66_Y55_N30
\WIRING_THE_ALU|Shifting|shifting|z[20]~50\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|z[20]~50_combout\ = (\Mux35~combout\ & ((\WIRING_THE_ALU|Shifting|shifting|MUXout2[22]~9_combout\))) # (!\Mux35~combout\ & (\WIRING_THE_ALU|Shifting|shifting|MUXout2[20]~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux35~combout\,
	datab => \WIRING_THE_ALU|Shifting|shifting|MUXout2[20]~17_combout\,
	datac => \WIRING_THE_ALU|Shifting|shifting|MUXout2[22]~9_combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|z[20]~50_combout\);

-- Location: LCCOMB_X66_Y54_N6
\WIRING_THE_ALU|Shifting|shifting|z[20]~51\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|z[20]~51_combout\ = (\WIRING_THE_ALU|Shifting|shifting|z[20]~49_combout\ & ((\Mux0~combout\ & ((\WIRING_THE_ALU|Shifting|shifting|z[20]~43_combout\))) # (!\Mux0~combout\ & 
-- (\WIRING_THE_ALU|Shifting|shifting|z[20]~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Shifting|shifting|z[20]~50_combout\,
	datab => \Mux0~combout\,
	datac => \WIRING_THE_ALU|Shifting|shifting|z[20]~43_combout\,
	datad => \WIRING_THE_ALU|Shifting|shifting|z[20]~49_combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|z[20]~51_combout\);

-- Location: LCCOMB_X66_Y54_N8
\WIRING_THE_ALU|Shifting|shifting|z[20]~52\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|z[20]~52_combout\ = (\WIRING_THE_ALU|Shifting|shifting|z[20]~51_combout\) # ((!\WIRING_THE_ALU|Shifting|shifting|z[20]~49_combout\ & \WIRING_THE_ALU|Shifting|sftIn~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WIRING_THE_ALU|Shifting|shifting|z[20]~49_combout\,
	datac => \WIRING_THE_ALU|Shifting|sftIn~combout\,
	datad => \WIRING_THE_ALU|Shifting|shifting|z[20]~51_combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|z[20]~52_combout\);

-- Location: LCCOMB_X67_Y56_N0
\WIRING_THE_ALU|Shifting|shifting|MUXout2[14]~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|MUXout2[14]~14_combout\ = (!\Mux41~combout\ & ((\Mux39~combout\ & ((\WIRING_THE_ALU|Shifting|xToIn[26]~15_combout\))) # (!\Mux39~combout\ & (\WIRING_THE_ALU|Shifting|xToIn[18]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Shifting|xToIn[18]~14_combout\,
	datab => \Mux41~combout\,
	datac => \WIRING_THE_ALU|Shifting|xToIn[26]~15_combout\,
	datad => \Mux39~combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|MUXout2[14]~14_combout\);

-- Location: LCCOMB_X69_Y57_N30
\WIRING_THE_ALU|Shifting|shifting|MUXout2[14]~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|MUXout2[14]~15_combout\ = (\Mux37~combout\ & ((\WIRING_THE_ALU|Shifting|shifting|MUXout0[16]~16_combout\) # ((\WIRING_THE_ALU|Shifting|shifting|MUXout2[14]~14_combout\)))) # (!\Mux37~combout\ & 
-- (((\WIRING_THE_ALU|Shifting|shifting|MUXout1[14]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux37~combout\,
	datab => \WIRING_THE_ALU|Shifting|shifting|MUXout0[16]~16_combout\,
	datac => \WIRING_THE_ALU|Shifting|shifting|MUXout2[14]~14_combout\,
	datad => \WIRING_THE_ALU|Shifting|shifting|MUXout1[14]~31_combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|MUXout2[14]~15_combout\);

-- Location: LCCOMB_X68_Y56_N12
\WIRING_THE_ALU|Shifting|shifting|z[12]~47\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|z[12]~47_combout\ = (\Mux35~combout\ & ((\WIRING_THE_ALU|Shifting|shifting|MUXout2[14]~15_combout\))) # (!\Mux35~combout\ & (\WIRING_THE_ALU|Shifting|shifting|MUXout2[12]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WIRING_THE_ALU|Shifting|shifting|MUXout2[12]~7_combout\,
	datac => \WIRING_THE_ALU|Shifting|shifting|MUXout2[14]~15_combout\,
	datad => \Mux35~combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|z[12]~47_combout\);

-- Location: LCCOMB_X68_Y56_N30
\WIRING_THE_ALU|Shifting|shifting|z[11]~48\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|z[11]~48_combout\ = (\Mux0~combout\ & (\WIRING_THE_ALU|Shifting|shifting|z[12]~47_combout\)) # (!\Mux0~combout\ & ((\WIRING_THE_ALU|Shifting|shifting|MUXout3[11]~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Shifting|shifting|z[12]~47_combout\,
	datab => \WIRING_THE_ALU|Shifting|shifting|MUXout3[11]~43_combout\,
	datac => \Mux0~combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|z[11]~48_combout\);

-- Location: LCCOMB_X68_Y51_N8
\WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit8toF|bit0123|bit23|bit0|cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit8toF|bit0123|bit23|bit0|cout~0_combout\ = (\WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit8toF|bit0123|bit01|bit1|cout~0_combout\ & ((\A[10]~22_combout\) # (\ALUFunct[3]~input_o\ $ (\Mux53~combout\)))) # 
-- (!\WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit8toF|bit0123|bit01|bit1|cout~0_combout\ & (\A[10]~22_combout\ & (\ALUFunct[3]~input_o\ $ (\Mux53~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit8toF|bit0123|bit01|bit1|cout~0_combout\,
	datab => \ALUFunct[3]~input_o\,
	datac => \A[10]~22_combout\,
	datad => \Mux53~combout\,
	combout => \WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit8toF|bit0123|bit23|bit0|cout~0_combout\);

-- Location: LCCOMB_X68_Y51_N18
\WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit8toF|bit0123|bit23|bit1|s\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit8toF|bit0123|bit23|bit1|s~combout\ = \WIRING_THE_ALU|set_a_less_b|wiring|bits11|a_eq_b~2_combout\ $ (\ALUFunct[3]~input_o\ $ 
-- (\WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit8toF|bit0123|bit23|bit0|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|set_a_less_b|wiring|bits11|a_eq_b~2_combout\,
	datab => \ALUFunct[3]~input_o\,
	datac => \WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit8toF|bit0123|bit23|bit0|cout~0_combout\,
	combout => \WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit8toF|bit0123|bit23|bit1|s~combout\);

-- Location: LCCOMB_X68_Y51_N4
\WIRING_THE_ALU|Mux20~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Mux20~1_combout\ = (\ALUFunct[2]~input_o\ & (\WIRING_THE_ALU|Shifting|shifting|z[11]~48_combout\ & (\ALUFunct[0]~input_o\))) # (!\ALUFunct[2]~input_o\ & (((\ALUFunct[0]~input_o\) # 
-- (\WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit8toF|bit0123|bit23|bit1|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Shifting|shifting|z[11]~48_combout\,
	datab => \ALUFunct[2]~input_o\,
	datac => \ALUFunct[0]~input_o\,
	datad => \WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit8toF|bit0123|bit23|bit1|s~combout\,
	combout => \WIRING_THE_ALU|Mux20~1_combout\);

-- Location: LCCOMB_X68_Y51_N30
\WIRING_THE_ALU|Mux20~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Mux20~2_combout\ = (\WIRING_THE_ALU|Mux12~0_combout\ & ((\WIRING_THE_ALU|Mux20~1_combout\ & (\WIRING_THE_ALU|Shifting|shifting|z[20]~52_combout\)) # (!\WIRING_THE_ALU|Mux20~1_combout\ & 
-- ((\WIRING_THE_ALU|set_a_less_b|wiring|bits11|a_eq_b~2_combout\))))) # (!\WIRING_THE_ALU|Mux12~0_combout\ & (((\WIRING_THE_ALU|Mux20~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Shifting|shifting|z[20]~52_combout\,
	datab => \WIRING_THE_ALU|Mux12~0_combout\,
	datac => \WIRING_THE_ALU|Mux20~1_combout\,
	datad => \WIRING_THE_ALU|set_a_less_b|wiring|bits11|a_eq_b~2_combout\,
	combout => \WIRING_THE_ALU|Mux20~2_combout\);

-- Location: LCCOMB_X68_Y51_N6
\WIRING_THE_ALU|Mux20~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Mux20~0_combout\ = (\ALUFunct[1]~input_o\ & ((\Mux55~combout\ & ((\A[11]~21_combout\) # (!\ALUFunct[0]~input_o\))) # (!\Mux55~combout\ & (!\ALUFunct[0]~input_o\ & \A[11]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux55~combout\,
	datab => \ALUFunct[0]~input_o\,
	datac => \ALUFunct[1]~input_o\,
	datad => \A[11]~21_combout\,
	combout => \WIRING_THE_ALU|Mux20~0_combout\);

-- Location: LCCOMB_X68_Y51_N0
\WIRING_THE_ALU|Mux20~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Mux20~3_combout\ = (\WIRING_THE_ALU|Mux20~0_combout\) # ((!\ALUFunct[1]~input_o\ & \WIRING_THE_ALU|Mux20~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUFunct[1]~input_o\,
	datac => \WIRING_THE_ALU|Mux20~2_combout\,
	datad => \WIRING_THE_ALU|Mux20~0_combout\,
	combout => \WIRING_THE_ALU|Mux20~3_combout\);

-- Location: LCCOMB_X89_Y34_N12
\Mux12~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (!\WDSEL[0]~input_o\ & (\PC[11]~input_o\ $ (((\PC[10]~input_o\ & \PCADDING_1|c\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WDSEL[0]~input_o\,
	datab => \PC[10]~input_o\,
	datac => \PC[11]~input_o\,
	datad => \PCADDING_1|c\(9),
	combout => \Mux12~0_combout\);

-- Location: LCCOMB_X89_Y34_N30
\Mux12~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux12~1_combout\ = (!\WDSEL[1]~input_o\ & ((\Mux12~0_combout\) # ((\WIRING_THE_ALU|Mux20~3_combout\ & \WDSEL[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WDSEL[1]~input_o\,
	datab => \WIRING_THE_ALU|Mux20~3_combout\,
	datac => \WDSEL[0]~input_o\,
	datad => \Mux12~0_combout\,
	combout => \Mux12~1_combout\);

-- Location: IOIBUF_X117_Y27_N8
\Memo_READ_Data[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Memo_READ_Data(11),
	o => \Memo_READ_Data[11]~input_o\);

-- Location: LCCOMB_X89_Y34_N24
\Mux12~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux12~2_combout\ = (\Mux12~1_combout\) # ((\WDSEL[1]~input_o\ & \Memo_READ_Data[11]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WDSEL[1]~input_o\,
	datac => \Mux12~1_combout\,
	datad => \Memo_READ_Data[11]~input_o\,
	combout => \Mux12~2_combout\);

-- Location: IOIBUF_X117_Y38_N8
\Memo_READ_Data[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Memo_READ_Data(12),
	o => \Memo_READ_Data[12]~input_o\);

-- Location: LCCOMB_X68_Y54_N24
\WIRING_THE_ALU|Shifting|shifting|MUXout2[15]~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|MUXout2[15]~18_combout\ = (!\Mux41~combout\ & ((\Mux39~combout\ & (\WIRING_THE_ALU|Shifting|xToIn[27]~1_combout\)) # (!\Mux39~combout\ & ((\WIRING_THE_ALU|Shifting|xToIn[19]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux41~combout\,
	datab => \WIRING_THE_ALU|Shifting|xToIn[27]~1_combout\,
	datac => \Mux39~combout\,
	datad => \WIRING_THE_ALU|Shifting|xToIn[19]~0_combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|MUXout2[15]~18_combout\);

-- Location: LCCOMB_X68_Y56_N24
\WIRING_THE_ALU|Shifting|shifting|MUXout2[15]~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|MUXout2[15]~19_combout\ = (\Mux37~combout\ & ((\WIRING_THE_ALU|Shifting|shifting|MUXout2[15]~18_combout\) # ((\WIRING_THE_ALU|Shifting|shifting|MUXout0[16]~16_combout\)))) # (!\Mux37~combout\ & 
-- (((\WIRING_THE_ALU|Shifting|shifting|MUXout1[15]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux37~combout\,
	datab => \WIRING_THE_ALU|Shifting|shifting|MUXout2[15]~18_combout\,
	datac => \WIRING_THE_ALU|Shifting|shifting|MUXout1[15]~32_combout\,
	datad => \WIRING_THE_ALU|Shifting|shifting|MUXout0[16]~16_combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|MUXout2[15]~19_combout\);

-- Location: LCCOMB_X68_Y56_N18
\WIRING_THE_ALU|Shifting|shifting|z[12]~53\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|z[12]~53_combout\ = (\Mux35~combout\ & (\WIRING_THE_ALU|Shifting|shifting|MUXout2[15]~19_combout\)) # (!\Mux35~combout\ & ((\WIRING_THE_ALU|Shifting|shifting|MUXout2[13]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WIRING_THE_ALU|Shifting|shifting|MUXout2[15]~19_combout\,
	datac => \WIRING_THE_ALU|Shifting|shifting|MUXout2[13]~11_combout\,
	datad => \Mux35~combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|z[12]~53_combout\);

-- Location: LCCOMB_X68_Y56_N28
\WIRING_THE_ALU|Shifting|shifting|z[12]~54\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|z[12]~54_combout\ = (\Mux0~combout\ & ((\WIRING_THE_ALU|Shifting|shifting|z[12]~53_combout\))) # (!\Mux0~combout\ & (\WIRING_THE_ALU|Shifting|shifting|z[12]~47_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Shifting|shifting|z[12]~47_combout\,
	datab => \WIRING_THE_ALU|Shifting|shifting|z[12]~53_combout\,
	datac => \Mux0~combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|z[12]~54_combout\);

-- Location: LCCOMB_X68_Y51_N26
\WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit8toF|bit0123|bit23|bit1|cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit8toF|bit0123|bit23|bit1|cout~0_combout\ = (\WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit8toF|bit0123|bit23|bit0|cout~0_combout\ & ((\A[11]~21_combout\) # (\Mux55~combout\ $ (\ALUFunct[3]~input_o\)))) # 
-- (!\WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit8toF|bit0123|bit23|bit0|cout~0_combout\ & (\A[11]~21_combout\ & (\Mux55~combout\ $ (\ALUFunct[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux55~combout\,
	datab => \ALUFunct[3]~input_o\,
	datac => \WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit8toF|bit0123|bit23|bit0|cout~0_combout\,
	datad => \A[11]~21_combout\,
	combout => \WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit8toF|bit0123|bit23|bit1|cout~0_combout\);

-- Location: LCCOMB_X69_Y54_N24
\WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit8toF|bit4567|bit01|bit0|s\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit8toF|bit4567|bit01|bit0|s~combout\ = \WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit8toF|bit0123|bit23|bit1|cout~0_combout\ $ (\ALUFunct[3]~input_o\ $ 
-- (\WIRING_THE_ALU|set_a_less_b|wiring|bits12|a_eq_b~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit8toF|bit0123|bit23|bit1|cout~0_combout\,
	datac => \ALUFunct[3]~input_o\,
	datad => \WIRING_THE_ALU|set_a_less_b|wiring|bits12|a_eq_b~2_combout\,
	combout => \WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit8toF|bit4567|bit01|bit0|s~combout\);

-- Location: LCCOMB_X69_Y54_N10
\WIRING_THE_ALU|Mux19~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Mux19~1_combout\ = (\ALUFunct[0]~input_o\ & (((\WIRING_THE_ALU|Shifting|shifting|z[12]~54_combout\)) # (!\ALUFunct[2]~input_o\))) # (!\ALUFunct[0]~input_o\ & (!\ALUFunct[2]~input_o\ & 
-- ((\WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit8toF|bit4567|bit01|bit0|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUFunct[0]~input_o\,
	datab => \ALUFunct[2]~input_o\,
	datac => \WIRING_THE_ALU|Shifting|shifting|z[12]~54_combout\,
	datad => \WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit8toF|bit4567|bit01|bit0|s~combout\,
	combout => \WIRING_THE_ALU|Mux19~1_combout\);

-- Location: LCCOMB_X67_Y55_N16
\WIRING_THE_ALU|Shifting|shifting|z[19]~55\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|z[19]~55_combout\ = (!\Mux41~combout\ & (((\WIRING_THE_ALU|Shifting|shifting|z[31]~9_combout\) # (!\Mux39~combout\)) # (!\Mux37~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux37~combout\,
	datab => \WIRING_THE_ALU|Shifting|shifting|z[31]~9_combout\,
	datac => \Mux41~combout\,
	datad => \Mux39~combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|z[19]~55_combout\);

-- Location: LCCOMB_X68_Y54_N2
\WIRING_THE_ALU|Shifting|shifting|MUXout2[19]~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|MUXout2[19]~20_combout\ = (!\Mux37~combout\ & ((\Mux39~combout\ & (\WIRING_THE_ALU|Shifting|xToIn[27]~1_combout\)) # (!\Mux39~combout\ & ((\WIRING_THE_ALU|Shifting|xToIn[19]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux39~combout\,
	datab => \WIRING_THE_ALU|Shifting|xToIn[27]~1_combout\,
	datac => \Mux37~combout\,
	datad => \WIRING_THE_ALU|Shifting|xToIn[19]~0_combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|MUXout2[19]~20_combout\);

-- Location: LCCOMB_X68_Y54_N28
\WIRING_THE_ALU|Shifting|shifting|MUXout2[19]~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|MUXout2[19]~21_combout\ = (\WIRING_THE_ALU|Shifting|shifting|MUXout2[19]~20_combout\) # ((\WIRING_THE_ALU|Shifting|shifting|MUXout2[19]~4_combout\ & \Mux37~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Shifting|shifting|MUXout2[19]~4_combout\,
	datac => \Mux37~combout\,
	datad => \WIRING_THE_ALU|Shifting|shifting|MUXout2[19]~20_combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|MUXout2[19]~21_combout\);

-- Location: LCCOMB_X67_Y54_N16
\WIRING_THE_ALU|Shifting|shifting|z[19]~56\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|z[19]~56_combout\ = (\Mux35~combout\ & (\WIRING_THE_ALU|Shifting|shifting|MUXout2[21]~13_combout\)) # (!\Mux35~combout\ & ((\WIRING_THE_ALU|Shifting|shifting|MUXout2[19]~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Shifting|shifting|MUXout2[21]~13_combout\,
	datab => \Mux35~combout\,
	datad => \WIRING_THE_ALU|Shifting|shifting|MUXout2[19]~21_combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|z[19]~56_combout\);

-- Location: LCCOMB_X66_Y54_N26
\WIRING_THE_ALU|Shifting|shifting|z[19]~57\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|z[19]~57_combout\ = (\WIRING_THE_ALU|Shifting|shifting|z[19]~55_combout\ & ((\Mux0~combout\ & (\WIRING_THE_ALU|Shifting|shifting|z[20]~50_combout\)) # (!\Mux0~combout\ & 
-- ((\WIRING_THE_ALU|Shifting|shifting|z[19]~56_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Shifting|shifting|z[19]~55_combout\,
	datab => \Mux0~combout\,
	datac => \WIRING_THE_ALU|Shifting|shifting|z[20]~50_combout\,
	datad => \WIRING_THE_ALU|Shifting|shifting|z[19]~56_combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|z[19]~57_combout\);

-- Location: LCCOMB_X66_Y54_N20
\WIRING_THE_ALU|Shifting|shifting|z[19]~58\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|z[19]~58_combout\ = (\WIRING_THE_ALU|Shifting|shifting|z[19]~57_combout\) # ((\WIRING_THE_ALU|Shifting|sftIn~combout\ & !\WIRING_THE_ALU|Shifting|shifting|z[19]~55_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Shifting|shifting|z[19]~57_combout\,
	datac => \WIRING_THE_ALU|Shifting|sftIn~combout\,
	datad => \WIRING_THE_ALU|Shifting|shifting|z[19]~55_combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|z[19]~58_combout\);

-- Location: LCCOMB_X69_Y54_N12
\WIRING_THE_ALU|Mux19~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Mux19~2_combout\ = (\WIRING_THE_ALU|Mux19~1_combout\ & (((\WIRING_THE_ALU|Shifting|shifting|z[19]~58_combout\)) # (!\WIRING_THE_ALU|Mux12~0_combout\))) # (!\WIRING_THE_ALU|Mux19~1_combout\ & (\WIRING_THE_ALU|Mux12~0_combout\ & 
-- ((\WIRING_THE_ALU|set_a_less_b|wiring|bits12|a_eq_b~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Mux19~1_combout\,
	datab => \WIRING_THE_ALU|Mux12~0_combout\,
	datac => \WIRING_THE_ALU|Shifting|shifting|z[19]~58_combout\,
	datad => \WIRING_THE_ALU|set_a_less_b|wiring|bits12|a_eq_b~2_combout\,
	combout => \WIRING_THE_ALU|Mux19~2_combout\);

-- Location: LCCOMB_X69_Y54_N6
\WIRING_THE_ALU|Mux19~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Mux19~0_combout\ = (\ALUFunct[1]~input_o\ & ((\ALUFunct[0]~input_o\ & (\Mux57~combout\ & \A[12]~20_combout\)) # (!\ALUFunct[0]~input_o\ & ((\Mux57~combout\) # (\A[12]~20_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUFunct[0]~input_o\,
	datab => \ALUFunct[1]~input_o\,
	datac => \Mux57~combout\,
	datad => \A[12]~20_combout\,
	combout => \WIRING_THE_ALU|Mux19~0_combout\);

-- Location: LCCOMB_X69_Y54_N30
\WIRING_THE_ALU|Mux19~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Mux19~3_combout\ = (\WIRING_THE_ALU|Mux19~0_combout\) # ((\WIRING_THE_ALU|Mux19~2_combout\ & !\ALUFunct[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Mux19~2_combout\,
	datac => \ALUFunct[1]~input_o\,
	datad => \WIRING_THE_ALU|Mux19~0_combout\,
	combout => \WIRING_THE_ALU|Mux19~3_combout\);

-- Location: LCCOMB_X89_Y40_N6
\PCADDING_1|z[12]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PCADDING_1|z\(12) = \PC[12]~input_o\ $ (((\PC[10]~input_o\ & (\PCADDING_1|c\(9) & \PC[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[10]~input_o\,
	datab => \PCADDING_1|c\(9),
	datac => \PC[11]~input_o\,
	datad => \PC[12]~input_o\,
	combout => \PCADDING_1|z\(12));

-- Location: LCCOMB_X97_Y38_N18
\Mux13~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (!\WDSEL[1]~input_o\ & ((\WDSEL[0]~input_o\ & (\WIRING_THE_ALU|Mux19~3_combout\)) # (!\WDSEL[0]~input_o\ & ((\PCADDING_1|z\(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Mux19~3_combout\,
	datab => \WDSEL[1]~input_o\,
	datac => \PCADDING_1|z\(12),
	datad => \WDSEL[0]~input_o\,
	combout => \Mux13~0_combout\);

-- Location: LCCOMB_X97_Y38_N20
\Mux13~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux13~1_combout\ = (\Mux13~0_combout\) # ((\WDSEL[1]~input_o\ & \Memo_READ_Data[12]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WDSEL[1]~input_o\,
	datac => \Memo_READ_Data[12]~input_o\,
	datad => \Mux13~0_combout\,
	combout => \Mux13~1_combout\);

-- Location: LCCOMB_X70_Y55_N28
\WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit8toF|bit4567|bit01|bit0|cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit8toF|bit4567|bit01|bit0|cout~0_combout\ = (\WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit8toF|bit0123|bit23|bit1|cout~0_combout\ & ((\A[12]~20_combout\) # (\ALUFunct[3]~input_o\ $ (\Mux57~combout\)))) # 
-- (!\WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit8toF|bit0123|bit23|bit1|cout~0_combout\ & (\A[12]~20_combout\ & (\ALUFunct[3]~input_o\ $ (\Mux57~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit8toF|bit0123|bit23|bit1|cout~0_combout\,
	datab => \ALUFunct[3]~input_o\,
	datac => \A[12]~20_combout\,
	datad => \Mux57~combout\,
	combout => \WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit8toF|bit4567|bit01|bit0|cout~0_combout\);

-- Location: LCCOMB_X70_Y55_N6
\WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit8toF|bit4567|bit01|bit1|s\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit8toF|bit4567|bit01|bit1|s~combout\ = \ALUFunct[3]~input_o\ $ (\WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit8toF|bit4567|bit01|bit0|cout~0_combout\ $ 
-- (\WIRING_THE_ALU|set_a_less_b|wiring|bits13|a_eq_b~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUFunct[3]~input_o\,
	datab => \WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit8toF|bit4567|bit01|bit0|cout~0_combout\,
	datad => \WIRING_THE_ALU|set_a_less_b|wiring|bits13|a_eq_b~2_combout\,
	combout => \WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit8toF|bit4567|bit01|bit1|s~combout\);

-- Location: LCCOMB_X69_Y56_N26
\WIRING_THE_ALU|Shifting|shifting|MUXout2[16]~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|MUXout2[16]~22_combout\ = (!\Mux37~combout\ & ((\Mux39~combout\ & (\WIRING_THE_ALU|Shifting|xToIn[24]~13_combout\)) # (!\Mux39~combout\ & ((\WIRING_THE_ALU|Shifting|xToIn[16]~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Shifting|xToIn[24]~13_combout\,
	datab => \WIRING_THE_ALU|Shifting|xToIn[16]~12_combout\,
	datac => \Mux37~combout\,
	datad => \Mux39~combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|MUXout2[16]~22_combout\);

-- Location: LCCOMB_X69_Y56_N4
\WIRING_THE_ALU|Shifting|shifting|MUXout3[14]~44\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|MUXout3[14]~44_combout\ = (!\Mux41~combout\ & ((\WIRING_THE_ALU|Shifting|shifting|MUXout2[16]~22_combout\) # ((\WIRING_THE_ALU|Shifting|shifting|MUXout2[16]~16_combout\ & \Mux37~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Shifting|shifting|MUXout2[16]~16_combout\,
	datab => \WIRING_THE_ALU|Shifting|shifting|MUXout2[16]~22_combout\,
	datac => \Mux37~combout\,
	datad => \Mux41~combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|MUXout3[14]~44_combout\);

-- Location: LCCOMB_X68_Y56_N6
\WIRING_THE_ALU|Shifting|shifting|MUXout3[14]~45\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|MUXout3[14]~45_combout\ = (\Mux35~combout\ & ((\WIRING_THE_ALU|Shifting|shifting|MUXout3[14]~44_combout\) # ((\WIRING_THE_ALU|Shifting|shifting|MUXout0[16]~16_combout\)))) # (!\Mux35~combout\ & 
-- (((\WIRING_THE_ALU|Shifting|shifting|MUXout2[14]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Shifting|shifting|MUXout3[14]~44_combout\,
	datab => \Mux35~combout\,
	datac => \WIRING_THE_ALU|Shifting|shifting|MUXout2[14]~15_combout\,
	datad => \WIRING_THE_ALU|Shifting|shifting|MUXout0[16]~16_combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|MUXout3[14]~45_combout\);

-- Location: LCCOMB_X68_Y56_N8
\WIRING_THE_ALU|Shifting|shifting|z[13]~59\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|z[13]~59_combout\ = (\Mux0~combout\ & (\WIRING_THE_ALU|Shifting|shifting|MUXout3[14]~45_combout\)) # (!\Mux0~combout\ & ((\WIRING_THE_ALU|Shifting|shifting|z[12]~53_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Shifting|shifting|MUXout3[14]~45_combout\,
	datab => \WIRING_THE_ALU|Shifting|shifting|z[12]~53_combout\,
	datac => \Mux0~combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|z[13]~59_combout\);

-- Location: LCCOMB_X71_Y54_N2
\WIRING_THE_ALU|Mux18~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Mux18~1_combout\ = (\ALUFunct[0]~input_o\ & (((\WIRING_THE_ALU|Shifting|shifting|z[13]~59_combout\) # (!\ALUFunct[2]~input_o\)))) # (!\ALUFunct[0]~input_o\ & 
-- (\WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit8toF|bit4567|bit01|bit1|s~combout\ & (!\ALUFunct[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit8toF|bit4567|bit01|bit1|s~combout\,
	datab => \ALUFunct[0]~input_o\,
	datac => \ALUFunct[2]~input_o\,
	datad => \WIRING_THE_ALU|Shifting|shifting|z[13]~59_combout\,
	combout => \WIRING_THE_ALU|Mux18~1_combout\);

-- Location: LCCOMB_X67_Y55_N26
\WIRING_THE_ALU|Shifting|shifting|z[18]~60\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|z[18]~60_combout\ = (!\Mux41~combout\ & (((!\Mux35~combout\) # (!\Mux37~combout\)) # (!\Mux39~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux39~combout\,
	datab => \Mux37~combout\,
	datac => \Mux41~combout\,
	datad => \Mux35~combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|z[18]~60_combout\);

-- Location: LCCOMB_X67_Y56_N18
\WIRING_THE_ALU|Shifting|shifting|MUXout2[18]~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|MUXout2[18]~23_combout\ = (!\Mux37~combout\ & ((\Mux39~combout\ & (\WIRING_THE_ALU|Shifting|xToIn[26]~15_combout\)) # (!\Mux39~combout\ & ((\WIRING_THE_ALU|Shifting|xToIn[18]~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux37~combout\,
	datab => \WIRING_THE_ALU|Shifting|xToIn[26]~15_combout\,
	datac => \WIRING_THE_ALU|Shifting|xToIn[18]~14_combout\,
	datad => \Mux39~combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|MUXout2[18]~23_combout\);

-- Location: LCCOMB_X66_Y55_N0
\WIRING_THE_ALU|Shifting|shifting|MUXout2[18]~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|MUXout2[18]~24_combout\ = (\WIRING_THE_ALU|Shifting|shifting|MUXout2[18]~23_combout\) # ((\Mux37~combout\ & \WIRING_THE_ALU|Shifting|shifting|MUXout2[18]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux37~combout\,
	datac => \WIRING_THE_ALU|Shifting|shifting|MUXout2[18]~8_combout\,
	datad => \WIRING_THE_ALU|Shifting|shifting|MUXout2[18]~23_combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|MUXout2[18]~24_combout\);

-- Location: LCCOMB_X66_Y55_N26
\WIRING_THE_ALU|Shifting|shifting|z[17]~61\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|z[17]~61_combout\ = (\Mux35~combout\ & ((\WIRING_THE_ALU|Shifting|shifting|MUXout2[20]~17_combout\))) # (!\Mux35~combout\ & (\WIRING_THE_ALU|Shifting|shifting|MUXout2[18]~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux35~combout\,
	datab => \WIRING_THE_ALU|Shifting|shifting|MUXout2[18]~24_combout\,
	datac => \WIRING_THE_ALU|Shifting|shifting|MUXout2[20]~17_combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|z[17]~61_combout\);

-- Location: LCCOMB_X67_Y55_N12
\WIRING_THE_ALU|Shifting|shifting|z[18]~62\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|z[18]~62_combout\ = (\WIRING_THE_ALU|Shifting|shifting|z[18]~60_combout\ & ((\Mux0~combout\ & ((\WIRING_THE_ALU|Shifting|shifting|z[19]~56_combout\))) # (!\Mux0~combout\ & 
-- (\WIRING_THE_ALU|Shifting|shifting|z[17]~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Shifting|shifting|z[17]~61_combout\,
	datab => \Mux0~combout\,
	datac => \WIRING_THE_ALU|Shifting|shifting|z[18]~60_combout\,
	datad => \WIRING_THE_ALU|Shifting|shifting|z[19]~56_combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|z[18]~62_combout\);

-- Location: LCCOMB_X67_Y55_N30
\WIRING_THE_ALU|Shifting|shifting|z[18]~63\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|z[18]~63_combout\ = (\WIRING_THE_ALU|Shifting|shifting|z[18]~62_combout\) # ((!\WIRING_THE_ALU|Shifting|shifting|z[18]~60_combout\ & \WIRING_THE_ALU|Shifting|sftIn~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Shifting|shifting|z[18]~60_combout\,
	datac => \WIRING_THE_ALU|Shifting|sftIn~combout\,
	datad => \WIRING_THE_ALU|Shifting|shifting|z[18]~62_combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|z[18]~63_combout\);

-- Location: LCCOMB_X71_Y54_N12
\WIRING_THE_ALU|Mux18~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Mux18~2_combout\ = (\WIRING_THE_ALU|Mux12~0_combout\ & ((\WIRING_THE_ALU|Mux18~1_combout\ & ((\WIRING_THE_ALU|Shifting|shifting|z[18]~63_combout\))) # (!\WIRING_THE_ALU|Mux18~1_combout\ & 
-- (\WIRING_THE_ALU|set_a_less_b|wiring|bits13|a_eq_b~2_combout\)))) # (!\WIRING_THE_ALU|Mux12~0_combout\ & (\WIRING_THE_ALU|Mux18~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Mux12~0_combout\,
	datab => \WIRING_THE_ALU|Mux18~1_combout\,
	datac => \WIRING_THE_ALU|set_a_less_b|wiring|bits13|a_eq_b~2_combout\,
	datad => \WIRING_THE_ALU|Shifting|shifting|z[18]~63_combout\,
	combout => \WIRING_THE_ALU|Mux18~2_combout\);

-- Location: LCCOMB_X71_Y54_N0
\WIRING_THE_ALU|Mux18~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Mux18~0_combout\ = (\ALUFunct[1]~input_o\ & ((\A[13]~19_combout\ & ((\Mux59~combout\) # (!\ALUFunct[0]~input_o\))) # (!\A[13]~19_combout\ & (!\ALUFunct[0]~input_o\ & \Mux59~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[13]~19_combout\,
	datab => \ALUFunct[0]~input_o\,
	datac => \ALUFunct[1]~input_o\,
	datad => \Mux59~combout\,
	combout => \WIRING_THE_ALU|Mux18~0_combout\);

-- Location: LCCOMB_X71_Y54_N30
\WIRING_THE_ALU|Mux18~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Mux18~3_combout\ = (\WIRING_THE_ALU|Mux18~0_combout\) # ((\WIRING_THE_ALU|Mux18~2_combout\ & !\ALUFunct[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Mux18~2_combout\,
	datac => \ALUFunct[1]~input_o\,
	datad => \WIRING_THE_ALU|Mux18~0_combout\,
	combout => \WIRING_THE_ALU|Mux18~3_combout\);

-- Location: LCCOMB_X89_Y40_N24
\PCADDING_1|c[12]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PCADDING_1|c\(12) = (\PC[10]~input_o\ & (\PCADDING_1|c\(9) & (\PC[11]~input_o\ & \PC[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[10]~input_o\,
	datab => \PCADDING_1|c\(9),
	datac => \PC[11]~input_o\,
	datad => \PC[12]~input_o\,
	combout => \PCADDING_1|c\(12));

-- Location: LCCOMB_X89_Y40_N26
\Mux14~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = (\WDSEL[0]~input_o\ & (\WIRING_THE_ALU|Mux18~3_combout\)) # (!\WDSEL[0]~input_o\ & ((\PC[13]~input_o\ $ (\PCADDING_1|c\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WDSEL[0]~input_o\,
	datab => \WIRING_THE_ALU|Mux18~3_combout\,
	datac => \PC[13]~input_o\,
	datad => \PCADDING_1|c\(12),
	combout => \Mux14~0_combout\);

-- Location: IOIBUF_X53_Y0_N15
\Memo_READ_Data[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Memo_READ_Data(13),
	o => \Memo_READ_Data[13]~input_o\);

-- Location: LCCOMB_X68_Y55_N26
\Mux14~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux14~1_combout\ = (\WDSEL[1]~input_o\ & ((\Memo_READ_Data[13]~input_o\))) # (!\WDSEL[1]~input_o\ & (\Mux14~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~0_combout\,
	datab => \Memo_READ_Data[13]~input_o\,
	datac => \WDSEL[1]~input_o\,
	combout => \Mux14~1_combout\);

-- Location: LCCOMB_X67_Y54_N10
\WIRING_THE_ALU|Shifting|shifting|MUXout2[17]~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|MUXout2[17]~25_combout\ = (!\Mux37~combout\ & ((\Mux39~combout\ & ((\WIRING_THE_ALU|Shifting|xToIn[25]~2_combout\))) # (!\Mux39~combout\ & (\WIRING_THE_ALU|Shifting|xToIn[17]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux37~combout\,
	datab => \WIRING_THE_ALU|Shifting|xToIn[17]~3_combout\,
	datac => \Mux39~combout\,
	datad => \WIRING_THE_ALU|Shifting|xToIn[25]~2_combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|MUXout2[17]~25_combout\);

-- Location: LCCOMB_X67_Y54_N28
\WIRING_THE_ALU|Shifting|shifting|MUXout2[17]~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|MUXout2[17]~26_combout\ = (\Mux37~combout\ & ((\Mux39~combout\ & ((\WIRING_THE_ALU|Shifting|xToIn[29]~7_combout\))) # (!\Mux39~combout\ & (\WIRING_THE_ALU|Shifting|xToIn[21]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux37~combout\,
	datab => \WIRING_THE_ALU|Shifting|xToIn[21]~6_combout\,
	datac => \Mux39~combout\,
	datad => \WIRING_THE_ALU|Shifting|xToIn[29]~7_combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|MUXout2[17]~26_combout\);

-- Location: LCCOMB_X67_Y54_N14
\WIRING_THE_ALU|Shifting|shifting|z[17]~65\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|z[17]~65_combout\ = (\Mux35~combout\ & (((\WIRING_THE_ALU|Shifting|shifting|MUXout2[19]~21_combout\)))) # (!\Mux35~combout\ & ((\WIRING_THE_ALU|Shifting|shifting|MUXout2[17]~25_combout\) # 
-- ((\WIRING_THE_ALU|Shifting|shifting|MUXout2[17]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Shifting|shifting|MUXout2[17]~25_combout\,
	datab => \Mux35~combout\,
	datac => \WIRING_THE_ALU|Shifting|shifting|MUXout2[17]~26_combout\,
	datad => \WIRING_THE_ALU|Shifting|shifting|MUXout2[19]~21_combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|z[17]~65_combout\);

-- Location: LCCOMB_X68_Y55_N14
\WIRING_THE_ALU|Shifting|shifting|z[17]~66\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|z[17]~66_combout\ = (\Mux0~combout\ & ((\WIRING_THE_ALU|Shifting|shifting|z[17]~61_combout\))) # (!\Mux0~combout\ & (\WIRING_THE_ALU|Shifting|shifting|z[17]~65_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Shifting|shifting|z[17]~65_combout\,
	datac => \Mux0~combout\,
	datad => \WIRING_THE_ALU|Shifting|shifting|z[17]~61_combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|z[17]~66_combout\);

-- Location: LCCOMB_X69_Y56_N30
\WIRING_THE_ALU|Shifting|shifting|z[17]~67\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|z[17]~67_combout\ = (\Mux35~combout\ & (\Mux39~combout\ & (\Mux37~combout\ & \Mux0~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux35~combout\,
	datab => \Mux39~combout\,
	datac => \Mux37~combout\,
	datad => \Mux0~combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|z[17]~67_combout\);

-- Location: LCCOMB_X68_Y55_N16
\WIRING_THE_ALU|Shifting|shifting|z[17]~68\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|z[17]~68_combout\ = (\Mux41~combout\ & (((\WIRING_THE_ALU|Shifting|sftIn~combout\)))) # (!\Mux41~combout\ & ((\WIRING_THE_ALU|Shifting|shifting|z[17]~67_combout\ & ((\WIRING_THE_ALU|Shifting|sftIn~combout\))) # 
-- (!\WIRING_THE_ALU|Shifting|shifting|z[17]~67_combout\ & (\WIRING_THE_ALU|Shifting|shifting|z[17]~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux41~combout\,
	datab => \WIRING_THE_ALU|Shifting|shifting|z[17]~66_combout\,
	datac => \WIRING_THE_ALU|Shifting|shifting|z[17]~67_combout\,
	datad => \WIRING_THE_ALU|Shifting|sftIn~combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|z[17]~68_combout\);

-- Location: LCCOMB_X68_Y56_N10
\WIRING_THE_ALU|Shifting|shifting|MUXout3[15]~46\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|MUXout3[15]~46_combout\ = (!\Mux41~combout\ & ((\WIRING_THE_ALU|Shifting|shifting|MUXout2[17]~25_combout\) # ((\WIRING_THE_ALU|Shifting|shifting|MUXout2[17]~12_combout\ & \Mux37~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Shifting|shifting|MUXout2[17]~25_combout\,
	datab => \WIRING_THE_ALU|Shifting|shifting|MUXout2[17]~12_combout\,
	datac => \Mux37~combout\,
	datad => \Mux41~combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|MUXout3[15]~46_combout\);

-- Location: LCCOMB_X68_Y56_N20
\WIRING_THE_ALU|Shifting|shifting|MUXout3[15]~47\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|MUXout3[15]~47_combout\ = (\Mux35~combout\ & ((\WIRING_THE_ALU|Shifting|shifting|MUXout3[15]~46_combout\) # ((\WIRING_THE_ALU|Shifting|shifting|MUXout0[16]~16_combout\)))) # (!\Mux35~combout\ & 
-- (((\WIRING_THE_ALU|Shifting|shifting|MUXout2[15]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Shifting|shifting|MUXout3[15]~46_combout\,
	datab => \WIRING_THE_ALU|Shifting|shifting|MUXout2[15]~19_combout\,
	datac => \Mux35~combout\,
	datad => \WIRING_THE_ALU|Shifting|shifting|MUXout0[16]~16_combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|MUXout3[15]~47_combout\);

-- Location: LCCOMB_X68_Y56_N22
\WIRING_THE_ALU|Shifting|shifting|z[14]~64\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|z[14]~64_combout\ = (\Mux0~combout\ & ((\WIRING_THE_ALU|Shifting|shifting|MUXout3[15]~47_combout\))) # (!\Mux0~combout\ & (\WIRING_THE_ALU|Shifting|shifting|MUXout3[14]~45_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Shifting|shifting|MUXout3[14]~45_combout\,
	datab => \WIRING_THE_ALU|Shifting|shifting|MUXout3[15]~47_combout\,
	datac => \Mux0~combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|z[14]~64_combout\);

-- Location: LCCOMB_X70_Y55_N16
\WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit8toF|bit4567|bit01|bit1|cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit8toF|bit4567|bit01|bit1|cout~0_combout\ = (\A[13]~19_combout\ & ((\WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit8toF|bit4567|bit01|bit0|cout~0_combout\) # (\ALUFunct[3]~input_o\ $ (\Mux59~combout\)))) # 
-- (!\A[13]~19_combout\ & (\WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit8toF|bit4567|bit01|bit0|cout~0_combout\ & (\ALUFunct[3]~input_o\ $ (\Mux59~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUFunct[3]~input_o\,
	datab => \Mux59~combout\,
	datac => \A[13]~19_combout\,
	datad => \WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit8toF|bit4567|bit01|bit0|cout~0_combout\,
	combout => \WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit8toF|bit4567|bit01|bit1|cout~0_combout\);

-- Location: LCCOMB_X71_Y55_N28
\WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit8toF|bit4567|bit23|bit0|s\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit8toF|bit4567|bit23|bit0|s~combout\ = \ALUFunct[3]~input_o\ $ (\WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit8toF|bit4567|bit01|bit1|cout~0_combout\ $ 
-- (\WIRING_THE_ALU|set_a_less_b|wiring|bits14|a_eq_b~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALUFunct[3]~input_o\,
	datac => \WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit8toF|bit4567|bit01|bit1|cout~0_combout\,
	datad => \WIRING_THE_ALU|set_a_less_b|wiring|bits14|a_eq_b~2_combout\,
	combout => \WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit8toF|bit4567|bit23|bit0|s~combout\);

-- Location: LCCOMB_X71_Y55_N14
\WIRING_THE_ALU|Mux17~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Mux17~1_combout\ = (\ALUFunct[2]~input_o\ & (\WIRING_THE_ALU|Shifting|shifting|z[14]~64_combout\ & (\ALUFunct[0]~input_o\))) # (!\ALUFunct[2]~input_o\ & (((\ALUFunct[0]~input_o\) # 
-- (\WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit8toF|bit4567|bit23|bit0|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUFunct[2]~input_o\,
	datab => \WIRING_THE_ALU|Shifting|shifting|z[14]~64_combout\,
	datac => \ALUFunct[0]~input_o\,
	datad => \WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit8toF|bit4567|bit23|bit0|s~combout\,
	combout => \WIRING_THE_ALU|Mux17~1_combout\);

-- Location: LCCOMB_X71_Y55_N0
\WIRING_THE_ALU|Mux17~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Mux17~2_combout\ = (\WIRING_THE_ALU|Mux17~1_combout\ & ((\WIRING_THE_ALU|Shifting|shifting|z[17]~68_combout\) # ((!\WIRING_THE_ALU|Mux12~0_combout\)))) # (!\WIRING_THE_ALU|Mux17~1_combout\ & 
-- (((\WIRING_THE_ALU|set_a_less_b|wiring|bits14|a_eq_b~2_combout\ & \WIRING_THE_ALU|Mux12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Shifting|shifting|z[17]~68_combout\,
	datab => \WIRING_THE_ALU|set_a_less_b|wiring|bits14|a_eq_b~2_combout\,
	datac => \WIRING_THE_ALU|Mux17~1_combout\,
	datad => \WIRING_THE_ALU|Mux12~0_combout\,
	combout => \WIRING_THE_ALU|Mux17~2_combout\);

-- Location: LCCOMB_X71_Y55_N2
\WIRING_THE_ALU|Mux17~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Mux17~0_combout\ = (\ALUFunct[1]~input_o\ & ((\A[14]~18_combout\ & ((\Mux61~combout\) # (!\ALUFunct[0]~input_o\))) # (!\A[14]~18_combout\ & (!\ALUFunct[0]~input_o\ & \Mux61~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[14]~18_combout\,
	datab => \ALUFunct[0]~input_o\,
	datac => \ALUFunct[1]~input_o\,
	datad => \Mux61~combout\,
	combout => \WIRING_THE_ALU|Mux17~0_combout\);

-- Location: LCCOMB_X71_Y55_N10
\WIRING_THE_ALU|Mux17~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Mux17~3_combout\ = (\WIRING_THE_ALU|Mux17~0_combout\) # ((\WIRING_THE_ALU|Mux17~2_combout\ & !\ALUFunct[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WIRING_THE_ALU|Mux17~2_combout\,
	datac => \ALUFunct[1]~input_o\,
	datad => \WIRING_THE_ALU|Mux17~0_combout\,
	combout => \WIRING_THE_ALU|Mux17~3_combout\);

-- Location: LCCOMB_X88_Y40_N14
\Mux15~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = (!\WDSEL[0]~input_o\ & (\PC[14]~input_o\ $ (((\PC[13]~input_o\ & \PCADDING_1|c\(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[13]~input_o\,
	datab => \PCADDING_1|c\(12),
	datac => \WDSEL[0]~input_o\,
	datad => \PC[14]~input_o\,
	combout => \Mux15~0_combout\);

-- Location: LCCOMB_X70_Y64_N16
\Mux15~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux15~1_combout\ = (!\WDSEL[1]~input_o\ & ((\Mux15~0_combout\) # ((\WDSEL[0]~input_o\ & \WIRING_THE_ALU|Mux17~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WDSEL[0]~input_o\,
	datab => \WIRING_THE_ALU|Mux17~3_combout\,
	datac => \WDSEL[1]~input_o\,
	datad => \Mux15~0_combout\,
	combout => \Mux15~1_combout\);

-- Location: IOIBUF_X99_Y91_N8
\Memo_READ_Data[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Memo_READ_Data(14),
	o => \Memo_READ_Data[14]~input_o\);

-- Location: LCCOMB_X70_Y64_N10
\Mux15~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux15~2_combout\ = (\Mux15~1_combout\) # ((\WDSEL[1]~input_o\ & \Memo_READ_Data[14]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux15~1_combout\,
	datac => \WDSEL[1]~input_o\,
	datad => \Memo_READ_Data[14]~input_o\,
	combout => \Mux15~2_combout\);

-- Location: LCCOMB_X66_Y55_N28
\WIRING_THE_ALU|Shifting|shifting|MUXout2[16]~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|MUXout2[16]~27_combout\ = (\Mux37~combout\ & ((\Mux39~combout\ & (\WIRING_THE_ALU|Shifting|xToIn[28]~11_combout\)) # (!\Mux39~combout\ & ((\WIRING_THE_ALU|Shifting|xToIn[20]~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Shifting|xToIn[28]~11_combout\,
	datab => \WIRING_THE_ALU|Shifting|xToIn[20]~10_combout\,
	datac => \Mux39~combout\,
	datad => \Mux37~combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|MUXout2[16]~27_combout\);

-- Location: LCCOMB_X66_Y55_N6
\WIRING_THE_ALU|Shifting|shifting|z[16]~69\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|z[16]~69_combout\ = (\Mux35~combout\ & (\WIRING_THE_ALU|Shifting|shifting|MUXout2[18]~24_combout\)) # (!\Mux35~combout\ & (((\WIRING_THE_ALU|Shifting|shifting|MUXout2[16]~22_combout\) # 
-- (\WIRING_THE_ALU|Shifting|shifting|MUXout2[16]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux35~combout\,
	datab => \WIRING_THE_ALU|Shifting|shifting|MUXout2[18]~24_combout\,
	datac => \WIRING_THE_ALU|Shifting|shifting|MUXout2[16]~22_combout\,
	datad => \WIRING_THE_ALU|Shifting|shifting|MUXout2[16]~27_combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|z[16]~69_combout\);

-- Location: LCCOMB_X68_Y55_N6
\WIRING_THE_ALU|Shifting|shifting|z[16]~72\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|z[16]~72_combout\ = (!\Mux41~combout\ & ((\Mux0~combout\ & ((\WIRING_THE_ALU|Shifting|shifting|z[17]~65_combout\))) # (!\Mux0~combout\ & (\WIRING_THE_ALU|Shifting|shifting|z[16]~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~combout\,
	datab => \WIRING_THE_ALU|Shifting|shifting|z[16]~69_combout\,
	datac => \Mux41~combout\,
	datad => \WIRING_THE_ALU|Shifting|shifting|z[17]~65_combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|z[16]~72_combout\);

-- Location: LCCOMB_X68_Y55_N8
\WIRING_THE_ALU|Shifting|shifting|z[16]~73\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|z[16]~73_combout\ = (\WIRING_THE_ALU|Shifting|shifting|MUXout0[16]~16_combout\) # (\WIRING_THE_ALU|Shifting|shifting|z[16]~72_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \WIRING_THE_ALU|Shifting|shifting|MUXout0[16]~16_combout\,
	datad => \WIRING_THE_ALU|Shifting|shifting|z[16]~72_combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|z[16]~73_combout\);

-- Location: LCCOMB_X68_Y55_N2
\WIRING_THE_ALU|Shifting|shifting|z[15]~70\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|z[15]~70_combout\ = (\Mux0~combout\ & ((\WIRING_THE_ALU|Shifting|shifting|MUXout0[16]~16_combout\) # ((\WIRING_THE_ALU|Shifting|shifting|z[16]~69_combout\ & !\Mux41~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~combout\,
	datab => \WIRING_THE_ALU|Shifting|shifting|z[16]~69_combout\,
	datac => \Mux41~combout\,
	datad => \WIRING_THE_ALU|Shifting|shifting|MUXout0[16]~16_combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|z[15]~70_combout\);

-- Location: LCCOMB_X68_Y55_N20
\WIRING_THE_ALU|Shifting|shifting|z[15]~71\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Shifting|shifting|z[15]~71_combout\ = (\WIRING_THE_ALU|Shifting|shifting|z[15]~70_combout\) # ((\WIRING_THE_ALU|Shifting|shifting|MUXout3[15]~47_combout\ & !\Mux0~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Shifting|shifting|MUXout3[15]~47_combout\,
	datac => \Mux0~combout\,
	datad => \WIRING_THE_ALU|Shifting|shifting|z[15]~70_combout\,
	combout => \WIRING_THE_ALU|Shifting|shifting|z[15]~71_combout\);

-- Location: LCCOMB_X70_Y55_N2
\WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit8toF|bit4567|bit23|bit0|cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit8toF|bit4567|bit23|bit0|cout~0_combout\ = (\A[14]~18_combout\ & ((\WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit8toF|bit4567|bit01|bit1|cout~0_combout\) # (\Mux61~combout\ $ (\ALUFunct[3]~input_o\)))) # 
-- (!\A[14]~18_combout\ & (\WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit8toF|bit4567|bit01|bit1|cout~0_combout\ & (\Mux61~combout\ $ (\ALUFunct[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[14]~18_combout\,
	datab => \WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit8toF|bit4567|bit01|bit1|cout~0_combout\,
	datac => \Mux61~combout\,
	datad => \ALUFunct[3]~input_o\,
	combout => \WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit8toF|bit4567|bit23|bit0|cout~0_combout\);

-- Location: LCCOMB_X69_Y55_N22
\WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit8toF|bit4567|bit23|bit1|s\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit8toF|bit4567|bit23|bit1|s~combout\ = \WIRING_THE_ALU|set_a_less_b|wiring|bits15|a_eq_b~2_combout\ $ (\ALUFunct[3]~input_o\ $ 
-- (\WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit8toF|bit4567|bit23|bit0|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WIRING_THE_ALU|set_a_less_b|wiring|bits15|a_eq_b~2_combout\,
	datac => \ALUFunct[3]~input_o\,
	datad => \WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit8toF|bit4567|bit23|bit0|cout~0_combout\,
	combout => \WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit8toF|bit4567|bit23|bit1|s~combout\);

-- Location: LCCOMB_X69_Y55_N16
\WIRING_THE_ALU|Mux16~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Mux16~1_combout\ = (\ALUFunct[2]~input_o\ & (\WIRING_THE_ALU|Shifting|shifting|z[15]~71_combout\ & ((\ALUFunct[0]~input_o\)))) # (!\ALUFunct[2]~input_o\ & 
-- (((\WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit8toF|bit4567|bit23|bit1|s~combout\) # (\ALUFunct[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUFunct[2]~input_o\,
	datab => \WIRING_THE_ALU|Shifting|shifting|z[15]~71_combout\,
	datac => \WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit8toF|bit4567|bit23|bit1|s~combout\,
	datad => \ALUFunct[0]~input_o\,
	combout => \WIRING_THE_ALU|Mux16~1_combout\);

-- Location: LCCOMB_X69_Y55_N10
\WIRING_THE_ALU|Mux16~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Mux16~2_combout\ = (\WIRING_THE_ALU|Mux12~0_combout\ & ((\WIRING_THE_ALU|Mux16~1_combout\ & (\WIRING_THE_ALU|Shifting|shifting|z[16]~73_combout\)) # (!\WIRING_THE_ALU|Mux16~1_combout\ & 
-- ((\WIRING_THE_ALU|set_a_less_b|wiring|bits15|a_eq_b~2_combout\))))) # (!\WIRING_THE_ALU|Mux12~0_combout\ & (((\WIRING_THE_ALU|Mux16~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Shifting|shifting|z[16]~73_combout\,
	datab => \WIRING_THE_ALU|Mux12~0_combout\,
	datac => \WIRING_THE_ALU|set_a_less_b|wiring|bits15|a_eq_b~2_combout\,
	datad => \WIRING_THE_ALU|Mux16~1_combout\,
	combout => \WIRING_THE_ALU|Mux16~2_combout\);

-- Location: LCCOMB_X69_Y55_N12
\WIRING_THE_ALU|Mux16~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Mux16~0_combout\ = (\ALUFunct[1]~input_o\ & ((\ALUFunct[0]~input_o\ & (\A[15]~17_combout\ & \Mux63~combout\)) # (!\ALUFunct[0]~input_o\ & ((\A[15]~17_combout\) # (\Mux63~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUFunct[0]~input_o\,
	datab => \A[15]~17_combout\,
	datac => \Mux63~combout\,
	datad => \ALUFunct[1]~input_o\,
	combout => \WIRING_THE_ALU|Mux16~0_combout\);

-- Location: LCCOMB_X69_Y55_N4
\WIRING_THE_ALU|Mux16~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Mux16~3_combout\ = (\WIRING_THE_ALU|Mux16~0_combout\) # ((\WIRING_THE_ALU|Mux16~2_combout\ & !\ALUFunct[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Mux16~2_combout\,
	datab => \ALUFunct[1]~input_o\,
	datad => \WIRING_THE_ALU|Mux16~0_combout\,
	combout => \WIRING_THE_ALU|Mux16~3_combout\);

-- Location: LCCOMB_X88_Y40_N16
\PCADDING_1|z[15]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PCADDING_1|z\(15) = \PC[15]~input_o\ $ (((\PC[13]~input_o\ & (\PCADDING_1|c\(12) & \PC[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[13]~input_o\,
	datab => \PCADDING_1|c\(12),
	datac => \PC[15]~input_o\,
	datad => \PC[14]~input_o\,
	combout => \PCADDING_1|z\(15));

-- Location: LCCOMB_X89_Y34_N26
\Mux16~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux16~0_combout\ = (!\WDSEL[1]~input_o\ & ((\WDSEL[0]~input_o\ & (\WIRING_THE_ALU|Mux16~3_combout\)) # (!\WDSEL[0]~input_o\ & ((\PCADDING_1|z\(15))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WDSEL[0]~input_o\,
	datab => \WIRING_THE_ALU|Mux16~3_combout\,
	datac => \PCADDING_1|z\(15),
	datad => \WDSEL[1]~input_o\,
	combout => \Mux16~0_combout\);

-- Location: IOIBUF_X117_Y34_N1
\Memo_READ_Data[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Memo_READ_Data(15),
	o => \Memo_READ_Data[15]~input_o\);

-- Location: LCCOMB_X89_Y34_N20
\Mux16~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux16~1_combout\ = (\Mux16~0_combout\) # ((\WDSEL[1]~input_o\ & \Memo_READ_Data[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WDSEL[1]~input_o\,
	datac => \Mux16~0_combout\,
	datad => \Memo_READ_Data[15]~input_o\,
	combout => \Mux16~1_combout\);

-- Location: IOIBUF_X117_Y50_N8
\Memo_READ_Data[16]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Memo_READ_Data(16),
	o => \Memo_READ_Data[16]~input_o\);

-- Location: LCCOMB_X88_Y40_N10
\PCADDING_1|c[15]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PCADDING_1|c\(15) = (\PC[13]~input_o\ & (\PCADDING_1|c\(12) & (\PC[15]~input_o\ & \PC[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[13]~input_o\,
	datab => \PCADDING_1|c\(12),
	datac => \PC[15]~input_o\,
	datad => \PC[14]~input_o\,
	combout => \PCADDING_1|c\(15));

-- Location: LCCOMB_X69_Y55_N30
\WIRING_THE_ALU|Mux15~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Mux15~0_combout\ = (\ALUFunct[1]~input_o\ & ((\ALUFunct[0]~input_o\ & (\Mux65~combout\ & \A[16]~16_combout\)) # (!\ALUFunct[0]~input_o\ & ((\Mux65~combout\) # (\A[16]~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUFunct[0]~input_o\,
	datab => \Mux65~combout\,
	datac => \A[16]~16_combout\,
	datad => \ALUFunct[1]~input_o\,
	combout => \WIRING_THE_ALU|Mux15~0_combout\);

-- Location: LCCOMB_X69_Y55_N0
\WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit8toF|bit4567|bit23|bit1|cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit8toF|bit4567|bit23|bit1|cout~0_combout\ = (\A[15]~17_combout\ & ((\WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit8toF|bit4567|bit23|bit0|cout~0_combout\) # (\ALUFunct[3]~input_o\ $ (\Mux63~combout\)))) # 
-- (!\A[15]~17_combout\ & (\WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit8toF|bit4567|bit23|bit0|cout~0_combout\ & (\ALUFunct[3]~input_o\ $ (\Mux63~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUFunct[3]~input_o\,
	datab => \A[15]~17_combout\,
	datac => \Mux63~combout\,
	datad => \WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit8toF|bit4567|bit23|bit0|cout~0_combout\,
	combout => \WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit8toF|bit4567|bit23|bit1|cout~0_combout\);

-- Location: LCCOMB_X69_Y55_N26
\WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit0to7|bit0123|bit01|bit0|s\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit0to7|bit0123|bit01|bit0|s~combout\ = \WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit8toF|bit4567|bit23|bit1|cout~0_combout\ $ (\ALUFunct[3]~input_o\ $ 
-- (\WIRING_THE_ALU|set_a_less_b|wiring|bits16|a_eq_b~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit8toF|bit4567|bit23|bit1|cout~0_combout\,
	datac => \ALUFunct[3]~input_o\,
	datad => \WIRING_THE_ALU|set_a_less_b|wiring|bits16|a_eq_b~2_combout\,
	combout => \WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit0to7|bit0123|bit01|bit0|s~combout\);

-- Location: LCCOMB_X69_Y55_N28
\WIRING_THE_ALU|Mux15~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Mux15~1_combout\ = (\ALUFunct[0]~input_o\ & (((\WIRING_THE_ALU|Shifting|shifting|z[16]~73_combout\)) # (!\ALUFunct[2]~input_o\))) # (!\ALUFunct[0]~input_o\ & (!\ALUFunct[2]~input_o\ & 
-- (\WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit0to7|bit0123|bit01|bit0|s~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUFunct[0]~input_o\,
	datab => \ALUFunct[2]~input_o\,
	datac => \WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit0to7|bit0123|bit01|bit0|s~combout\,
	datad => \WIRING_THE_ALU|Shifting|shifting|z[16]~73_combout\,
	combout => \WIRING_THE_ALU|Mux15~1_combout\);

-- Location: LCCOMB_X69_Y55_N6
\WIRING_THE_ALU|Mux15~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Mux15~2_combout\ = (\WIRING_THE_ALU|Mux12~0_combout\ & ((\WIRING_THE_ALU|Mux15~1_combout\ & ((\WIRING_THE_ALU|Shifting|shifting|z[15]~71_combout\))) # (!\WIRING_THE_ALU|Mux15~1_combout\ & 
-- (\WIRING_THE_ALU|set_a_less_b|wiring|bits16|a_eq_b~2_combout\)))) # (!\WIRING_THE_ALU|Mux12~0_combout\ & (((\WIRING_THE_ALU|Mux15~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|set_a_less_b|wiring|bits16|a_eq_b~2_combout\,
	datab => \WIRING_THE_ALU|Mux12~0_combout\,
	datac => \WIRING_THE_ALU|Mux15~1_combout\,
	datad => \WIRING_THE_ALU|Shifting|shifting|z[15]~71_combout\,
	combout => \WIRING_THE_ALU|Mux15~2_combout\);

-- Location: LCCOMB_X69_Y55_N24
\WIRING_THE_ALU|Mux15~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Mux15~3_combout\ = (\WIRING_THE_ALU|Mux15~0_combout\) # ((!\ALUFunct[1]~input_o\ & \WIRING_THE_ALU|Mux15~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Mux15~0_combout\,
	datab => \ALUFunct[1]~input_o\,
	datad => \WIRING_THE_ALU|Mux15~2_combout\,
	combout => \WIRING_THE_ALU|Mux15~3_combout\);

-- Location: LCCOMB_X86_Y54_N12
\Mux17~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux17~0_combout\ = (\WDSEL[0]~input_o\ & (((\WIRING_THE_ALU|Mux15~3_combout\)))) # (!\WDSEL[0]~input_o\ & (\PCADDING_1|c\(15) $ (((\PC[16]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PCADDING_1|c\(15),
	datab => \WIRING_THE_ALU|Mux15~3_combout\,
	datac => \WDSEL[0]~input_o\,
	datad => \PC[16]~input_o\,
	combout => \Mux17~0_combout\);

-- Location: LCCOMB_X86_Y54_N30
\Mux17~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux17~1_combout\ = (\WDSEL[1]~input_o\ & (\Memo_READ_Data[16]~input_o\)) # (!\WDSEL[1]~input_o\ & ((\Mux17~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WDSEL[1]~input_o\,
	datac => \Memo_READ_Data[16]~input_o\,
	datad => \Mux17~0_combout\,
	combout => \Mux17~1_combout\);

-- Location: LCCOMB_X86_Y54_N24
\Mux18~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux18~1_combout\ = (!\WDSEL[0]~input_o\ & (\PC[17]~input_o\ $ (((\PCADDING_1|c\(15) & \PC[16]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PCADDING_1|c\(15),
	datab => \PC[16]~input_o\,
	datac => \WDSEL[0]~input_o\,
	datad => \PC[17]~input_o\,
	combout => \Mux18~1_combout\);

-- Location: IOIBUF_X79_Y91_N8
\Memo_READ_Data[17]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Memo_READ_Data(17),
	o => \Memo_READ_Data[17]~input_o\);

-- Location: LCCOMB_X69_Y55_N2
\WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit0to7|bit0123|bit01|bit0|cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit0to7|bit0123|bit01|bit0|cout~0_combout\ = (\A[16]~16_combout\ & ((\WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit8toF|bit4567|bit23|bit1|cout~0_combout\) # (\ALUFunct[3]~input_o\ $ (\Mux65~combout\)))) # 
-- (!\A[16]~16_combout\ & (\WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit8toF|bit4567|bit23|bit1|cout~0_combout\ & (\ALUFunct[3]~input_o\ $ (\Mux65~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUFunct[3]~input_o\,
	datab => \Mux65~combout\,
	datac => \A[16]~16_combout\,
	datad => \WIRING_THE_ALU|Adding_Subing|wiring|bit0toF|bit8toF|bit4567|bit23|bit1|cout~0_combout\,
	combout => \WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit0to7|bit0123|bit01|bit0|cout~0_combout\);

-- Location: LCCOMB_X71_Y55_N6
\WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit0to7|bit0123|bit01|bit1|s\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit0to7|bit0123|bit01|bit1|s~combout\ = \WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit0to7|bit0123|bit01|bit0|cout~0_combout\ $ (\WIRING_THE_ALU|set_a_less_b|wiring|bits17|a_eq_b~2_combout\ $ 
-- (\ALUFunct[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit0to7|bit0123|bit01|bit0|cout~0_combout\,
	datac => \WIRING_THE_ALU|set_a_less_b|wiring|bits17|a_eq_b~2_combout\,
	datad => \ALUFunct[3]~input_o\,
	combout => \WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit0to7|bit0123|bit01|bit1|s~combout\);

-- Location: LCCOMB_X71_Y55_N8
\WIRING_THE_ALU|Mux14~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Mux14~1_combout\ = (\ALUFunct[2]~input_o\ & (\WIRING_THE_ALU|Shifting|shifting|z[17]~68_combout\ & (\ALUFunct[0]~input_o\))) # (!\ALUFunct[2]~input_o\ & (((\ALUFunct[0]~input_o\) # 
-- (\WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit0to7|bit0123|bit01|bit1|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Shifting|shifting|z[17]~68_combout\,
	datab => \ALUFunct[2]~input_o\,
	datac => \ALUFunct[0]~input_o\,
	datad => \WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit0to7|bit0123|bit01|bit1|s~combout\,
	combout => \WIRING_THE_ALU|Mux14~1_combout\);

-- Location: LCCOMB_X71_Y55_N18
\WIRING_THE_ALU|Mux14~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Mux14~2_combout\ = (\WIRING_THE_ALU|Mux14~1_combout\ & ((\WIRING_THE_ALU|Shifting|shifting|z[14]~64_combout\) # ((!\WIRING_THE_ALU|Mux12~0_combout\)))) # (!\WIRING_THE_ALU|Mux14~1_combout\ & 
-- (((\WIRING_THE_ALU|set_a_less_b|wiring|bits17|a_eq_b~2_combout\ & \WIRING_THE_ALU|Mux12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Mux14~1_combout\,
	datab => \WIRING_THE_ALU|Shifting|shifting|z[14]~64_combout\,
	datac => \WIRING_THE_ALU|set_a_less_b|wiring|bits17|a_eq_b~2_combout\,
	datad => \WIRING_THE_ALU|Mux12~0_combout\,
	combout => \WIRING_THE_ALU|Mux14~2_combout\);

-- Location: LCCOMB_X71_Y55_N20
\WIRING_THE_ALU|Mux14~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Mux14~0_combout\ = (\ALUFunct[1]~input_o\ & ((\Mux67~combout\ & ((\A[17]~8_combout\) # (!\ALUFunct[0]~input_o\))) # (!\Mux67~combout\ & (!\ALUFunct[0]~input_o\ & \A[17]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux67~combout\,
	datab => \ALUFunct[0]~input_o\,
	datac => \ALUFunct[1]~input_o\,
	datad => \A[17]~8_combout\,
	combout => \WIRING_THE_ALU|Mux14~0_combout\);

-- Location: LCCOMB_X71_Y55_N16
\Mux18~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux18~0_combout\ = (\WDSEL[0]~input_o\ & ((\WIRING_THE_ALU|Mux14~0_combout\) # ((\WIRING_THE_ALU|Mux14~2_combout\ & !\ALUFunct[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WDSEL[0]~input_o\,
	datab => \WIRING_THE_ALU|Mux14~2_combout\,
	datac => \ALUFunct[1]~input_o\,
	datad => \WIRING_THE_ALU|Mux14~0_combout\,
	combout => \Mux18~0_combout\);

-- Location: LCCOMB_X71_Y55_N26
\Mux18~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux18~2_combout\ = (\WDSEL[1]~input_o\ & (((\Memo_READ_Data[17]~input_o\)))) # (!\WDSEL[1]~input_o\ & ((\Mux18~1_combout\) # ((\Mux18~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux18~1_combout\,
	datab => \Memo_READ_Data[17]~input_o\,
	datac => \WDSEL[1]~input_o\,
	datad => \Mux18~0_combout\,
	combout => \Mux18~2_combout\);

-- Location: IOIBUF_X34_Y91_N1
\Memo_READ_Data[18]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Memo_READ_Data(18),
	o => \Memo_READ_Data[18]~input_o\);

-- Location: LCCOMB_X71_Y54_N18
\WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit0to7|bit0123|bit01|bit1|cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit0to7|bit0123|bit01|bit1|cout~0_combout\ = (\A[17]~8_combout\ & ((\WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit0to7|bit0123|bit01|bit0|cout~0_combout\) # (\Mux67~combout\ $ (\ALUFunct[3]~input_o\)))) # 
-- (!\A[17]~8_combout\ & (\WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit0to7|bit0123|bit01|bit0|cout~0_combout\ & (\Mux67~combout\ $ (\ALUFunct[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux67~combout\,
	datab => \ALUFunct[3]~input_o\,
	datac => \A[17]~8_combout\,
	datad => \WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit0to7|bit0123|bit01|bit0|cout~0_combout\,
	combout => \WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit0to7|bit0123|bit01|bit1|cout~0_combout\);

-- Location: LCCOMB_X71_Y54_N28
\WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit0to7|bit0123|bit23|bit0|s\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit0to7|bit0123|bit23|bit0|s~combout\ = \ALUFunct[3]~input_o\ $ (\WIRING_THE_ALU|set_a_less_b|wiring|bits18|a_eq_b~2_combout\ $ 
-- (\WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit0to7|bit0123|bit01|bit1|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALUFunct[3]~input_o\,
	datac => \WIRING_THE_ALU|set_a_less_b|wiring|bits18|a_eq_b~2_combout\,
	datad => \WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit0to7|bit0123|bit01|bit1|cout~0_combout\,
	combout => \WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit0to7|bit0123|bit23|bit0|s~combout\);

-- Location: LCCOMB_X71_Y54_N14
\WIRING_THE_ALU|Mux13~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Mux13~1_combout\ = (\ALUFunct[0]~input_o\ & ((\WIRING_THE_ALU|Shifting|shifting|z[18]~63_combout\) # ((!\ALUFunct[2]~input_o\)))) # (!\ALUFunct[0]~input_o\ & (((!\ALUFunct[2]~input_o\ & 
-- \WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit0to7|bit0123|bit23|bit0|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Shifting|shifting|z[18]~63_combout\,
	datab => \ALUFunct[0]~input_o\,
	datac => \ALUFunct[2]~input_o\,
	datad => \WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit0to7|bit0123|bit23|bit0|s~combout\,
	combout => \WIRING_THE_ALU|Mux13~1_combout\);

-- Location: LCCOMB_X71_Y54_N24
\WIRING_THE_ALU|Mux13~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Mux13~2_combout\ = (\WIRING_THE_ALU|Mux12~0_combout\ & ((\WIRING_THE_ALU|Mux13~1_combout\ & ((\WIRING_THE_ALU|Shifting|shifting|z[13]~59_combout\))) # (!\WIRING_THE_ALU|Mux13~1_combout\ & 
-- (\WIRING_THE_ALU|set_a_less_b|wiring|bits18|a_eq_b~2_combout\)))) # (!\WIRING_THE_ALU|Mux12~0_combout\ & (\WIRING_THE_ALU|Mux13~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Mux12~0_combout\,
	datab => \WIRING_THE_ALU|Mux13~1_combout\,
	datac => \WIRING_THE_ALU|set_a_less_b|wiring|bits18|a_eq_b~2_combout\,
	datad => \WIRING_THE_ALU|Shifting|shifting|z[13]~59_combout\,
	combout => \WIRING_THE_ALU|Mux13~2_combout\);

-- Location: LCCOMB_X71_Y54_N16
\WIRING_THE_ALU|Mux13~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Mux13~0_combout\ = (\ALUFunct[1]~input_o\ & ((\ALUFunct[0]~input_o\ & (\Mux69~combout\ & \A[18]~9_combout\)) # (!\ALUFunct[0]~input_o\ & ((\Mux69~combout\) # (\A[18]~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUFunct[1]~input_o\,
	datab => \ALUFunct[0]~input_o\,
	datac => \Mux69~combout\,
	datad => \A[18]~9_combout\,
	combout => \WIRING_THE_ALU|Mux13~0_combout\);

-- Location: LCCOMB_X71_Y54_N26
\WIRING_THE_ALU|Mux13~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Mux13~3_combout\ = (\WIRING_THE_ALU|Mux13~0_combout\) # ((\WIRING_THE_ALU|Mux13~2_combout\ & !\ALUFunct[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WIRING_THE_ALU|Mux13~2_combout\,
	datac => \ALUFunct[1]~input_o\,
	datad => \WIRING_THE_ALU|Mux13~0_combout\,
	combout => \WIRING_THE_ALU|Mux13~3_combout\);

-- Location: LCCOMB_X86_Y54_N18
\PCADDING_1|z[18]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PCADDING_1|z\(18) = \PC[18]~input_o\ $ (((\PCADDING_1|c\(15) & (\PC[16]~input_o\ & \PC[17]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PCADDING_1|c\(15),
	datab => \PC[16]~input_o\,
	datac => \PC[17]~input_o\,
	datad => \PC[18]~input_o\,
	combout => \PCADDING_1|z\(18));

-- Location: LCCOMB_X86_Y54_N4
\Mux19~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux19~0_combout\ = (!\WDSEL[1]~input_o\ & ((\WDSEL[0]~input_o\ & (\WIRING_THE_ALU|Mux13~3_combout\)) # (!\WDSEL[0]~input_o\ & ((\PCADDING_1|z\(18))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Mux13~3_combout\,
	datab => \WDSEL[1]~input_o\,
	datac => \WDSEL[0]~input_o\,
	datad => \PCADDING_1|z\(18),
	combout => \Mux19~0_combout\);

-- Location: LCCOMB_X70_Y64_N28
\Mux19~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux19~1_combout\ = (\Mux19~0_combout\) # ((\WDSEL[1]~input_o\ & \Memo_READ_Data[18]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WDSEL[1]~input_o\,
	datab => \Memo_READ_Data[18]~input_o\,
	datad => \Mux19~0_combout\,
	combout => \Mux19~1_combout\);

-- Location: LCCOMB_X86_Y54_N14
\PCADDING_1|c[18]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PCADDING_1|c\(18) = (\PCADDING_1|c\(15) & (\PC[16]~input_o\ & (\PC[17]~input_o\ & \PC[18]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PCADDING_1|c\(15),
	datab => \PC[16]~input_o\,
	datac => \PC[17]~input_o\,
	datad => \PC[18]~input_o\,
	combout => \PCADDING_1|c\(18));

-- Location: LCCOMB_X71_Y54_N4
\WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit0to7|bit0123|bit23|bit0|cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit0to7|bit0123|bit23|bit0|cout~0_combout\ = (\A[18]~9_combout\ & ((\WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit0to7|bit0123|bit01|bit1|cout~0_combout\) # (\ALUFunct[3]~input_o\ $ (\Mux69~combout\)))) # 
-- (!\A[18]~9_combout\ & (\WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit0to7|bit0123|bit01|bit1|cout~0_combout\ & (\ALUFunct[3]~input_o\ $ (\Mux69~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUFunct[3]~input_o\,
	datab => \A[18]~9_combout\,
	datac => \Mux69~combout\,
	datad => \WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit0to7|bit0123|bit01|bit1|cout~0_combout\,
	combout => \WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit0to7|bit0123|bit23|bit0|cout~0_combout\);

-- Location: LCCOMB_X67_Y52_N14
\WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit0to7|bit0123|bit23|bit1|s\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit0to7|bit0123|bit23|bit1|s~combout\ = \WIRING_THE_ALU|set_a_less_b|wiring|bits19|a_eq_b~2_combout\ $ (\ALUFunct[3]~input_o\ $ 
-- (\WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit0to7|bit0123|bit23|bit0|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|set_a_less_b|wiring|bits19|a_eq_b~2_combout\,
	datac => \ALUFunct[3]~input_o\,
	datad => \WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit0to7|bit0123|bit23|bit0|cout~0_combout\,
	combout => \WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit0to7|bit0123|bit23|bit1|s~combout\);

-- Location: LCCOMB_X67_Y52_N8
\WIRING_THE_ALU|Mux12~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Mux12~2_combout\ = (\ALUFunct[2]~input_o\ & (\ALUFunct[0]~input_o\ & ((\WIRING_THE_ALU|Shifting|shifting|z[19]~58_combout\)))) # (!\ALUFunct[2]~input_o\ & ((\ALUFunct[0]~input_o\) # 
-- ((\WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit0to7|bit0123|bit23|bit1|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUFunct[2]~input_o\,
	datab => \ALUFunct[0]~input_o\,
	datac => \WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit0to7|bit0123|bit23|bit1|s~combout\,
	datad => \WIRING_THE_ALU|Shifting|shifting|z[19]~58_combout\,
	combout => \WIRING_THE_ALU|Mux12~2_combout\);

-- Location: LCCOMB_X67_Y52_N26
\WIRING_THE_ALU|Mux12~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Mux12~3_combout\ = (\WIRING_THE_ALU|Mux12~2_combout\ & (((\WIRING_THE_ALU|Shifting|shifting|z[12]~54_combout\) # (!\WIRING_THE_ALU|Mux12~0_combout\)))) # (!\WIRING_THE_ALU|Mux12~2_combout\ & 
-- (\WIRING_THE_ALU|set_a_less_b|wiring|bits19|a_eq_b~2_combout\ & (\WIRING_THE_ALU|Mux12~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|set_a_less_b|wiring|bits19|a_eq_b~2_combout\,
	datab => \WIRING_THE_ALU|Mux12~2_combout\,
	datac => \WIRING_THE_ALU|Mux12~0_combout\,
	datad => \WIRING_THE_ALU|Shifting|shifting|z[12]~54_combout\,
	combout => \WIRING_THE_ALU|Mux12~3_combout\);

-- Location: LCCOMB_X67_Y52_N12
\WIRING_THE_ALU|Mux12~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Mux12~1_combout\ = (\ALUFunct[1]~input_o\ & ((\A[19]~10_combout\ & ((\Mux71~combout\) # (!\ALUFunct[0]~input_o\))) # (!\A[19]~10_combout\ & (\Mux71~combout\ & !\ALUFunct[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[19]~10_combout\,
	datab => \Mux71~combout\,
	datac => \ALUFunct[0]~input_o\,
	datad => \ALUFunct[1]~input_o\,
	combout => \WIRING_THE_ALU|Mux12~1_combout\);

-- Location: LCCOMB_X67_Y52_N4
\WIRING_THE_ALU|Mux12~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Mux12~4_combout\ = (\WIRING_THE_ALU|Mux12~1_combout\) # ((\WIRING_THE_ALU|Mux12~3_combout\ & !\ALUFunct[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Mux12~3_combout\,
	datab => \ALUFunct[1]~input_o\,
	datad => \WIRING_THE_ALU|Mux12~1_combout\,
	combout => \WIRING_THE_ALU|Mux12~4_combout\);

-- Location: LCCOMB_X85_Y59_N8
\Mux20~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux20~0_combout\ = (\WDSEL[0]~input_o\ & (((\WIRING_THE_ALU|Mux12~4_combout\)))) # (!\WDSEL[0]~input_o\ & (\PCADDING_1|c\(18) $ (((\PC[19]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PCADDING_1|c\(18),
	datab => \WIRING_THE_ALU|Mux12~4_combout\,
	datac => \PC[19]~input_o\,
	datad => \WDSEL[0]~input_o\,
	combout => \Mux20~0_combout\);

-- Location: IOIBUF_X92_Y91_N15
\Memo_READ_Data[19]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Memo_READ_Data(19),
	o => \Memo_READ_Data[19]~input_o\);

-- Location: LCCOMB_X85_Y59_N26
\Mux20~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux20~1_combout\ = (\WDSEL[1]~input_o\ & ((\Memo_READ_Data[19]~input_o\))) # (!\WDSEL[1]~input_o\ & (\Mux20~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WDSEL[1]~input_o\,
	datac => \Mux20~0_combout\,
	datad => \Memo_READ_Data[19]~input_o\,
	combout => \Mux20~1_combout\);

-- Location: IOIBUF_X68_Y0_N8
\Memo_READ_Data[20]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Memo_READ_Data(20),
	o => \Memo_READ_Data[20]~input_o\);

-- Location: LCCOMB_X85_Y59_N20
\Mux21~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux21~0_combout\ = (!\WDSEL[0]~input_o\ & (\PC[20]~input_o\ $ (((\PCADDING_1|c\(18) & \PC[19]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PCADDING_1|c\(18),
	datab => \PC[20]~input_o\,
	datac => \PC[19]~input_o\,
	datad => \WDSEL[0]~input_o\,
	combout => \Mux21~0_combout\);

-- Location: LCCOMB_X67_Y52_N30
\WIRING_THE_ALU|Mux11~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Mux11~0_combout\ = (\ALUFunct[1]~input_o\ & ((\Mux73~combout\ & ((\A[20]~11_combout\) # (!\ALUFunct[0]~input_o\))) # (!\Mux73~combout\ & (\A[20]~11_combout\ & !\ALUFunct[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux73~combout\,
	datab => \A[20]~11_combout\,
	datac => \ALUFunct[0]~input_o\,
	datad => \ALUFunct[1]~input_o\,
	combout => \WIRING_THE_ALU|Mux11~0_combout\);

-- Location: LCCOMB_X67_Y52_N24
\WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit0to7|bit0123|bit23|bit1|cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit0to7|bit0123|bit23|bit1|cout~0_combout\ = (\A[19]~10_combout\ & ((\WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit0to7|bit0123|bit23|bit0|cout~0_combout\) # (\Mux71~combout\ $ (\ALUFunct[3]~input_o\)))) 
-- # (!\A[19]~10_combout\ & (\WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit0to7|bit0123|bit23|bit0|cout~0_combout\ & (\Mux71~combout\ $ (\ALUFunct[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[19]~10_combout\,
	datab => \Mux71~combout\,
	datac => \ALUFunct[3]~input_o\,
	datad => \WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit0to7|bit0123|bit23|bit0|cout~0_combout\,
	combout => \WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit0to7|bit0123|bit23|bit1|cout~0_combout\);

-- Location: LCCOMB_X67_Y52_N2
\WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit0to7|bit4567|bit01|bit0|s\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit0to7|bit4567|bit01|bit0|s~combout\ = \ALUFunct[3]~input_o\ $ (\WIRING_THE_ALU|set_a_less_b|wiring|bits20|a_eq_b~2_combout\ $ 
-- (\WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit0to7|bit0123|bit23|bit1|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALUFunct[3]~input_o\,
	datac => \WIRING_THE_ALU|set_a_less_b|wiring|bits20|a_eq_b~2_combout\,
	datad => \WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit0to7|bit0123|bit23|bit1|cout~0_combout\,
	combout => \WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit0to7|bit4567|bit01|bit0|s~combout\);

-- Location: LCCOMB_X68_Y51_N12
\WIRING_THE_ALU|Mux11~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Mux11~1_combout\ = (\ALUFunct[2]~input_o\ & (\WIRING_THE_ALU|Shifting|shifting|z[20]~52_combout\ & (\ALUFunct[0]~input_o\))) # (!\ALUFunct[2]~input_o\ & (((\ALUFunct[0]~input_o\) # 
-- (\WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit0to7|bit4567|bit01|bit0|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Shifting|shifting|z[20]~52_combout\,
	datab => \ALUFunct[2]~input_o\,
	datac => \ALUFunct[0]~input_o\,
	datad => \WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit0to7|bit4567|bit01|bit0|s~combout\,
	combout => \WIRING_THE_ALU|Mux11~1_combout\);

-- Location: LCCOMB_X68_Y51_N22
\WIRING_THE_ALU|Mux11~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Mux11~2_combout\ = (\WIRING_THE_ALU|Mux12~0_combout\ & ((\WIRING_THE_ALU|Mux11~1_combout\ & (\WIRING_THE_ALU|Shifting|shifting|z[11]~48_combout\)) # (!\WIRING_THE_ALU|Mux11~1_combout\ & 
-- ((\WIRING_THE_ALU|set_a_less_b|wiring|bits20|a_eq_b~2_combout\))))) # (!\WIRING_THE_ALU|Mux12~0_combout\ & (((\WIRING_THE_ALU|Mux11~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Shifting|shifting|z[11]~48_combout\,
	datab => \WIRING_THE_ALU|Mux12~0_combout\,
	datac => \WIRING_THE_ALU|set_a_less_b|wiring|bits20|a_eq_b~2_combout\,
	datad => \WIRING_THE_ALU|Mux11~1_combout\,
	combout => \WIRING_THE_ALU|Mux11~2_combout\);

-- Location: LCCOMB_X68_Y51_N24
\WIRING_THE_ALU|Mux11~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Mux11~3_combout\ = (\WIRING_THE_ALU|Mux11~0_combout\) # ((\WIRING_THE_ALU|Mux11~2_combout\ & !\ALUFunct[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Mux11~0_combout\,
	datac => \WIRING_THE_ALU|Mux11~2_combout\,
	datad => \ALUFunct[1]~input_o\,
	combout => \WIRING_THE_ALU|Mux11~3_combout\);

-- Location: LCCOMB_X85_Y59_N30
\Mux21~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux21~1_combout\ = (!\WDSEL[1]~input_o\ & ((\Mux21~0_combout\) # ((\WDSEL[0]~input_o\ & \WIRING_THE_ALU|Mux11~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WDSEL[0]~input_o\,
	datab => \Mux21~0_combout\,
	datac => \WIRING_THE_ALU|Mux11~3_combout\,
	datad => \WDSEL[1]~input_o\,
	combout => \Mux21~1_combout\);

-- Location: LCCOMB_X68_Y55_N12
\Mux21~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux21~2_combout\ = (\Mux21~1_combout\) # ((\Memo_READ_Data[20]~input_o\ & \WDSEL[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Memo_READ_Data[20]~input_o\,
	datac => \WDSEL[1]~input_o\,
	datad => \Mux21~1_combout\,
	combout => \Mux21~2_combout\);

-- Location: IOIBUF_X117_Y83_N1
\Memo_READ_Data[21]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Memo_READ_Data(21),
	o => \Memo_READ_Data[21]~input_o\);

-- Location: LCCOMB_X85_Y59_N16
\PCADDING_1|z[21]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PCADDING_1|z\(21) = \PC[21]~input_o\ $ (((\PCADDING_1|c\(18) & (\PC[19]~input_o\ & \PC[20]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PCADDING_1|c\(18),
	datab => \PC[21]~input_o\,
	datac => \PC[19]~input_o\,
	datad => \PC[20]~input_o\,
	combout => \PCADDING_1|z\(21));

-- Location: LCCOMB_X66_Y52_N4
\WIRING_THE_ALU|Mux10~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Mux10~0_combout\ = (\ALUFunct[1]~input_o\ & ((\Mux75~combout\ & ((\A[21]~12_combout\) # (!\ALUFunct[0]~input_o\))) # (!\Mux75~combout\ & (!\ALUFunct[0]~input_o\ & \A[21]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUFunct[1]~input_o\,
	datab => \Mux75~combout\,
	datac => \ALUFunct[0]~input_o\,
	datad => \A[21]~12_combout\,
	combout => \WIRING_THE_ALU|Mux10~0_combout\);

-- Location: LCCOMB_X67_Y52_N20
\WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit0to7|bit4567|bit01|bit0|cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit0to7|bit4567|bit01|bit0|cout~0_combout\ = (\A[20]~11_combout\ & ((\WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit0to7|bit0123|bit23|bit1|cout~0_combout\) # (\Mux73~combout\ $ (\ALUFunct[3]~input_o\)))) 
-- # (!\A[20]~11_combout\ & (\WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit0to7|bit0123|bit23|bit1|cout~0_combout\ & (\Mux73~combout\ $ (\ALUFunct[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux73~combout\,
	datab => \ALUFunct[3]~input_o\,
	datac => \A[20]~11_combout\,
	datad => \WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit0to7|bit0123|bit23|bit1|cout~0_combout\,
	combout => \WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit0to7|bit4567|bit01|bit0|cout~0_combout\);

-- Location: LCCOMB_X68_Y52_N0
\WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit0to7|bit4567|bit01|bit1|s\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit0to7|bit4567|bit01|bit1|s~combout\ = \ALUFunct[3]~input_o\ $ (\WIRING_THE_ALU|set_a_less_b|wiring|bits21|a_eq_b~2_combout\ $ 
-- (\WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit0to7|bit4567|bit01|bit0|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALUFunct[3]~input_o\,
	datac => \WIRING_THE_ALU|set_a_less_b|wiring|bits21|a_eq_b~2_combout\,
	datad => \WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit0to7|bit4567|bit01|bit0|cout~0_combout\,
	combout => \WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit0to7|bit4567|bit01|bit1|s~combout\);

-- Location: LCCOMB_X68_Y52_N18
\WIRING_THE_ALU|Mux10~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Mux10~1_combout\ = (\ALUFunct[0]~input_o\ & (((\WIRING_THE_ALU|Shifting|shifting|z[21]~46_combout\) # (!\ALUFunct[2]~input_o\)))) # (!\ALUFunct[0]~input_o\ & 
-- (\WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit0to7|bit4567|bit01|bit1|s~combout\ & ((!\ALUFunct[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUFunct[0]~input_o\,
	datab => \WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit0to7|bit4567|bit01|bit1|s~combout\,
	datac => \WIRING_THE_ALU|Shifting|shifting|z[21]~46_combout\,
	datad => \ALUFunct[2]~input_o\,
	combout => \WIRING_THE_ALU|Mux10~1_combout\);

-- Location: LCCOMB_X68_Y52_N28
\WIRING_THE_ALU|Mux10~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Mux10~2_combout\ = (\WIRING_THE_ALU|Mux10~1_combout\ & (((\WIRING_THE_ALU|Shifting|shifting|z[10]~42_combout\)) # (!\WIRING_THE_ALU|Mux12~0_combout\))) # (!\WIRING_THE_ALU|Mux10~1_combout\ & (\WIRING_THE_ALU|Mux12~0_combout\ & 
-- (\WIRING_THE_ALU|set_a_less_b|wiring|bits21|a_eq_b~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Mux10~1_combout\,
	datab => \WIRING_THE_ALU|Mux12~0_combout\,
	datac => \WIRING_THE_ALU|set_a_less_b|wiring|bits21|a_eq_b~2_combout\,
	datad => \WIRING_THE_ALU|Shifting|shifting|z[10]~42_combout\,
	combout => \WIRING_THE_ALU|Mux10~2_combout\);

-- Location: LCCOMB_X86_Y59_N22
\WIRING_THE_ALU|Mux10~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Mux10~3_combout\ = (\WIRING_THE_ALU|Mux10~0_combout\) # ((!\ALUFunct[1]~input_o\ & \WIRING_THE_ALU|Mux10~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Mux10~0_combout\,
	datac => \ALUFunct[1]~input_o\,
	datad => \WIRING_THE_ALU|Mux10~2_combout\,
	combout => \WIRING_THE_ALU|Mux10~3_combout\);

-- Location: LCCOMB_X86_Y59_N12
\Mux22~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux22~0_combout\ = (!\WDSEL[1]~input_o\ & ((\WDSEL[0]~input_o\ & ((\WIRING_THE_ALU|Mux10~3_combout\))) # (!\WDSEL[0]~input_o\ & (\PCADDING_1|z\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PCADDING_1|z\(21),
	datab => \WDSEL[1]~input_o\,
	datac => \WIRING_THE_ALU|Mux10~3_combout\,
	datad => \WDSEL[0]~input_o\,
	combout => \Mux22~0_combout\);

-- Location: LCCOMB_X86_Y59_N14
\Mux22~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux22~1_combout\ = (\Mux22~0_combout\) # ((\WDSEL[1]~input_o\ & \Memo_READ_Data[21]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WDSEL[1]~input_o\,
	datac => \Memo_READ_Data[21]~input_o\,
	datad => \Mux22~0_combout\,
	combout => \Mux22~1_combout\);

-- Location: IOIBUF_X68_Y0_N22
\Memo_READ_Data[22]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Memo_READ_Data(22),
	o => \Memo_READ_Data[22]~input_o\);

-- Location: LCCOMB_X66_Y52_N22
\WIRING_THE_ALU|Mux9~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Mux9~0_combout\ = (\ALUFunct[1]~input_o\ & ((\Mux77~combout\ & ((\A[22]~13_combout\) # (!\ALUFunct[0]~input_o\))) # (!\Mux77~combout\ & (\A[22]~13_combout\ & !\ALUFunct[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux77~combout\,
	datab => \A[22]~13_combout\,
	datac => \ALUFunct[0]~input_o\,
	datad => \ALUFunct[1]~input_o\,
	combout => \WIRING_THE_ALU|Mux9~0_combout\);

-- Location: LCCOMB_X66_Y52_N8
\WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit0to7|bit4567|bit01|bit1|cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit0to7|bit4567|bit01|bit1|cout~0_combout\ = (\WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit0to7|bit4567|bit01|bit0|cout~0_combout\ & ((\A[21]~12_combout\) # (\ALUFunct[3]~input_o\ $ (\Mux75~combout\)))) 
-- # (!\WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit0to7|bit4567|bit01|bit0|cout~0_combout\ & (\A[21]~12_combout\ & (\ALUFunct[3]~input_o\ $ (\Mux75~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit0to7|bit4567|bit01|bit0|cout~0_combout\,
	datab => \A[21]~12_combout\,
	datac => \ALUFunct[3]~input_o\,
	datad => \Mux75~combout\,
	combout => \WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit0to7|bit4567|bit01|bit1|cout~0_combout\);

-- Location: LCCOMB_X66_Y52_N26
\WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit0to7|bit4567|bit23|bit0|s\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit0to7|bit4567|bit23|bit0|s~combout\ = \WIRING_THE_ALU|set_a_less_b|wiring|bits22|a_eq_b~2_combout\ $ (\ALUFunct[3]~input_o\ $ 
-- (\WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit0to7|bit4567|bit01|bit1|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WIRING_THE_ALU|set_a_less_b|wiring|bits22|a_eq_b~2_combout\,
	datac => \ALUFunct[3]~input_o\,
	datad => \WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit0to7|bit4567|bit01|bit1|cout~0_combout\,
	combout => \WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit0to7|bit4567|bit23|bit0|s~combout\);

-- Location: LCCOMB_X66_Y52_N12
\WIRING_THE_ALU|Mux9~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Mux9~1_combout\ = (\ALUFunct[2]~input_o\ & (((\ALUFunct[0]~input_o\ & \WIRING_THE_ALU|Shifting|shifting|z[22]~41_combout\)))) # (!\ALUFunct[2]~input_o\ & 
-- ((\WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit0to7|bit4567|bit23|bit0|s~combout\) # ((\ALUFunct[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit0to7|bit4567|bit23|bit0|s~combout\,
	datab => \ALUFunct[2]~input_o\,
	datac => \ALUFunct[0]~input_o\,
	datad => \WIRING_THE_ALU|Shifting|shifting|z[22]~41_combout\,
	combout => \WIRING_THE_ALU|Mux9~1_combout\);

-- Location: LCCOMB_X66_Y52_N6
\WIRING_THE_ALU|Mux9~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Mux9~2_combout\ = (\WIRING_THE_ALU|Mux9~1_combout\ & (((\WIRING_THE_ALU|Shifting|shifting|z[9]~39_combout\) # (!\WIRING_THE_ALU|Mux12~0_combout\)))) # (!\WIRING_THE_ALU|Mux9~1_combout\ & 
-- (\WIRING_THE_ALU|set_a_less_b|wiring|bits22|a_eq_b~2_combout\ & ((\WIRING_THE_ALU|Mux12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Mux9~1_combout\,
	datab => \WIRING_THE_ALU|set_a_less_b|wiring|bits22|a_eq_b~2_combout\,
	datac => \WIRING_THE_ALU|Shifting|shifting|z[9]~39_combout\,
	datad => \WIRING_THE_ALU|Mux12~0_combout\,
	combout => \WIRING_THE_ALU|Mux9~2_combout\);

-- Location: LCCOMB_X66_Y52_N24
\WIRING_THE_ALU|Mux9~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Mux9~3_combout\ = (\WIRING_THE_ALU|Mux9~0_combout\) # ((!\ALUFunct[1]~input_o\ & \WIRING_THE_ALU|Mux9~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Mux9~0_combout\,
	datab => \ALUFunct[1]~input_o\,
	datad => \WIRING_THE_ALU|Mux9~2_combout\,
	combout => \WIRING_THE_ALU|Mux9~3_combout\);

-- Location: LCCOMB_X85_Y59_N18
\PCADDING_1|c[21]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PCADDING_1|c\(21) = (\PCADDING_1|c\(18) & (\PC[21]~input_o\ & (\PC[19]~input_o\ & \PC[20]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PCADDING_1|c\(18),
	datab => \PC[21]~input_o\,
	datac => \PC[19]~input_o\,
	datad => \PC[20]~input_o\,
	combout => \PCADDING_1|c\(21));

-- Location: LCCOMB_X84_Y59_N16
\Mux23~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux23~0_combout\ = (\WDSEL[0]~input_o\ & (\WIRING_THE_ALU|Mux9~3_combout\)) # (!\WDSEL[0]~input_o\ & ((\PCADDING_1|c\(21) $ (\PC[22]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Mux9~3_combout\,
	datab => \PCADDING_1|c\(21),
	datac => \WDSEL[0]~input_o\,
	datad => \PC[22]~input_o\,
	combout => \Mux23~0_combout\);

-- Location: LCCOMB_X68_Y55_N22
\Mux23~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux23~1_combout\ = (\WDSEL[1]~input_o\ & (\Memo_READ_Data[22]~input_o\)) # (!\WDSEL[1]~input_o\ & ((\Mux23~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Memo_READ_Data[22]~input_o\,
	datac => \WDSEL[1]~input_o\,
	datad => \Mux23~0_combout\,
	combout => \Mux23~1_combout\);

-- Location: LCCOMB_X66_Y52_N18
\WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit0to7|bit4567|bit23|bit0|cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit0to7|bit4567|bit23|bit0|cout~0_combout\ = (\WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit0to7|bit4567|bit01|bit1|cout~0_combout\ & ((\A[22]~13_combout\) # (\ALUFunct[3]~input_o\ $ (\Mux77~combout\)))) 
-- # (!\WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit0to7|bit4567|bit01|bit1|cout~0_combout\ & (\A[22]~13_combout\ & (\ALUFunct[3]~input_o\ $ (\Mux77~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit0to7|bit4567|bit01|bit1|cout~0_combout\,
	datab => \ALUFunct[3]~input_o\,
	datac => \Mux77~combout\,
	datad => \A[22]~13_combout\,
	combout => \WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit0to7|bit4567|bit23|bit0|cout~0_combout\);

-- Location: LCCOMB_X66_Y53_N26
\WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit0to7|bit4567|bit23|bit1|s\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit0to7|bit4567|bit23|bit1|s~combout\ = \WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit0to7|bit4567|bit23|bit0|cout~0_combout\ $ (\ALUFunct[3]~input_o\ $ 
-- (\WIRING_THE_ALU|set_a_less_b|wiring|bits23|a_eq_b~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit0to7|bit4567|bit23|bit0|cout~0_combout\,
	datac => \ALUFunct[3]~input_o\,
	datad => \WIRING_THE_ALU|set_a_less_b|wiring|bits23|a_eq_b~2_combout\,
	combout => \WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit0to7|bit4567|bit23|bit1|s~combout\);

-- Location: LCCOMB_X66_Y53_N4
\WIRING_THE_ALU|Mux8~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Mux8~1_combout\ = (\ALUFunct[2]~input_o\ & (\ALUFunct[0]~input_o\ & ((\WIRING_THE_ALU|Shifting|shifting|z[23]~38_combout\)))) # (!\ALUFunct[2]~input_o\ & ((\ALUFunct[0]~input_o\) # 
-- ((\WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit0to7|bit4567|bit23|bit1|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUFunct[2]~input_o\,
	datab => \ALUFunct[0]~input_o\,
	datac => \WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit0to7|bit4567|bit23|bit1|s~combout\,
	datad => \WIRING_THE_ALU|Shifting|shifting|z[23]~38_combout\,
	combout => \WIRING_THE_ALU|Mux8~1_combout\);

-- Location: LCCOMB_X66_Y53_N30
\WIRING_THE_ALU|Mux8~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Mux8~2_combout\ = (\WIRING_THE_ALU|Mux12~0_combout\ & ((\WIRING_THE_ALU|Mux8~1_combout\ & (\WIRING_THE_ALU|Shifting|shifting|z[8]~35_combout\)) # (!\WIRING_THE_ALU|Mux8~1_combout\ & 
-- ((\WIRING_THE_ALU|set_a_less_b|wiring|bits23|a_eq_b~2_combout\))))) # (!\WIRING_THE_ALU|Mux12~0_combout\ & (\WIRING_THE_ALU|Mux8~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Mux12~0_combout\,
	datab => \WIRING_THE_ALU|Mux8~1_combout\,
	datac => \WIRING_THE_ALU|Shifting|shifting|z[8]~35_combout\,
	datad => \WIRING_THE_ALU|set_a_less_b|wiring|bits23|a_eq_b~2_combout\,
	combout => \WIRING_THE_ALU|Mux8~2_combout\);

-- Location: LCCOMB_X66_Y53_N24
\WIRING_THE_ALU|Mux8~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Mux8~0_combout\ = (\ALUFunct[1]~input_o\ & ((\Mux79~combout\ & ((\A[23]~14_combout\) # (!\ALUFunct[0]~input_o\))) # (!\Mux79~combout\ & (!\ALUFunct[0]~input_o\ & \A[23]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux79~combout\,
	datab => \ALUFunct[0]~input_o\,
	datac => \ALUFunct[1]~input_o\,
	datad => \A[23]~14_combout\,
	combout => \WIRING_THE_ALU|Mux8~0_combout\);

-- Location: LCCOMB_X66_Y53_N16
\WIRING_THE_ALU|Mux8~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Mux8~3_combout\ = (\WIRING_THE_ALU|Mux8~0_combout\) # ((\WIRING_THE_ALU|Mux8~2_combout\ & !\ALUFunct[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Mux8~2_combout\,
	datab => \WIRING_THE_ALU|Mux8~0_combout\,
	datac => \ALUFunct[1]~input_o\,
	combout => \WIRING_THE_ALU|Mux8~3_combout\);

-- Location: LCCOMB_X84_Y59_N26
\Mux24~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux24~0_combout\ = (!\WDSEL[0]~input_o\ & (\PC[23]~input_o\ $ (((\PC[22]~input_o\ & \PCADDING_1|c\(21))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[22]~input_o\,
	datab => \PC[23]~input_o\,
	datac => \WDSEL[0]~input_o\,
	datad => \PCADDING_1|c\(21),
	combout => \Mux24~0_combout\);

-- Location: LCCOMB_X84_Y59_N4
\Mux24~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux24~1_combout\ = (!\WDSEL[1]~input_o\ & ((\Mux24~0_combout\) # ((\WDSEL[0]~input_o\ & \WIRING_THE_ALU|Mux8~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WDSEL[0]~input_o\,
	datab => \WIRING_THE_ALU|Mux8~3_combout\,
	datac => \Mux24~0_combout\,
	datad => \WDSEL[1]~input_o\,
	combout => \Mux24~1_combout\);

-- Location: IOIBUF_X84_Y91_N1
\Memo_READ_Data[23]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Memo_READ_Data(23),
	o => \Memo_READ_Data[23]~input_o\);

-- Location: LCCOMB_X84_Y59_N6
\Mux24~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux24~2_combout\ = (\Mux24~1_combout\) # ((\WDSEL[1]~input_o\ & \Memo_READ_Data[23]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WDSEL[1]~input_o\,
	datac => \Mux24~1_combout\,
	datad => \Memo_READ_Data[23]~input_o\,
	combout => \Mux24~2_combout\);

-- Location: IOIBUF_X117_Y66_N8
\Memo_READ_Data[24]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Memo_READ_Data(24),
	o => \Memo_READ_Data[24]~input_o\);

-- Location: LCCOMB_X84_Y59_N24
\PCADDING_1|z[24]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PCADDING_1|z\(24) = \PC[24]~input_o\ $ (((\PC[22]~input_o\ & (\PC[23]~input_o\ & \PCADDING_1|c\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[22]~input_o\,
	datab => \PC[24]~input_o\,
	datac => \PC[23]~input_o\,
	datad => \PCADDING_1|c\(21),
	combout => \PCADDING_1|z\(24));

-- Location: LCCOMB_X66_Y53_N18
\WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit0to7|bit4567|bit23|bit1|cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit0to7|bit4567|bit23|bit1|cout~0_combout\ = (\WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit0to7|bit4567|bit23|bit0|cout~0_combout\ & ((\A[23]~14_combout\) # (\Mux79~combout\ $ (\ALUFunct[3]~input_o\)))) 
-- # (!\WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit0to7|bit4567|bit23|bit0|cout~0_combout\ & (\A[23]~14_combout\ & (\Mux79~combout\ $ (\ALUFunct[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit0to7|bit4567|bit23|bit0|cout~0_combout\,
	datab => \Mux79~combout\,
	datac => \ALUFunct[3]~input_o\,
	datad => \A[23]~14_combout\,
	combout => \WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit0to7|bit4567|bit23|bit1|cout~0_combout\);

-- Location: LCCOMB_X70_Y58_N20
\WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit8toF|bit0123|bit01|bit0|s\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit8toF|bit0123|bit01|bit0|s~combout\ = \WIRING_THE_ALU|set_a_less_b|wiring|bits24|a_eq_b~2_combout\ $ (\WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit0to7|bit4567|bit23|bit1|cout~0_combout\ $ 
-- (\ALUFunct[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|set_a_less_b|wiring|bits24|a_eq_b~2_combout\,
	datac => \WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit0to7|bit4567|bit23|bit1|cout~0_combout\,
	datad => \ALUFunct[3]~input_o\,
	combout => \WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit8toF|bit0123|bit01|bit0|s~combout\);

-- Location: LCCOMB_X70_Y58_N14
\WIRING_THE_ALU|Mux7~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Mux7~1_combout\ = (\ALUFunct[2]~input_o\ & (\WIRING_THE_ALU|Shifting|shifting|z[24]~74_combout\ & (\ALUFunct[0]~input_o\))) # (!\ALUFunct[2]~input_o\ & (((\ALUFunct[0]~input_o\) # 
-- (\WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit8toF|bit0123|bit01|bit0|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Shifting|shifting|z[24]~74_combout\,
	datab => \ALUFunct[2]~input_o\,
	datac => \ALUFunct[0]~input_o\,
	datad => \WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit8toF|bit0123|bit01|bit0|s~combout\,
	combout => \WIRING_THE_ALU|Mux7~1_combout\);

-- Location: LCCOMB_X70_Y58_N0
\WIRING_THE_ALU|Mux7~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Mux7~2_combout\ = (\WIRING_THE_ALU|Mux12~0_combout\ & ((\WIRING_THE_ALU|Mux7~1_combout\ & (\WIRING_THE_ALU|Shifting|shifting|z[7]~33_combout\)) # (!\WIRING_THE_ALU|Mux7~1_combout\ & 
-- ((\WIRING_THE_ALU|set_a_less_b|wiring|bits24|a_eq_b~2_combout\))))) # (!\WIRING_THE_ALU|Mux12~0_combout\ & (((\WIRING_THE_ALU|Mux7~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Shifting|shifting|z[7]~33_combout\,
	datab => \WIRING_THE_ALU|Mux12~0_combout\,
	datac => \WIRING_THE_ALU|Mux7~1_combout\,
	datad => \WIRING_THE_ALU|set_a_less_b|wiring|bits24|a_eq_b~2_combout\,
	combout => \WIRING_THE_ALU|Mux7~2_combout\);

-- Location: LCCOMB_X70_Y58_N2
\WIRING_THE_ALU|Mux7~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Mux7~0_combout\ = (\ALUFunct[1]~input_o\ & ((\ALUFunct[0]~input_o\ & (\A[24]~3_combout\ & \Mux81~combout\)) # (!\ALUFunct[0]~input_o\ & ((\A[24]~3_combout\) # (\Mux81~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUFunct[0]~input_o\,
	datab => \A[24]~3_combout\,
	datac => \ALUFunct[1]~input_o\,
	datad => \Mux81~combout\,
	combout => \WIRING_THE_ALU|Mux7~0_combout\);

-- Location: LCCOMB_X70_Y58_N26
\WIRING_THE_ALU|Mux7~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Mux7~3_combout\ = (\WIRING_THE_ALU|Mux7~0_combout\) # ((\WIRING_THE_ALU|Mux7~2_combout\ & !\ALUFunct[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WIRING_THE_ALU|Mux7~2_combout\,
	datac => \ALUFunct[1]~input_o\,
	datad => \WIRING_THE_ALU|Mux7~0_combout\,
	combout => \WIRING_THE_ALU|Mux7~3_combout\);

-- Location: LCCOMB_X86_Y59_N24
\Mux25~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux25~0_combout\ = (!\WDSEL[1]~input_o\ & ((\WDSEL[0]~input_o\ & ((\WIRING_THE_ALU|Mux7~3_combout\))) # (!\WDSEL[0]~input_o\ & (\PCADDING_1|z\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WDSEL[0]~input_o\,
	datab => \WDSEL[1]~input_o\,
	datac => \PCADDING_1|z\(24),
	datad => \WIRING_THE_ALU|Mux7~3_combout\,
	combout => \Mux25~0_combout\);

-- Location: LCCOMB_X86_Y59_N18
\Mux25~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux25~1_combout\ = (\Mux25~0_combout\) # ((\WDSEL[1]~input_o\ & \Memo_READ_Data[24]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WDSEL[1]~input_o\,
	datac => \Memo_READ_Data[24]~input_o\,
	datad => \Mux25~0_combout\,
	combout => \Mux25~1_combout\);

-- Location: LCCOMB_X70_Y58_N28
\WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit8toF|bit0123|bit01|bit0|cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit8toF|bit0123|bit01|bit0|cout~0_combout\ = (\A[24]~3_combout\ & ((\WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit0to7|bit4567|bit23|bit1|cout~0_combout\) # (\ALUFunct[3]~input_o\ $ (\Mux81~combout\)))) # 
-- (!\A[24]~3_combout\ & (\WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit0to7|bit4567|bit23|bit1|cout~0_combout\ & (\ALUFunct[3]~input_o\ $ (\Mux81~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[24]~3_combout\,
	datab => \ALUFunct[3]~input_o\,
	datac => \WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit0to7|bit4567|bit23|bit1|cout~0_combout\,
	datad => \Mux81~combout\,
	combout => \WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit8toF|bit0123|bit01|bit0|cout~0_combout\);

-- Location: LCCOMB_X70_Y58_N30
\WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit8toF|bit0123|bit01|bit1|s\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit8toF|bit0123|bit01|bit1|s~combout\ = \Mux83~combout\ $ (\ALUFunct[3]~input_o\ $ (\A[25]~4_combout\ $ (\WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit8toF|bit0123|bit01|bit0|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux83~combout\,
	datab => \ALUFunct[3]~input_o\,
	datac => \A[25]~4_combout\,
	datad => \WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit8toF|bit0123|bit01|bit0|cout~0_combout\,
	combout => \WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit8toF|bit0123|bit01|bit1|s~combout\);

-- Location: LCCOMB_X70_Y57_N26
\WIRING_THE_ALU|Mux6~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Mux6~1_combout\ = (\ALUFunct[0]~input_o\ & ((\WIRING_THE_ALU|Shifting|shifting|z[25]~32_combout\) # ((!\ALUFunct[2]~input_o\)))) # (!\ALUFunct[0]~input_o\ & 
-- (((\WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit8toF|bit0123|bit01|bit1|s~combout\ & !\ALUFunct[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Shifting|shifting|z[25]~32_combout\,
	datab => \ALUFunct[0]~input_o\,
	datac => \WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit8toF|bit0123|bit01|bit1|s~combout\,
	datad => \ALUFunct[2]~input_o\,
	combout => \WIRING_THE_ALU|Mux6~1_combout\);

-- Location: LCCOMB_X70_Y58_N22
\WIRING_THE_ALU|set_a_less_b|wiring|bits25|a_eq_b~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|set_a_less_b|wiring|bits25|a_eq_b~2_combout\ = \Mux83~combout\ $ (((\ASEL~input_o\ & (\immU_J[25]~input_o\)) # (!\ASEL~input_o\ & ((\rs1[25]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \immU_J[25]~input_o\,
	datab => \ASEL~input_o\,
	datac => \rs1[25]~input_o\,
	datad => \Mux83~combout\,
	combout => \WIRING_THE_ALU|set_a_less_b|wiring|bits25|a_eq_b~2_combout\);

-- Location: LCCOMB_X70_Y57_N4
\WIRING_THE_ALU|Mux6~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Mux6~2_combout\ = (\WIRING_THE_ALU|Mux6~1_combout\ & ((\WIRING_THE_ALU|Shifting|shifting|z[6]~29_combout\) # ((!\WIRING_THE_ALU|Mux12~0_combout\)))) # (!\WIRING_THE_ALU|Mux6~1_combout\ & 
-- (((\WIRING_THE_ALU|set_a_less_b|wiring|bits25|a_eq_b~2_combout\ & \WIRING_THE_ALU|Mux12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Mux6~1_combout\,
	datab => \WIRING_THE_ALU|Shifting|shifting|z[6]~29_combout\,
	datac => \WIRING_THE_ALU|set_a_less_b|wiring|bits25|a_eq_b~2_combout\,
	datad => \WIRING_THE_ALU|Mux12~0_combout\,
	combout => \WIRING_THE_ALU|Mux6~2_combout\);

-- Location: LCCOMB_X70_Y64_N12
\WIRING_THE_ALU|Mux6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Mux6~0_combout\ = (\ALUFunct[1]~input_o\ & ((\A[25]~4_combout\ & ((\Mux83~combout\) # (!\ALUFunct[0]~input_o\))) # (!\A[25]~4_combout\ & (!\ALUFunct[0]~input_o\ & \Mux83~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[25]~4_combout\,
	datab => \ALUFunct[1]~input_o\,
	datac => \ALUFunct[0]~input_o\,
	datad => \Mux83~combout\,
	combout => \WIRING_THE_ALU|Mux6~0_combout\);

-- Location: LCCOMB_X70_Y64_N22
\Mux26~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux26~0_combout\ = (\WDSEL[0]~input_o\ & ((\WIRING_THE_ALU|Mux6~0_combout\) # ((\WIRING_THE_ALU|Mux6~2_combout\ & !\ALUFunct[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Mux6~2_combout\,
	datab => \ALUFunct[1]~input_o\,
	datac => \WDSEL[0]~input_o\,
	datad => \WIRING_THE_ALU|Mux6~0_combout\,
	combout => \Mux26~0_combout\);

-- Location: LCCOMB_X84_Y59_N2
\PCADDING_1|c[24]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PCADDING_1|c\(24) = (\PC[22]~input_o\ & (\PC[24]~input_o\ & (\PC[23]~input_o\ & \PCADDING_1|c\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[22]~input_o\,
	datab => \PC[24]~input_o\,
	datac => \PC[23]~input_o\,
	datad => \PCADDING_1|c\(21),
	combout => \PCADDING_1|c\(24));

-- Location: LCCOMB_X70_Y65_N8
\Mux26~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux26~1_combout\ = (!\WDSEL[0]~input_o\ & (\PCADDING_1|c\(24) $ (\PC[25]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WDSEL[0]~input_o\,
	datac => \PCADDING_1|c\(24),
	datad => \PC[25]~input_o\,
	combout => \Mux26~1_combout\);

-- Location: IOIBUF_X117_Y64_N8
\Memo_READ_Data[25]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Memo_READ_Data(25),
	o => \Memo_READ_Data[25]~input_o\);

-- Location: LCCOMB_X70_Y64_N8
\Mux26~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux26~2_combout\ = (\WDSEL[1]~input_o\ & (((\Memo_READ_Data[25]~input_o\)))) # (!\WDSEL[1]~input_o\ & ((\Mux26~0_combout\) # ((\Mux26~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux26~0_combout\,
	datab => \Mux26~1_combout\,
	datac => \WDSEL[1]~input_o\,
	datad => \Memo_READ_Data[25]~input_o\,
	combout => \Mux26~2_combout\);

-- Location: IOIBUF_X37_Y91_N15
\Memo_READ_Data[26]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Memo_READ_Data(26),
	o => \Memo_READ_Data[26]~input_o\);

-- Location: LCCOMB_X70_Y58_N8
\WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit8toF|bit0123|bit01|bit1|cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit8toF|bit0123|bit01|bit1|cout~0_combout\ = (\A[25]~4_combout\ & ((\WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit8toF|bit0123|bit01|bit0|cout~0_combout\) # (\Mux83~combout\ $ (\ALUFunct[3]~input_o\)))) # 
-- (!\A[25]~4_combout\ & (\WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit8toF|bit0123|bit01|bit0|cout~0_combout\ & (\Mux83~combout\ $ (\ALUFunct[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux83~combout\,
	datab => \ALUFunct[3]~input_o\,
	datac => \A[25]~4_combout\,
	datad => \WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit8toF|bit0123|bit01|bit0|cout~0_combout\,
	combout => \WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit8toF|bit0123|bit01|bit1|cout~0_combout\);

-- Location: LCCOMB_X70_Y58_N10
\WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit8toF|bit0123|bit23|bit0|s\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit8toF|bit0123|bit23|bit0|s~combout\ = \WIRING_THE_ALU|set_a_less_b|wiring|bits26|a_eq_b~2_combout\ $ (\ALUFunct[3]~input_o\ $ 
-- (\WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit8toF|bit0123|bit01|bit1|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|set_a_less_b|wiring|bits26|a_eq_b~2_combout\,
	datab => \ALUFunct[3]~input_o\,
	datac => \WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit8toF|bit0123|bit01|bit1|cout~0_combout\,
	combout => \WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit8toF|bit0123|bit23|bit0|s~combout\);

-- Location: LCCOMB_X69_Y53_N4
\WIRING_THE_ALU|Mux5~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Mux5~1_combout\ = (\ALUFunct[2]~input_o\ & (((\ALUFunct[0]~input_o\ & \WIRING_THE_ALU|Shifting|shifting|z[26]~28_combout\)))) # (!\ALUFunct[2]~input_o\ & 
-- ((\WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit8toF|bit0123|bit23|bit0|s~combout\) # ((\ALUFunct[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUFunct[2]~input_o\,
	datab => \WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit8toF|bit0123|bit23|bit0|s~combout\,
	datac => \ALUFunct[0]~input_o\,
	datad => \WIRING_THE_ALU|Shifting|shifting|z[26]~28_combout\,
	combout => \WIRING_THE_ALU|Mux5~1_combout\);

-- Location: LCCOMB_X69_Y53_N22
\WIRING_THE_ALU|Mux5~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Mux5~2_combout\ = (\WIRING_THE_ALU|Mux12~0_combout\ & ((\WIRING_THE_ALU|Mux5~1_combout\ & (\WIRING_THE_ALU|Shifting|shifting|z[5]~25_combout\)) # (!\WIRING_THE_ALU|Mux5~1_combout\ & 
-- ((\WIRING_THE_ALU|set_a_less_b|wiring|bits26|a_eq_b~2_combout\))))) # (!\WIRING_THE_ALU|Mux12~0_combout\ & (((\WIRING_THE_ALU|Mux5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Mux12~0_combout\,
	datab => \WIRING_THE_ALU|Shifting|shifting|z[5]~25_combout\,
	datac => \WIRING_THE_ALU|Mux5~1_combout\,
	datad => \WIRING_THE_ALU|set_a_less_b|wiring|bits26|a_eq_b~2_combout\,
	combout => \WIRING_THE_ALU|Mux5~2_combout\);

-- Location: LCCOMB_X69_Y58_N0
\WIRING_THE_ALU|Mux5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Mux5~0_combout\ = (\ALUFunct[1]~input_o\ & ((\ALUFunct[0]~input_o\ & (\Mux85~combout\ & \A[26]~2_combout\)) # (!\ALUFunct[0]~input_o\ & ((\Mux85~combout\) # (\A[26]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUFunct[1]~input_o\,
	datab => \ALUFunct[0]~input_o\,
	datac => \Mux85~combout\,
	datad => \A[26]~2_combout\,
	combout => \WIRING_THE_ALU|Mux5~0_combout\);

-- Location: LCCOMB_X69_Y53_N8
\WIRING_THE_ALU|Mux5~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Mux5~3_combout\ = (\WIRING_THE_ALU|Mux5~0_combout\) # ((\WIRING_THE_ALU|Mux5~2_combout\ & !\ALUFunct[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Mux5~2_combout\,
	datac => \ALUFunct[1]~input_o\,
	datad => \WIRING_THE_ALU|Mux5~0_combout\,
	combout => \WIRING_THE_ALU|Mux5~3_combout\);

-- Location: LCCOMB_X70_Y65_N26
\Mux27~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux27~0_combout\ = (!\WDSEL[0]~input_o\ & (\PC[26]~input_o\ $ (((\PC[25]~input_o\ & \PCADDING_1|c\(24))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[25]~input_o\,
	datab => \PC[26]~input_o\,
	datac => \PCADDING_1|c\(24),
	datad => \WDSEL[0]~input_o\,
	combout => \Mux27~0_combout\);

-- Location: LCCOMB_X70_Y65_N4
\Mux27~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux27~1_combout\ = (!\WDSEL[1]~input_o\ & ((\Mux27~0_combout\) # ((\WIRING_THE_ALU|Mux5~3_combout\ & \WDSEL[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Mux5~3_combout\,
	datab => \WDSEL[0]~input_o\,
	datac => \Mux27~0_combout\,
	datad => \WDSEL[1]~input_o\,
	combout => \Mux27~1_combout\);

-- Location: LCCOMB_X68_Y55_N24
\Mux27~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux27~2_combout\ = (\Mux27~1_combout\) # ((\Memo_READ_Data[26]~input_o\ & \WDSEL[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Memo_READ_Data[26]~input_o\,
	datac => \WDSEL[1]~input_o\,
	datad => \Mux27~1_combout\,
	combout => \Mux27~2_combout\);

-- Location: IOIBUF_X26_Y91_N1
\Memo_READ_Data[27]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Memo_READ_Data(27),
	o => \Memo_READ_Data[27]~input_o\);

-- Location: LCCOMB_X70_Y65_N6
\PCADDING_1|z[27]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PCADDING_1|z\(27) = \PC[27]~input_o\ $ (((\PC[25]~input_o\ & (\PCADDING_1|c\(24) & \PC[26]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[27]~input_o\,
	datab => \PC[25]~input_o\,
	datac => \PCADDING_1|c\(24),
	datad => \PC[26]~input_o\,
	combout => \PCADDING_1|z\(27));

-- Location: LCCOMB_X70_Y66_N22
\Mux28~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux28~1_combout\ = (!\WDSEL[0]~input_o\ & \PCADDING_1|z\(27))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WDSEL[0]~input_o\,
	datad => \PCADDING_1|z\(27),
	combout => \Mux28~1_combout\);

-- Location: LCCOMB_X69_Y58_N28
\WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit8toF|bit0123|bit23|bit0|cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit8toF|bit0123|bit23|bit0|cout~0_combout\ = (\A[26]~2_combout\ & ((\WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit8toF|bit0123|bit01|bit1|cout~0_combout\) # (\ALUFunct[3]~input_o\ $ (\Mux85~combout\)))) # 
-- (!\A[26]~2_combout\ & (\WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit8toF|bit0123|bit01|bit1|cout~0_combout\ & (\ALUFunct[3]~input_o\ $ (\Mux85~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUFunct[3]~input_o\,
	datab => \A[26]~2_combout\,
	datac => \Mux85~combout\,
	datad => \WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit8toF|bit0123|bit01|bit1|cout~0_combout\,
	combout => \WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit8toF|bit0123|bit23|bit0|cout~0_combout\);

-- Location: LCCOMB_X69_Y58_N14
\WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit8toF|bit0123|bit23|bit1|s\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit8toF|bit0123|bit23|bit1|s~combout\ = \WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit8toF|bit0123|bit23|bit0|cout~0_combout\ $ (\ALUFunct[3]~input_o\ $ 
-- (\WIRING_THE_ALU|set_a_less_b|wiring|bits27|a_eq_b~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit8toF|bit0123|bit23|bit0|cout~0_combout\,
	datac => \ALUFunct[3]~input_o\,
	datad => \WIRING_THE_ALU|set_a_less_b|wiring|bits27|a_eq_b~0_combout\,
	combout => \WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit8toF|bit0123|bit23|bit1|s~combout\);

-- Location: LCCOMB_X69_Y58_N24
\WIRING_THE_ALU|Mux4~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Mux4~1_combout\ = (\ALUFunct[0]~input_o\ & ((\WIRING_THE_ALU|Shifting|shifting|z[27]~24_combout\) # ((!\ALUFunct[2]~input_o\)))) # (!\ALUFunct[0]~input_o\ & 
-- (((\WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit8toF|bit0123|bit23|bit1|s~combout\ & !\ALUFunct[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Shifting|shifting|z[27]~24_combout\,
	datab => \ALUFunct[0]~input_o\,
	datac => \WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit8toF|bit0123|bit23|bit1|s~combout\,
	datad => \ALUFunct[2]~input_o\,
	combout => \WIRING_THE_ALU|Mux4~1_combout\);

-- Location: LCCOMB_X69_Y58_N26
\WIRING_THE_ALU|Mux4~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Mux4~2_combout\ = (\WIRING_THE_ALU|Mux4~1_combout\ & ((\WIRING_THE_ALU|Shifting|shifting|z[4]~21_combout\) # ((!\WIRING_THE_ALU|Mux12~0_combout\)))) # (!\WIRING_THE_ALU|Mux4~1_combout\ & (((\WIRING_THE_ALU|Mux12~0_combout\ & 
-- \WIRING_THE_ALU|set_a_less_b|wiring|bits27|a_eq_b~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Shifting|shifting|z[4]~21_combout\,
	datab => \WIRING_THE_ALU|Mux4~1_combout\,
	datac => \WIRING_THE_ALU|Mux12~0_combout\,
	datad => \WIRING_THE_ALU|set_a_less_b|wiring|bits27|a_eq_b~0_combout\,
	combout => \WIRING_THE_ALU|Mux4~2_combout\);

-- Location: LCCOMB_X69_Y58_N10
\WIRING_THE_ALU|Mux4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Mux4~0_combout\ = (\ALUFunct[1]~input_o\ & ((\ALUFunct[0]~input_o\ & (\Mux87~combout\ & \A[27]~15_combout\)) # (!\ALUFunct[0]~input_o\ & ((\Mux87~combout\) # (\A[27]~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUFunct[0]~input_o\,
	datab => \Mux87~combout\,
	datac => \ALUFunct[1]~input_o\,
	datad => \A[27]~15_combout\,
	combout => \WIRING_THE_ALU|Mux4~0_combout\);

-- Location: LCCOMB_X70_Y66_N12
\Mux28~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux28~0_combout\ = (\WDSEL[0]~input_o\ & ((\WIRING_THE_ALU|Mux4~0_combout\) # ((!\ALUFunct[1]~input_o\ & \WIRING_THE_ALU|Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUFunct[1]~input_o\,
	datab => \WDSEL[0]~input_o\,
	datac => \WIRING_THE_ALU|Mux4~2_combout\,
	datad => \WIRING_THE_ALU|Mux4~0_combout\,
	combout => \Mux28~0_combout\);

-- Location: LCCOMB_X70_Y66_N24
\Mux28~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux28~2_combout\ = (\WDSEL[1]~input_o\ & (\Memo_READ_Data[27]~input_o\)) # (!\WDSEL[1]~input_o\ & (((\Mux28~1_combout\) # (\Mux28~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WDSEL[1]~input_o\,
	datab => \Memo_READ_Data[27]~input_o\,
	datac => \Mux28~1_combout\,
	datad => \Mux28~0_combout\,
	combout => \Mux28~2_combout\);

-- Location: LCCOMB_X70_Y65_N16
\PCADDING_1|c[27]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PCADDING_1|c\(27) = (\PC[27]~input_o\ & (\PC[25]~input_o\ & (\PCADDING_1|c\(24) & \PC[26]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[27]~input_o\,
	datab => \PC[25]~input_o\,
	datac => \PCADDING_1|c\(24),
	datad => \PC[26]~input_o\,
	combout => \PCADDING_1|c\(27));

-- Location: LCCOMB_X70_Y66_N20
\Mux29~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux29~1_combout\ = (!\WDSEL[0]~input_o\ & (\PC[28]~input_o\ $ (\PCADDING_1|c\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[28]~input_o\,
	datac => \PCADDING_1|c\(27),
	datad => \WDSEL[0]~input_o\,
	combout => \Mux29~1_combout\);

-- Location: IOIBUF_X34_Y91_N15
\Memo_READ_Data[28]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Memo_READ_Data(28),
	o => \Memo_READ_Data[28]~input_o\);

-- Location: LCCOMB_X69_Y58_N20
\WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit8toF|bit0123|bit23|bit1|cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit8toF|bit0123|bit23|bit1|cout~0_combout\ = (\WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit8toF|bit0123|bit23|bit0|cout~0_combout\ & ((\A[27]~15_combout\) # (\ALUFunct[3]~input_o\ $ (\Mux87~combout\)))) 
-- # (!\WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit8toF|bit0123|bit23|bit0|cout~0_combout\ & (\A[27]~15_combout\ & (\ALUFunct[3]~input_o\ $ (\Mux87~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit8toF|bit0123|bit23|bit0|cout~0_combout\,
	datab => \A[27]~15_combout\,
	datac => \ALUFunct[3]~input_o\,
	datad => \Mux87~combout\,
	combout => \WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit8toF|bit0123|bit23|bit1|cout~0_combout\);

-- Location: LCCOMB_X69_Y58_N22
\WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit8toF|bit4567|bit01|bit0|s\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit8toF|bit4567|bit01|bit0|s~combout\ = \WIRING_THE_ALU|set_a_less_b|wiring|bits28|a_eq_b~2_combout\ $ (\ALUFunct[3]~input_o\ $ 
-- (\WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit8toF|bit0123|bit23|bit1|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|set_a_less_b|wiring|bits28|a_eq_b~2_combout\,
	datac => \ALUFunct[3]~input_o\,
	datad => \WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit8toF|bit0123|bit23|bit1|cout~0_combout\,
	combout => \WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit8toF|bit4567|bit01|bit0|s~combout\);

-- Location: LCCOMB_X68_Y58_N6
\WIRING_THE_ALU|Mux3~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Mux3~1_combout\ = (\ALUFunct[2]~input_o\ & (\ALUFunct[0]~input_o\ & (\WIRING_THE_ALU|Shifting|shifting|z[28]~20_combout\))) # (!\ALUFunct[2]~input_o\ & ((\ALUFunct[0]~input_o\) # 
-- ((\WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit8toF|bit4567|bit01|bit0|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUFunct[2]~input_o\,
	datab => \ALUFunct[0]~input_o\,
	datac => \WIRING_THE_ALU|Shifting|shifting|z[28]~20_combout\,
	datad => \WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit8toF|bit4567|bit01|bit0|s~combout\,
	combout => \WIRING_THE_ALU|Mux3~1_combout\);

-- Location: LCCOMB_X68_Y58_N0
\WIRING_THE_ALU|Mux3~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Mux3~2_combout\ = (\WIRING_THE_ALU|Mux3~1_combout\ & ((\WIRING_THE_ALU|Shifting|shifting|z[3]~18_combout\) # ((!\WIRING_THE_ALU|Mux12~0_combout\)))) # (!\WIRING_THE_ALU|Mux3~1_combout\ & (((\WIRING_THE_ALU|Mux12~0_combout\ & 
-- \WIRING_THE_ALU|set_a_less_b|wiring|bits28|a_eq_b~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Mux3~1_combout\,
	datab => \WIRING_THE_ALU|Shifting|shifting|z[3]~18_combout\,
	datac => \WIRING_THE_ALU|Mux12~0_combout\,
	datad => \WIRING_THE_ALU|set_a_less_b|wiring|bits28|a_eq_b~2_combout\,
	combout => \WIRING_THE_ALU|Mux3~2_combout\);

-- Location: LCCOMB_X69_Y59_N8
\WIRING_THE_ALU|Mux3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Mux3~0_combout\ = (\ALUFunct[1]~input_o\ & ((\A[28]~6_combout\ & ((\Mux89~combout\) # (!\ALUFunct[0]~input_o\))) # (!\A[28]~6_combout\ & (\Mux89~combout\ & !\ALUFunct[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUFunct[1]~input_o\,
	datab => \A[28]~6_combout\,
	datac => \Mux89~combout\,
	datad => \ALUFunct[0]~input_o\,
	combout => \WIRING_THE_ALU|Mux3~0_combout\);

-- Location: LCCOMB_X70_Y66_N2
\Mux29~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux29~0_combout\ = (\WDSEL[0]~input_o\ & ((\WIRING_THE_ALU|Mux3~0_combout\) # ((\WIRING_THE_ALU|Mux3~2_combout\ & !\ALUFunct[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Mux3~2_combout\,
	datab => \WIRING_THE_ALU|Mux3~0_combout\,
	datac => \ALUFunct[1]~input_o\,
	datad => \WDSEL[0]~input_o\,
	combout => \Mux29~0_combout\);

-- Location: LCCOMB_X70_Y66_N30
\Mux29~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux29~2_combout\ = (\WDSEL[1]~input_o\ & (((\Memo_READ_Data[28]~input_o\)))) # (!\WDSEL[1]~input_o\ & ((\Mux29~1_combout\) # ((\Mux29~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WDSEL[1]~input_o\,
	datab => \Mux29~1_combout\,
	datac => \Memo_READ_Data[28]~input_o\,
	datad => \Mux29~0_combout\,
	combout => \Mux29~2_combout\);

-- Location: LCCOMB_X69_Y59_N28
\WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit8toF|bit4567|bit01|bit0|cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit8toF|bit4567|bit01|bit0|cout~0_combout\ = (\A[28]~6_combout\ & ((\WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit8toF|bit0123|bit23|bit1|cout~0_combout\) # (\Mux89~combout\ $ (\ALUFunct[3]~input_o\)))) # 
-- (!\A[28]~6_combout\ & (\WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit8toF|bit0123|bit23|bit1|cout~0_combout\ & (\Mux89~combout\ $ (\ALUFunct[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux89~combout\,
	datab => \ALUFunct[3]~input_o\,
	datac => \A[28]~6_combout\,
	datad => \WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit8toF|bit0123|bit23|bit1|cout~0_combout\,
	combout => \WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit8toF|bit4567|bit01|bit0|cout~0_combout\);

-- Location: LCCOMB_X69_Y59_N22
\WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit8toF|bit4567|bit01|bit1|s\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit8toF|bit4567|bit01|bit1|s~combout\ = \WIRING_THE_ALU|set_a_less_b|wiring|bits29|a_eq_b~2_combout\ $ (\ALUFunct[3]~input_o\ $ 
-- (\WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit8toF|bit4567|bit01|bit0|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WIRING_THE_ALU|set_a_less_b|wiring|bits29|a_eq_b~2_combout\,
	datac => \ALUFunct[3]~input_o\,
	datad => \WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit8toF|bit4567|bit01|bit0|cout~0_combout\,
	combout => \WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit8toF|bit4567|bit01|bit1|s~combout\);

-- Location: LCCOMB_X69_Y59_N0
\WIRING_THE_ALU|Mux2~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Mux2~1_combout\ = (\ALUFunct[2]~input_o\ & (\ALUFunct[0]~input_o\ & ((\WIRING_THE_ALU|Shifting|shifting|z[29]~17_combout\)))) # (!\ALUFunct[2]~input_o\ & ((\ALUFunct[0]~input_o\) # 
-- ((\WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit8toF|bit4567|bit01|bit1|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUFunct[2]~input_o\,
	datab => \ALUFunct[0]~input_o\,
	datac => \WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit8toF|bit4567|bit01|bit1|s~combout\,
	datad => \WIRING_THE_ALU|Shifting|shifting|z[29]~17_combout\,
	combout => \WIRING_THE_ALU|Mux2~1_combout\);

-- Location: LCCOMB_X69_Y59_N10
\WIRING_THE_ALU|Mux2~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Mux2~2_combout\ = (\WIRING_THE_ALU|Mux12~0_combout\ & ((\WIRING_THE_ALU|Mux2~1_combout\ & (\WIRING_THE_ALU|Shifting|shifting|z[2]~14_combout\)) # (!\WIRING_THE_ALU|Mux2~1_combout\ & 
-- ((\WIRING_THE_ALU|set_a_less_b|wiring|bits29|a_eq_b~2_combout\))))) # (!\WIRING_THE_ALU|Mux12~0_combout\ & (((\WIRING_THE_ALU|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Shifting|shifting|z[2]~14_combout\,
	datab => \WIRING_THE_ALU|set_a_less_b|wiring|bits29|a_eq_b~2_combout\,
	datac => \WIRING_THE_ALU|Mux12~0_combout\,
	datad => \WIRING_THE_ALU|Mux2~1_combout\,
	combout => \WIRING_THE_ALU|Mux2~2_combout\);

-- Location: LCCOMB_X69_Y59_N26
\WIRING_THE_ALU|Mux2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Mux2~0_combout\ = (\ALUFunct[1]~input_o\ & ((\Mux91~combout\ & ((\A[29]~1_combout\) # (!\ALUFunct[0]~input_o\))) # (!\Mux91~combout\ & (!\ALUFunct[0]~input_o\ & \A[29]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux91~combout\,
	datab => \ALUFunct[0]~input_o\,
	datac => \ALUFunct[1]~input_o\,
	datad => \A[29]~1_combout\,
	combout => \WIRING_THE_ALU|Mux2~0_combout\);

-- Location: LCCOMB_X69_Y59_N4
\WIRING_THE_ALU|Mux2~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Mux2~3_combout\ = (\WIRING_THE_ALU|Mux2~0_combout\) # ((\WIRING_THE_ALU|Mux2~2_combout\ & !\ALUFunct[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Mux2~2_combout\,
	datac => \WIRING_THE_ALU|Mux2~0_combout\,
	datad => \ALUFunct[1]~input_o\,
	combout => \WIRING_THE_ALU|Mux2~3_combout\);

-- Location: LCCOMB_X70_Y67_N16
\Mux30~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux30~0_combout\ = (!\WDSEL[0]~input_o\ & !\WDSEL[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WDSEL[0]~input_o\,
	datac => \WDSEL[1]~input_o\,
	combout => \Mux30~0_combout\);

-- Location: LCCOMB_X70_Y67_N18
\Mux30~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux30~1_combout\ = (\Mux30~0_combout\ & (\PC[29]~input_o\ $ (((\PCADDING_1|c\(27) & \PC[28]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[29]~input_o\,
	datab => \PCADDING_1|c\(27),
	datac => \PC[28]~input_o\,
	datad => \Mux30~0_combout\,
	combout => \Mux30~1_combout\);

-- Location: LCCOMB_X70_Y67_N14
\Mux30~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux30~3_combout\ = (\WDSEL[0]~input_o\ & !\WDSEL[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WDSEL[0]~input_o\,
	datac => \WDSEL[1]~input_o\,
	combout => \Mux30~3_combout\);

-- Location: IOIBUF_X46_Y91_N15
\Memo_READ_Data[29]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Memo_READ_Data(29),
	o => \Memo_READ_Data[29]~input_o\);

-- Location: LCCOMB_X70_Y67_N20
\Mux30~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux30~2_combout\ = (\WDSEL[1]~input_o\ & \Memo_READ_Data[29]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WDSEL[1]~input_o\,
	datad => \Memo_READ_Data[29]~input_o\,
	combout => \Mux30~2_combout\);

-- Location: LCCOMB_X70_Y67_N8
\Mux30~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux30~4_combout\ = (\Mux30~1_combout\) # ((\Mux30~2_combout\) # ((\WIRING_THE_ALU|Mux2~3_combout\ & \Mux30~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Mux2~3_combout\,
	datab => \Mux30~1_combout\,
	datac => \Mux30~3_combout\,
	datad => \Mux30~2_combout\,
	combout => \Mux30~4_combout\);

-- Location: LCCOMB_X69_Y59_N14
\WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit8toF|bit4567|bit01|bit1|cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit8toF|bit4567|bit01|bit1|cout~0_combout\ = (\A[29]~1_combout\ & ((\WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit8toF|bit4567|bit01|bit0|cout~0_combout\) # (\Mux91~combout\ $ (\ALUFunct[3]~input_o\)))) # 
-- (!\A[29]~1_combout\ & (\WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit8toF|bit4567|bit01|bit0|cout~0_combout\ & (\Mux91~combout\ $ (\ALUFunct[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux91~combout\,
	datab => \A[29]~1_combout\,
	datac => \ALUFunct[3]~input_o\,
	datad => \WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit8toF|bit4567|bit01|bit0|cout~0_combout\,
	combout => \WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit8toF|bit4567|bit01|bit1|cout~0_combout\);

-- Location: LCCOMB_X69_Y59_N24
\WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit8toF|bit4567|bit23|bit0|s\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit8toF|bit4567|bit23|bit0|s~combout\ = \WIRING_THE_ALU|set_a_less_b|wiring|bits30|a_eq_b~2_combout\ $ (\WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit8toF|bit4567|bit01|bit1|cout~0_combout\ $ 
-- (\ALUFunct[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|set_a_less_b|wiring|bits30|a_eq_b~2_combout\,
	datab => \WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit8toF|bit4567|bit01|bit1|cout~0_combout\,
	datac => \ALUFunct[3]~input_o\,
	combout => \WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit8toF|bit4567|bit23|bit0|s~combout\);

-- Location: LCCOMB_X68_Y59_N30
\WIRING_THE_ALU|Mux1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Mux1~1_combout\ = (\ALUFunct[2]~input_o\ & (((\ALUFunct[0]~input_o\ & \WIRING_THE_ALU|Shifting|shifting|z[30]~13_combout\)))) # (!\ALUFunct[2]~input_o\ & 
-- ((\WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit8toF|bit4567|bit23|bit0|s~combout\) # ((\ALUFunct[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUFunct[2]~input_o\,
	datab => \WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit8toF|bit4567|bit23|bit0|s~combout\,
	datac => \ALUFunct[0]~input_o\,
	datad => \WIRING_THE_ALU|Shifting|shifting|z[30]~13_combout\,
	combout => \WIRING_THE_ALU|Mux1~1_combout\);

-- Location: LCCOMB_X68_Y59_N0
\WIRING_THE_ALU|Mux1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Mux1~2_combout\ = (\WIRING_THE_ALU|Mux1~1_combout\ & ((\WIRING_THE_ALU|Shifting|shifting|z[1]~11_combout\) # ((!\WIRING_THE_ALU|Mux12~0_combout\)))) # (!\WIRING_THE_ALU|Mux1~1_combout\ & 
-- (((\WIRING_THE_ALU|set_a_less_b|wiring|bits30|a_eq_b~2_combout\ & \WIRING_THE_ALU|Mux12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Mux1~1_combout\,
	datab => \WIRING_THE_ALU|Shifting|shifting|z[1]~11_combout\,
	datac => \WIRING_THE_ALU|set_a_less_b|wiring|bits30|a_eq_b~2_combout\,
	datad => \WIRING_THE_ALU|Mux12~0_combout\,
	combout => \WIRING_THE_ALU|Mux1~2_combout\);

-- Location: LCCOMB_X68_Y59_N4
\WIRING_THE_ALU|Mux1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Mux1~0_combout\ = (\ALUFunct[1]~input_o\ & ((\A[30]~5_combout\ & ((\Mux93~combout\) # (!\ALUFunct[0]~input_o\))) # (!\A[30]~5_combout\ & (!\ALUFunct[0]~input_o\ & \Mux93~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUFunct[1]~input_o\,
	datab => \A[30]~5_combout\,
	datac => \ALUFunct[0]~input_o\,
	datad => \Mux93~combout\,
	combout => \WIRING_THE_ALU|Mux1~0_combout\);

-- Location: LCCOMB_X68_Y59_N10
\WIRING_THE_ALU|Mux1~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Mux1~3_combout\ = (\WIRING_THE_ALU|Mux1~0_combout\) # ((!\ALUFunct[1]~input_o\ & \WIRING_THE_ALU|Mux1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUFunct[1]~input_o\,
	datab => \WIRING_THE_ALU|Mux1~2_combout\,
	datac => \WIRING_THE_ALU|Mux1~0_combout\,
	combout => \WIRING_THE_ALU|Mux1~3_combout\);

-- Location: IOIBUF_X63_Y91_N15
\Memo_READ_Data[30]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Memo_READ_Data(30),
	o => \Memo_READ_Data[30]~input_o\);

-- Location: LCCOMB_X70_Y67_N26
\PCADDING_1|z[30]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PCADDING_1|z\(30) = \PC[30]~input_o\ $ (((\PC[29]~input_o\ & (\PC[28]~input_o\ & \PCADDING_1|c\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[29]~input_o\,
	datab => \PC[30]~input_o\,
	datac => \PC[28]~input_o\,
	datad => \PCADDING_1|c\(27),
	combout => \PCADDING_1|z\(30));

-- Location: LCCOMB_X70_Y64_N2
\Mux31~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux31~4_combout\ = (\WDSEL[1]~input_o\ & (((\Memo_READ_Data[30]~input_o\)))) # (!\WDSEL[1]~input_o\ & (!\WDSEL[0]~input_o\ & ((\PCADDING_1|z\(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WDSEL[0]~input_o\,
	datab => \Memo_READ_Data[30]~input_o\,
	datac => \WDSEL[1]~input_o\,
	datad => \PCADDING_1|z\(30),
	combout => \Mux31~4_combout\);

-- Location: LCCOMB_X70_Y64_N4
\Mux31~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux31~5_combout\ = (\Mux31~4_combout\) # ((!\WDSEL[1]~input_o\ & (\WIRING_THE_ALU|Mux1~3_combout\ & \WDSEL[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WDSEL[1]~input_o\,
	datab => \WIRING_THE_ALU|Mux1~3_combout\,
	datac => \WDSEL[0]~input_o\,
	datad => \Mux31~4_combout\,
	combout => \Mux31~5_combout\);

-- Location: LCCOMB_X70_Y67_N12
\PCADDING_1|c[29]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PCADDING_1|c\(29) = (\PC[29]~input_o\ & (\PC[28]~input_o\ & \PCADDING_1|c\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[29]~input_o\,
	datac => \PC[28]~input_o\,
	datad => \PCADDING_1|c\(27),
	combout => \PCADDING_1|c\(29));

-- Location: LCCOMB_X70_Y67_N6
\Mux32~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux32~0_combout\ = (\Mux30~0_combout\ & (\PC[31]~input_o\ $ (((\PC[30]~input_o\ & \PCADDING_1|c\(29))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[31]~input_o\,
	datab => \Mux30~0_combout\,
	datac => \PC[30]~input_o\,
	datad => \PCADDING_1|c\(29),
	combout => \Mux32~0_combout\);

-- Location: LCCOMB_X68_Y59_N6
\WIRING_THE_ALU|XorR[31]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|XorR[31]~2_combout\ = \Mux95~combout\ $ (((\ASEL~input_o\ & (\immU_J[31]~input_o\)) # (!\ASEL~input_o\ & ((\rs1[31]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ASEL~input_o\,
	datab => \Mux95~combout\,
	datac => \immU_J[31]~input_o\,
	datad => \rs1[31]~input_o\,
	combout => \WIRING_THE_ALU|XorR[31]~2_combout\);

-- Location: LCCOMB_X69_Y59_N2
\WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit8toF|bit4567|bit23|bit0|cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit8toF|bit4567|bit23|bit0|cout~0_combout\ = (\WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit8toF|bit4567|bit01|bit1|cout~0_combout\ & ((\A[30]~5_combout\) # (\ALUFunct[3]~input_o\ $ (\Mux93~combout\)))) # 
-- (!\WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit8toF|bit4567|bit01|bit1|cout~0_combout\ & (\A[30]~5_combout\ & (\ALUFunct[3]~input_o\ $ (\Mux93~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUFunct[3]~input_o\,
	datab => \WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit8toF|bit4567|bit01|bit1|cout~0_combout\,
	datac => \Mux93~combout\,
	datad => \A[30]~5_combout\,
	combout => \WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit8toF|bit4567|bit23|bit0|cout~0_combout\);

-- Location: LCCOMB_X68_Y59_N22
\WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit8toF|bit4567|bit23|bit1|s\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit8toF|bit4567|bit23|bit1|s~combout\ = \A[31]~7_combout\ $ (\Mux95~combout\ $ (\ALUFunct[3]~input_o\ $ (\WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit8toF|bit4567|bit23|bit0|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~7_combout\,
	datab => \Mux95~combout\,
	datac => \ALUFunct[3]~input_o\,
	datad => \WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit8toF|bit4567|bit23|bit0|cout~0_combout\,
	combout => \WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit8toF|bit4567|bit23|bit1|s~combout\);

-- Location: LCCOMB_X68_Y59_N24
\WIRING_THE_ALU|Mux0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Mux0~1_combout\ = (\ALUFunct[2]~input_o\ & (\WIRING_THE_ALU|Shifting|shifting|z[31]~10_combout\ & ((\ALUFunct[0]~input_o\)))) # (!\ALUFunct[2]~input_o\ & 
-- (((\WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit8toF|bit4567|bit23|bit1|s~combout\) # (\ALUFunct[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUFunct[2]~input_o\,
	datab => \WIRING_THE_ALU|Shifting|shifting|z[31]~10_combout\,
	datac => \WIRING_THE_ALU|Adding_Subing|wiring|bit16to31|bit8toF|bit4567|bit23|bit1|s~combout\,
	datad => \ALUFunct[0]~input_o\,
	combout => \WIRING_THE_ALU|Mux0~1_combout\);

-- Location: LCCOMB_X68_Y59_N18
\WIRING_THE_ALU|Mux0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Mux0~2_combout\ = (\WIRING_THE_ALU|Mux12~0_combout\ & ((\WIRING_THE_ALU|Mux0~1_combout\ & ((\WIRING_THE_ALU|Shifting|shifting|z[0]~7_combout\))) # (!\WIRING_THE_ALU|Mux0~1_combout\ & (\WIRING_THE_ALU|XorR[31]~2_combout\)))) # 
-- (!\WIRING_THE_ALU|Mux12~0_combout\ & (((\WIRING_THE_ALU|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|XorR[31]~2_combout\,
	datab => \WIRING_THE_ALU|Shifting|shifting|z[0]~7_combout\,
	datac => \WIRING_THE_ALU|Mux12~0_combout\,
	datad => \WIRING_THE_ALU|Mux0~1_combout\,
	combout => \WIRING_THE_ALU|Mux0~2_combout\);

-- Location: LCCOMB_X68_Y59_N20
\WIRING_THE_ALU|Mux0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Mux0~0_combout\ = (\ALUFunct[1]~input_o\ & ((\Mux95~combout\ & ((\A[31]~7_combout\) # (!\ALUFunct[0]~input_o\))) # (!\Mux95~combout\ & (!\ALUFunct[0]~input_o\ & \A[31]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUFunct[1]~input_o\,
	datab => \Mux95~combout\,
	datac => \ALUFunct[0]~input_o\,
	datad => \A[31]~7_combout\,
	combout => \WIRING_THE_ALU|Mux0~0_combout\);

-- Location: LCCOMB_X68_Y59_N12
\WIRING_THE_ALU|Mux0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Mux0~3_combout\ = (\WIRING_THE_ALU|Mux0~0_combout\) # ((\WIRING_THE_ALU|Mux0~2_combout\ & !\ALUFunct[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WIRING_THE_ALU|Mux0~2_combout\,
	datac => \ALUFunct[1]~input_o\,
	datad => \WIRING_THE_ALU|Mux0~0_combout\,
	combout => \WIRING_THE_ALU|Mux0~3_combout\);

-- Location: IOIBUF_X70_Y91_N8
\Memo_READ_Data[31]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Memo_READ_Data(31),
	o => \Memo_READ_Data[31]~input_o\);

-- Location: LCCOMB_X70_Y67_N0
\Mux32~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux32~1_combout\ = (\WDSEL[1]~input_o\ & \Memo_READ_Data[31]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WDSEL[1]~input_o\,
	datac => \Memo_READ_Data[31]~input_o\,
	combout => \Mux32~1_combout\);

-- Location: LCCOMB_X70_Y67_N10
\Mux32~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux32~2_combout\ = (\Mux32~0_combout\) # ((\Mux32~1_combout\) # ((\Mux30~3_combout\ & \WIRING_THE_ALU|Mux0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux32~0_combout\,
	datab => \Mux30~3_combout\,
	datac => \WIRING_THE_ALU|Mux0~3_combout\,
	datad => \Mux32~1_combout\,
	combout => \Mux32~2_combout\);

-- Location: IOIBUF_X117_Y32_N1
\PCSEL[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PCSEL(1),
	o => \PCSEL[1]~input_o\);

-- Location: IOIBUF_X117_Y35_N1
\PCSEL[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PCSEL(0),
	o => \PCSEL[0]~input_o\);

-- Location: LCCOMB_X86_Y59_N28
\wiring_THE_nPC|Mux0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wiring_THE_nPC|Mux0~0_combout\ = (!\PCSEL[1]~input_o\ & (\PC[0]~input_o\ $ (((\immS_B[0]~input_o\) # (!\PCSEL[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PCSEL[0]~input_o\,
	datab => \PCSEL[1]~input_o\,
	datac => \immS_B[0]~input_o\,
	datad => \PC[0]~input_o\,
	combout => \wiring_THE_nPC|Mux0~0_combout\);

-- Location: LCCOMB_X86_Y59_N30
\wiring_THE_nPC|Mux0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wiring_THE_nPC|Mux0~1_combout\ = (\wiring_THE_nPC|Mux0~0_combout\) # ((\WIRING_THE_ALU|Mux31~4_combout\ & \PCSEL[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WIRING_THE_ALU|Mux31~4_combout\,
	datac => \PCSEL[1]~input_o\,
	datad => \wiring_THE_nPC|Mux0~0_combout\,
	combout => \wiring_THE_nPC|Mux0~1_combout\);

-- Location: LCCOMB_X70_Y66_N8
\wiring_THE_nPC|Mux32~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wiring_THE_nPC|Mux32~0_combout\ = (!\PCSEL[1]~input_o\) # (!\PCSEL[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PCSEL[0]~input_o\,
	datac => \PCSEL[1]~input_o\,
	combout => \wiring_THE_nPC|Mux32~0_combout\);

-- Location: LCCOMB_X86_Y59_N0
\wiring_THE_nPC|Mux1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wiring_THE_nPC|Mux1~0_combout\ = (\PCSEL[0]~input_o\ & (\immS_B[1]~input_o\ $ (((\PC[0]~input_o\ & \immS_B[0]~input_o\))))) # (!\PCSEL[0]~input_o\ & (\PC[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PCSEL[0]~input_o\,
	datab => \PC[0]~input_o\,
	datac => \immS_B[0]~input_o\,
	datad => \immS_B[1]~input_o\,
	combout => \wiring_THE_nPC|Mux1~0_combout\);

-- Location: LCCOMB_X82_Y61_N30
\wiring_THE_nPC|Mux1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wiring_THE_nPC|Mux1~1_combout\ = (\PCSEL[1]~input_o\ & (((\WIRING_THE_ALU|Mux30~3_combout\)))) # (!\PCSEL[1]~input_o\ & (\wiring_THE_nPC|Mux1~0_combout\ $ (((\PC[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wiring_THE_nPC|Mux1~0_combout\,
	datab => \PCSEL[1]~input_o\,
	datac => \WIRING_THE_ALU|Mux30~3_combout\,
	datad => \PC[1]~input_o\,
	combout => \wiring_THE_nPC|Mux1~1_combout\);

-- Location: LCCOMB_X82_Y61_N10
\wiring_THE_nPC|Mux2~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wiring_THE_nPC|Mux2~1_combout\ = (!\PCSEL[0]~input_o\ & (\PC[2]~input_o\ $ (((\PC[0]~input_o\ & \PC[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[0]~input_o\,
	datab => \PC[2]~input_o\,
	datac => \PCSEL[0]~input_o\,
	datad => \PC[1]~input_o\,
	combout => \wiring_THE_nPC|Mux2~1_combout\);

-- Location: LCCOMB_X86_Y59_N26
\wiring_THE_nPC|wiringB|bit0toF|bit0to7|bit0123|bit01|bit1|cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wiring_THE_nPC|wiringB|bit0toF|bit0to7|bit0123|bit01|bit1|cout~0_combout\ = (\PC[1]~input_o\ & ((\immS_B[1]~input_o\) # ((\immS_B[0]~input_o\ & \PC[0]~input_o\)))) # (!\PC[1]~input_o\ & (\immS_B[0]~input_o\ & (\PC[0]~input_o\ & \immS_B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \immS_B[0]~input_o\,
	datab => \PC[0]~input_o\,
	datac => \PC[1]~input_o\,
	datad => \immS_B[1]~input_o\,
	combout => \wiring_THE_nPC|wiringB|bit0toF|bit0to7|bit0123|bit01|bit1|cout~0_combout\);

-- Location: LCCOMB_X82_Y61_N8
\wiring_THE_nPC|Mux2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wiring_THE_nPC|Mux2~0_combout\ = (\PCSEL[0]~input_o\ & (\immS_B[2]~input_o\ $ (\PC[2]~input_o\ $ (\wiring_THE_nPC|wiringB|bit0toF|bit0to7|bit0123|bit01|bit1|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \immS_B[2]~input_o\,
	datab => \PC[2]~input_o\,
	datac => \PCSEL[0]~input_o\,
	datad => \wiring_THE_nPC|wiringB|bit0toF|bit0to7|bit0123|bit01|bit1|cout~0_combout\,
	combout => \wiring_THE_nPC|Mux2~0_combout\);

-- Location: LCCOMB_X70_Y64_N18
\WIRING_THE_ALU|Mux29~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Mux29~3_combout\ = (\WIRING_THE_ALU|Mux29~0_combout\) # ((!\ALUFunct[1]~input_o\ & \WIRING_THE_ALU|Mux29~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALUFunct[1]~input_o\,
	datac => \WIRING_THE_ALU|Mux29~2_combout\,
	datad => \WIRING_THE_ALU|Mux29~0_combout\,
	combout => \WIRING_THE_ALU|Mux29~3_combout\);

-- Location: LCCOMB_X82_Y61_N28
\wiring_THE_nPC|Mux2~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wiring_THE_nPC|Mux2~2_combout\ = (\PCSEL[1]~input_o\ & (((\WIRING_THE_ALU|Mux29~3_combout\)))) # (!\PCSEL[1]~input_o\ & ((\wiring_THE_nPC|Mux2~1_combout\) # ((\wiring_THE_nPC|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wiring_THE_nPC|Mux2~1_combout\,
	datab => \PCSEL[1]~input_o\,
	datac => \wiring_THE_nPC|Mux2~0_combout\,
	datad => \WIRING_THE_ALU|Mux29~3_combout\,
	combout => \wiring_THE_nPC|Mux2~2_combout\);

-- Location: LCCOMB_X82_Y61_N6
\wiring_THE_nPC|wiringB|bit0toF|bit0to7|bit0123|bit23|bit1|s~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wiring_THE_nPC|wiringB|bit0toF|bit0to7|bit0123|bit23|bit1|s~0_combout\ = \immS_B[3]~input_o\ $ (((\immS_B[2]~input_o\ & ((\PC[2]~input_o\) # (\wiring_THE_nPC|wiringB|bit0toF|bit0to7|bit0123|bit01|bit1|cout~0_combout\))) # (!\immS_B[2]~input_o\ & 
-- (\PC[2]~input_o\ & \wiring_THE_nPC|wiringB|bit0toF|bit0to7|bit0123|bit01|bit1|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \immS_B[2]~input_o\,
	datab => \PC[2]~input_o\,
	datac => \immS_B[3]~input_o\,
	datad => \wiring_THE_nPC|wiringB|bit0toF|bit0to7|bit0123|bit01|bit1|cout~0_combout\,
	combout => \wiring_THE_nPC|wiringB|bit0toF|bit0to7|bit0123|bit23|bit1|s~0_combout\);

-- Location: LCCOMB_X82_Y61_N16
\wiring_THE_nPC|Mux3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wiring_THE_nPC|Mux3~0_combout\ = (\PCSEL[0]~input_o\ & (\wiring_THE_nPC|wiringB|bit0toF|bit0to7|bit0123|bit23|bit1|s~0_combout\ $ (((\PC[3]~input_o\))))) # (!\PCSEL[0]~input_o\ & (((\PCADDING_1|z\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wiring_THE_nPC|wiringB|bit0toF|bit0to7|bit0123|bit23|bit1|s~0_combout\,
	datab => \PCADDING_1|z\(3),
	datac => \PCSEL[0]~input_o\,
	datad => \PC[3]~input_o\,
	combout => \wiring_THE_nPC|Mux3~0_combout\);

-- Location: LCCOMB_X82_Y61_N2
\wiring_THE_nPC|Mux3~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wiring_THE_nPC|Mux3~1_combout\ = (\PCSEL[1]~input_o\ & (\WIRING_THE_ALU|Mux28~3_combout\)) # (!\PCSEL[1]~input_o\ & ((\wiring_THE_nPC|Mux3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Mux28~3_combout\,
	datab => \PCSEL[1]~input_o\,
	datad => \wiring_THE_nPC|Mux3~0_combout\,
	combout => \wiring_THE_nPC|Mux3~1_combout\);

-- Location: LCCOMB_X82_Y61_N20
\wiring_THE_nPC|wiringB|bit0toF|bit0to7|bit0123|bit23|bit0|cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wiring_THE_nPC|wiringB|bit0toF|bit0to7|bit0123|bit23|bit0|cout~0_combout\ = (\immS_B[2]~input_o\ & ((\PC[2]~input_o\) # (\wiring_THE_nPC|wiringB|bit0toF|bit0to7|bit0123|bit01|bit1|cout~0_combout\))) # (!\immS_B[2]~input_o\ & (\PC[2]~input_o\ & 
-- \wiring_THE_nPC|wiringB|bit0toF|bit0to7|bit0123|bit01|bit1|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \immS_B[2]~input_o\,
	datab => \PC[2]~input_o\,
	datad => \wiring_THE_nPC|wiringB|bit0toF|bit0to7|bit0123|bit01|bit1|cout~0_combout\,
	combout => \wiring_THE_nPC|wiringB|bit0toF|bit0to7|bit0123|bit23|bit0|cout~0_combout\);

-- Location: LCCOMB_X82_Y61_N14
\wiring_THE_nPC|wiringB|bit0toF|bit0to7|bit0123|bit23|bit1|cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wiring_THE_nPC|wiringB|bit0toF|bit0to7|bit0123|bit23|bit1|cout~0_combout\ = (\wiring_THE_nPC|wiringB|bit0toF|bit0to7|bit0123|bit23|bit0|cout~0_combout\ & ((\immS_B[3]~input_o\) # (\PC[3]~input_o\))) # 
-- (!\wiring_THE_nPC|wiringB|bit0toF|bit0to7|bit0123|bit23|bit0|cout~0_combout\ & (\immS_B[3]~input_o\ & \PC[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wiring_THE_nPC|wiringB|bit0toF|bit0to7|bit0123|bit23|bit0|cout~0_combout\,
	datac => \immS_B[3]~input_o\,
	datad => \PC[3]~input_o\,
	combout => \wiring_THE_nPC|wiringB|bit0toF|bit0to7|bit0123|bit23|bit1|cout~0_combout\);

-- Location: LCCOMB_X93_Y41_N16
\wiring_THE_nPC|Mux4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wiring_THE_nPC|Mux4~0_combout\ = (\PCSEL[0]~input_o\ & (\wiring_THE_nPC|wiringB|bit0toF|bit0to7|bit0123|bit23|bit1|cout~0_combout\ $ (((\immS_B[4]~input_o\))))) # (!\PCSEL[0]~input_o\ & (((\PCADDING_1|c\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wiring_THE_nPC|wiringB|bit0toF|bit0to7|bit0123|bit23|bit1|cout~0_combout\,
	datab => \PCSEL[0]~input_o\,
	datac => \PCADDING_1|c\(3),
	datad => \immS_B[4]~input_o\,
	combout => \wiring_THE_nPC|Mux4~0_combout\);

-- Location: LCCOMB_X97_Y38_N14
\wiring_THE_nPC|Mux4~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wiring_THE_nPC|Mux4~1_combout\ = (\PCSEL[1]~input_o\ & (((\WIRING_THE_ALU|Mux27~3_combout\)))) # (!\PCSEL[1]~input_o\ & (\wiring_THE_nPC|Mux4~0_combout\ $ (((\PC[4]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wiring_THE_nPC|Mux4~0_combout\,
	datab => \PCSEL[1]~input_o\,
	datac => \WIRING_THE_ALU|Mux27~3_combout\,
	datad => \PC[4]~input_o\,
	combout => \wiring_THE_nPC|Mux4~1_combout\);

-- Location: LCCOMB_X93_Y41_N18
\wiring_THE_nPC|Mux5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wiring_THE_nPC|Mux5~0_combout\ = (\wiring_THE_nPC|wiringB|bit0toF|bit0to7|bit0123|bit23|bit1|cout~0_combout\ & ((\PC[4]~input_o\) # ((\PCSEL[0]~input_o\ & \immS_B[4]~input_o\)))) # 
-- (!\wiring_THE_nPC|wiringB|bit0toF|bit0to7|bit0123|bit23|bit1|cout~0_combout\ & (\PC[4]~input_o\ & ((\immS_B[4]~input_o\) # (!\PCSEL[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wiring_THE_nPC|wiringB|bit0toF|bit0to7|bit0123|bit23|bit1|cout~0_combout\,
	datab => \PCSEL[0]~input_o\,
	datac => \PC[4]~input_o\,
	datad => \immS_B[4]~input_o\,
	combout => \wiring_THE_nPC|Mux5~0_combout\);

-- Location: LCCOMB_X93_Y41_N4
\wiring_THE_nPC|Mux5~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wiring_THE_nPC|Mux5~1_combout\ = (\PCSEL[0]~input_o\ & (\wiring_THE_nPC|Mux5~0_combout\ $ (((\immS_B[5]~input_o\))))) # (!\PCSEL[0]~input_o\ & (\wiring_THE_nPC|Mux5~0_combout\ & (\PCADDING_1|c\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wiring_THE_nPC|Mux5~0_combout\,
	datab => \PCSEL[0]~input_o\,
	datac => \PCADDING_1|c\(3),
	datad => \immS_B[5]~input_o\,
	combout => \wiring_THE_nPC|Mux5~1_combout\);

-- Location: LCCOMB_X97_Y38_N16
\wiring_THE_nPC|Mux5~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wiring_THE_nPC|Mux5~2_combout\ = (\PCSEL[1]~input_o\ & (((\WIRING_THE_ALU|Mux26~3_combout\)))) # (!\PCSEL[1]~input_o\ & (\wiring_THE_nPC|Mux5~1_combout\ $ (((\PC[5]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wiring_THE_nPC|Mux5~1_combout\,
	datab => \WIRING_THE_ALU|Mux26~3_combout\,
	datac => \PCSEL[1]~input_o\,
	datad => \PC[5]~input_o\,
	combout => \wiring_THE_nPC|Mux5~2_combout\);

-- Location: LCCOMB_X93_Y41_N6
\wiring_THE_nPC|wiringB|bit0toF|bit0to7|bit4567|bit01|bit1|cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wiring_THE_nPC|wiringB|bit0toF|bit0to7|bit4567|bit01|bit1|cout~0_combout\ = (\wiring_THE_nPC|wiringB|bit0toF|bit0to7|bit0123|bit23|bit1|cout~0_combout\ & ((\PC[4]~input_o\) # (\immS_B[4]~input_o\))) # 
-- (!\wiring_THE_nPC|wiringB|bit0toF|bit0to7|bit0123|bit23|bit1|cout~0_combout\ & (\PC[4]~input_o\ & \immS_B[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wiring_THE_nPC|wiringB|bit0toF|bit0to7|bit0123|bit23|bit1|cout~0_combout\,
	datac => \PC[4]~input_o\,
	datad => \immS_B[4]~input_o\,
	combout => \wiring_THE_nPC|wiringB|bit0toF|bit0to7|bit4567|bit01|bit1|cout~0_combout\);

-- Location: LCCOMB_X93_Y41_N2
\wiring_THE_nPC|Mux6~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wiring_THE_nPC|Mux6~6_combout\ = \immS_B[6]~input_o\ $ (((\wiring_THE_nPC|wiringB|bit0toF|bit0to7|bit4567|bit01|bit1|cout~0_combout\ & ((\PC[5]~input_o\) # (\immS_B[5]~input_o\))) # 
-- (!\wiring_THE_nPC|wiringB|bit0toF|bit0to7|bit4567|bit01|bit1|cout~0_combout\ & (\PC[5]~input_o\ & \immS_B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wiring_THE_nPC|wiringB|bit0toF|bit0to7|bit4567|bit01|bit1|cout~0_combout\,
	datab => \PC[5]~input_o\,
	datac => \immS_B[5]~input_o\,
	datad => \immS_B[6]~input_o\,
	combout => \wiring_THE_nPC|Mux6~6_combout\);

-- Location: LCCOMB_X93_Y41_N8
\wiring_THE_nPC|Mux6~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wiring_THE_nPC|Mux6~4_combout\ = (\PCSEL[0]~input_o\ & (\wiring_THE_nPC|Mux6~6_combout\ $ ((\PC[6]~input_o\)))) # (!\PCSEL[0]~input_o\ & (((\PCADDING_1|z\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PCSEL[0]~input_o\,
	datab => \wiring_THE_nPC|Mux6~6_combout\,
	datac => \PC[6]~input_o\,
	datad => \PCADDING_1|z\(6),
	combout => \wiring_THE_nPC|Mux6~4_combout\);

-- Location: LCCOMB_X97_Y38_N26
\wiring_THE_nPC|Mux6~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wiring_THE_nPC|Mux6~5_combout\ = (\PCSEL[1]~input_o\ & (\WIRING_THE_ALU|Mux25~3_combout\)) # (!\PCSEL[1]~input_o\ & ((\wiring_THE_nPC|Mux6~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Mux25~3_combout\,
	datac => \PCSEL[1]~input_o\,
	datad => \wiring_THE_nPC|Mux6~4_combout\,
	combout => \wiring_THE_nPC|Mux6~5_combout\);

-- Location: LCCOMB_X93_Y41_N12
\wiring_THE_nPC|wiringB|bit0toF|bit0to7|bit4567|bit23|bit0|cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wiring_THE_nPC|wiringB|bit0toF|bit0to7|bit4567|bit23|bit0|cout~0_combout\ = (\wiring_THE_nPC|wiringB|bit0toF|bit0to7|bit4567|bit01|bit1|cout~0_combout\ & ((\immS_B[5]~input_o\) # (\PC[5]~input_o\))) # 
-- (!\wiring_THE_nPC|wiringB|bit0toF|bit0to7|bit4567|bit01|bit1|cout~0_combout\ & (\immS_B[5]~input_o\ & \PC[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wiring_THE_nPC|wiringB|bit0toF|bit0to7|bit4567|bit01|bit1|cout~0_combout\,
	datab => \immS_B[5]~input_o\,
	datad => \PC[5]~input_o\,
	combout => \wiring_THE_nPC|wiringB|bit0toF|bit0to7|bit4567|bit23|bit0|cout~0_combout\);

-- Location: LCCOMB_X93_Y41_N30
\wiring_THE_nPC|wiringB|bit0toF|bit0to7|bit4567|bit23|bit0|cout~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wiring_THE_nPC|wiringB|bit0toF|bit0to7|bit4567|bit23|bit0|cout~1_combout\ = (\wiring_THE_nPC|wiringB|bit0toF|bit0to7|bit4567|bit23|bit0|cout~0_combout\ & ((\PC[6]~input_o\) # (\immS_B[6]~input_o\))) # 
-- (!\wiring_THE_nPC|wiringB|bit0toF|bit0to7|bit4567|bit23|bit0|cout~0_combout\ & (\PC[6]~input_o\ & \immS_B[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wiring_THE_nPC|wiringB|bit0toF|bit0to7|bit4567|bit23|bit0|cout~0_combout\,
	datac => \PC[6]~input_o\,
	datad => \immS_B[6]~input_o\,
	combout => \wiring_THE_nPC|wiringB|bit0toF|bit0to7|bit4567|bit23|bit0|cout~1_combout\);

-- Location: LCCOMB_X89_Y42_N22
\wiring_THE_nPC|Mux7~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wiring_THE_nPC|Mux7~0_combout\ = (\PCSEL[0]~input_o\ & (\immS_B[7]~input_o\ $ (((\wiring_THE_nPC|wiringB|bit0toF|bit0to7|bit4567|bit23|bit0|cout~1_combout\))))) # (!\PCSEL[0]~input_o\ & (((\PCADDING_1|c\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PCSEL[0]~input_o\,
	datab => \immS_B[7]~input_o\,
	datac => \PCADDING_1|c\(6),
	datad => \wiring_THE_nPC|wiringB|bit0toF|bit0to7|bit4567|bit23|bit0|cout~1_combout\,
	combout => \wiring_THE_nPC|Mux7~0_combout\);

-- Location: LCCOMB_X70_Y53_N8
\wiring_THE_nPC|Mux7~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wiring_THE_nPC|Mux7~1_combout\ = (\PCSEL[1]~input_o\ & (((\WIRING_THE_ALU|Mux24~3_combout\)))) # (!\PCSEL[1]~input_o\ & (\wiring_THE_nPC|Mux7~0_combout\ $ ((\PC[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wiring_THE_nPC|Mux7~0_combout\,
	datab => \PCSEL[1]~input_o\,
	datac => \PC[7]~input_o\,
	datad => \WIRING_THE_ALU|Mux24~3_combout\,
	combout => \wiring_THE_nPC|Mux7~1_combout\);

-- Location: LCCOMB_X89_Y42_N16
\wiring_THE_nPC|Mux8~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wiring_THE_nPC|Mux8~0_combout\ = (\PC[7]~input_o\ & ((\immS_B[7]~input_o\) # ((\wiring_THE_nPC|wiringB|bit0toF|bit0to7|bit4567|bit23|bit0|cout~1_combout\) # (!\PCSEL[0]~input_o\)))) # (!\PC[7]~input_o\ & (\immS_B[7]~input_o\ & (\PCSEL[0]~input_o\ & 
-- \wiring_THE_nPC|wiringB|bit0toF|bit0to7|bit4567|bit23|bit0|cout~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[7]~input_o\,
	datab => \immS_B[7]~input_o\,
	datac => \PCSEL[0]~input_o\,
	datad => \wiring_THE_nPC|wiringB|bit0toF|bit0to7|bit4567|bit23|bit0|cout~1_combout\,
	combout => \wiring_THE_nPC|Mux8~0_combout\);

-- Location: LCCOMB_X89_Y42_N18
\wiring_THE_nPC|Mux8~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wiring_THE_nPC|Mux8~1_combout\ = (\PCSEL[0]~input_o\ & (\immS_B[8]~input_o\ $ (((\wiring_THE_nPC|Mux8~0_combout\))))) # (!\PCSEL[0]~input_o\ & (((\PCADDING_1|c\(6) & \wiring_THE_nPC|Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PCSEL[0]~input_o\,
	datab => \immS_B[8]~input_o\,
	datac => \PCADDING_1|c\(6),
	datad => \wiring_THE_nPC|Mux8~0_combout\,
	combout => \wiring_THE_nPC|Mux8~1_combout\);

-- Location: LCCOMB_X70_Y53_N28
\WIRING_THE_ALU|Mux23~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Mux23~3_combout\ = (\WIRING_THE_ALU|Mux23~0_combout\) # ((\WIRING_THE_ALU|Mux23~2_combout\ & !\ALUFunct[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WIRING_THE_ALU|Mux23~2_combout\,
	datac => \ALUFunct[1]~input_o\,
	datad => \WIRING_THE_ALU|Mux23~0_combout\,
	combout => \WIRING_THE_ALU|Mux23~3_combout\);

-- Location: LCCOMB_X70_Y53_N18
\wiring_THE_nPC|Mux8~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wiring_THE_nPC|Mux8~2_combout\ = (\PCSEL[1]~input_o\ & (((\WIRING_THE_ALU|Mux23~3_combout\)))) # (!\PCSEL[1]~input_o\ & (\wiring_THE_nPC|Mux8~1_combout\ $ ((\PC[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wiring_THE_nPC|Mux8~1_combout\,
	datab => \PCSEL[1]~input_o\,
	datac => \PC[8]~input_o\,
	datad => \WIRING_THE_ALU|Mux23~3_combout\,
	combout => \wiring_THE_nPC|Mux8~2_combout\);

-- Location: LCCOMB_X89_Y42_N6
\wiring_THE_nPC|wiringB|bit0toF|bit8toF|bit0123|bit01|bit0|cout~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wiring_THE_nPC|wiringB|bit0toF|bit8toF|bit0123|bit01|bit0|cout~1_combout\ = (\PC[8]~input_o\) # (\immS_B[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[8]~input_o\,
	datad => \immS_B[8]~input_o\,
	combout => \wiring_THE_nPC|wiringB|bit0toF|bit8toF|bit0123|bit01|bit0|cout~1_combout\);

-- Location: LCCOMB_X89_Y42_N24
\wiring_THE_nPC|wiringB|bit0toF|bit8toF|bit0123|bit01|bit0|cout~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wiring_THE_nPC|wiringB|bit0toF|bit8toF|bit0123|bit01|bit0|cout~2_combout\ = (\wiring_THE_nPC|wiringB|bit0toF|bit8toF|bit0123|bit01|bit0|cout~1_combout\ & ((\immS_B[7]~input_o\ & ((\PC[7]~input_o\) # 
-- (\wiring_THE_nPC|wiringB|bit0toF|bit0to7|bit4567|bit23|bit0|cout~1_combout\))) # (!\immS_B[7]~input_o\ & (\PC[7]~input_o\ & \wiring_THE_nPC|wiringB|bit0toF|bit0to7|bit4567|bit23|bit0|cout~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wiring_THE_nPC|wiringB|bit0toF|bit8toF|bit0123|bit01|bit0|cout~1_combout\,
	datab => \immS_B[7]~input_o\,
	datac => \PC[7]~input_o\,
	datad => \wiring_THE_nPC|wiringB|bit0toF|bit0to7|bit4567|bit23|bit0|cout~1_combout\,
	combout => \wiring_THE_nPC|wiringB|bit0toF|bit8toF|bit0123|bit01|bit0|cout~2_combout\);

-- Location: LCCOMB_X89_Y42_N14
\wiring_THE_nPC|Mux9~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wiring_THE_nPC|Mux9~4_combout\ = \immS_B[9]~input_o\ $ (((\wiring_THE_nPC|wiringB|bit0toF|bit8toF|bit0123|bit01|bit0|cout~2_combout\) # ((\PC[8]~input_o\ & \immS_B[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[8]~input_o\,
	datab => \immS_B[8]~input_o\,
	datac => \immS_B[9]~input_o\,
	datad => \wiring_THE_nPC|wiringB|bit0toF|bit8toF|bit0123|bit01|bit0|cout~2_combout\,
	combout => \wiring_THE_nPC|Mux9~4_combout\);

-- Location: LCCOMB_X89_Y42_N26
\wiring_THE_nPC|Mux9~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wiring_THE_nPC|Mux9~2_combout\ = (\PCSEL[0]~input_o\ & (\PC[9]~input_o\ $ ((\wiring_THE_nPC|Mux9~4_combout\)))) # (!\PCSEL[0]~input_o\ & (((\PCADDING_1|z\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[9]~input_o\,
	datab => \wiring_THE_nPC|Mux9~4_combout\,
	datac => \PCSEL[0]~input_o\,
	datad => \PCADDING_1|z\(9),
	combout => \wiring_THE_nPC|Mux9~2_combout\);

-- Location: LCCOMB_X97_Y38_N4
\wiring_THE_nPC|Mux9~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wiring_THE_nPC|Mux9~3_combout\ = (\PCSEL[1]~input_o\ & (\WIRING_THE_ALU|Mux22~3_combout\)) # (!\PCSEL[1]~input_o\ & ((\wiring_THE_nPC|Mux9~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Mux22~3_combout\,
	datac => \PCSEL[1]~input_o\,
	datad => \wiring_THE_nPC|Mux9~2_combout\,
	combout => \wiring_THE_nPC|Mux9~3_combout\);

-- Location: LCCOMB_X89_Y42_N28
\wiring_THE_nPC|wiringB|bit0toF|bit8toF|bit0123|bit01|bit0|cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wiring_THE_nPC|wiringB|bit0toF|bit8toF|bit0123|bit01|bit0|cout~0_combout\ = (\PC[8]~input_o\ & \immS_B[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[8]~input_o\,
	datad => \immS_B[8]~input_o\,
	combout => \wiring_THE_nPC|wiringB|bit0toF|bit8toF|bit0123|bit01|bit0|cout~0_combout\);

-- Location: LCCOMB_X89_Y42_N4
\wiring_THE_nPC|wiringB|bit0toF|bit8toF|bit0123|bit01|bit1|cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wiring_THE_nPC|wiringB|bit0toF|bit8toF|bit0123|bit01|bit1|cout~0_combout\ = (\PC[9]~input_o\ & ((\wiring_THE_nPC|wiringB|bit0toF|bit8toF|bit0123|bit01|bit0|cout~2_combout\) # ((\immS_B[9]~input_o\) # 
-- (\wiring_THE_nPC|wiringB|bit0toF|bit8toF|bit0123|bit01|bit0|cout~0_combout\)))) # (!\PC[9]~input_o\ & (\immS_B[9]~input_o\ & ((\wiring_THE_nPC|wiringB|bit0toF|bit8toF|bit0123|bit01|bit0|cout~2_combout\) # 
-- (\wiring_THE_nPC|wiringB|bit0toF|bit8toF|bit0123|bit01|bit0|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[9]~input_o\,
	datab => \wiring_THE_nPC|wiringB|bit0toF|bit8toF|bit0123|bit01|bit0|cout~2_combout\,
	datac => \immS_B[9]~input_o\,
	datad => \wiring_THE_nPC|wiringB|bit0toF|bit8toF|bit0123|bit01|bit0|cout~0_combout\,
	combout => \wiring_THE_nPC|wiringB|bit0toF|bit8toF|bit0123|bit01|bit1|cout~0_combout\);

-- Location: LCCOMB_X89_Y34_N14
\wiring_THE_nPC|Mux10~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wiring_THE_nPC|Mux10~0_combout\ = (\PCSEL[0]~input_o\ & ((\wiring_THE_nPC|wiringB|bit0toF|bit8toF|bit0123|bit01|bit1|cout~0_combout\ $ (\immS_B[10]~input_o\)))) # (!\PCSEL[0]~input_o\ & (\PCADDING_1|c\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PCSEL[0]~input_o\,
	datab => \PCADDING_1|c\(9),
	datac => \wiring_THE_nPC|wiringB|bit0toF|bit8toF|bit0123|bit01|bit1|cout~0_combout\,
	datad => \immS_B[10]~input_o\,
	combout => \wiring_THE_nPC|Mux10~0_combout\);

-- Location: LCCOMB_X89_Y34_N16
\wiring_THE_nPC|Mux10~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wiring_THE_nPC|Mux10~1_combout\ = (\PCSEL[1]~input_o\ & (\WIRING_THE_ALU|Mux21~3_combout\)) # (!\PCSEL[1]~input_o\ & ((\wiring_THE_nPC|Mux10~0_combout\ $ (\PC[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Mux21~3_combout\,
	datab => \wiring_THE_nPC|Mux10~0_combout\,
	datac => \PC[10]~input_o\,
	datad => \PCSEL[1]~input_o\,
	combout => \wiring_THE_nPC|Mux10~1_combout\);

-- Location: LCCOMB_X89_Y34_N22
\wiring_THE_nPC|Mux11~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wiring_THE_nPC|Mux11~1_combout\ = (!\PCSEL[0]~input_o\ & (\PC[11]~input_o\ $ (((\PC[10]~input_o\ & \PCADDING_1|c\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PCSEL[0]~input_o\,
	datab => \PC[10]~input_o\,
	datac => \PC[11]~input_o\,
	datad => \PCADDING_1|c\(9),
	combout => \wiring_THE_nPC|Mux11~1_combout\);

-- Location: LCCOMB_X89_Y34_N10
\wiring_THE_nPC|wiringB|bit0toF|bit8toF|bit0123|bit23|bit0|cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wiring_THE_nPC|wiringB|bit0toF|bit8toF|bit0123|bit23|bit0|cout~0_combout\ = (\PC[10]~input_o\ & ((\wiring_THE_nPC|wiringB|bit0toF|bit8toF|bit0123|bit01|bit1|cout~0_combout\) # (\immS_B[10]~input_o\))) # (!\PC[10]~input_o\ & 
-- (\wiring_THE_nPC|wiringB|bit0toF|bit8toF|bit0123|bit01|bit1|cout~0_combout\ & \immS_B[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC[10]~input_o\,
	datac => \wiring_THE_nPC|wiringB|bit0toF|bit8toF|bit0123|bit01|bit1|cout~0_combout\,
	datad => \immS_B[10]~input_o\,
	combout => \wiring_THE_nPC|wiringB|bit0toF|bit8toF|bit0123|bit23|bit0|cout~0_combout\);

-- Location: LCCOMB_X89_Y34_N28
\wiring_THE_nPC|Mux11~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wiring_THE_nPC|Mux11~0_combout\ = (\PCSEL[0]~input_o\ & (\immS_B[11]~input_o\ $ (\PC[11]~input_o\ $ (\wiring_THE_nPC|wiringB|bit0toF|bit8toF|bit0123|bit23|bit0|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PCSEL[0]~input_o\,
	datab => \immS_B[11]~input_o\,
	datac => \PC[11]~input_o\,
	datad => \wiring_THE_nPC|wiringB|bit0toF|bit8toF|bit0123|bit23|bit0|cout~0_combout\,
	combout => \wiring_THE_nPC|Mux11~0_combout\);

-- Location: LCCOMB_X89_Y34_N8
\wiring_THE_nPC|Mux11~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wiring_THE_nPC|Mux11~2_combout\ = (\PCSEL[1]~input_o\ & (\WIRING_THE_ALU|Mux20~3_combout\)) # (!\PCSEL[1]~input_o\ & (((\wiring_THE_nPC|Mux11~1_combout\) # (\wiring_THE_nPC|Mux11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PCSEL[1]~input_o\,
	datab => \WIRING_THE_ALU|Mux20~3_combout\,
	datac => \wiring_THE_nPC|Mux11~1_combout\,
	datad => \wiring_THE_nPC|Mux11~0_combout\,
	combout => \wiring_THE_nPC|Mux11~2_combout\);

-- Location: LCCOMB_X89_Y40_N12
\wiring_THE_nPC|wiringB|bit0toF|bit8toF|bit4567|bit01|bit0|s~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wiring_THE_nPC|wiringB|bit0toF|bit8toF|bit4567|bit01|bit0|s~0_combout\ = \immS_B[12]~input_o\ $ (\PC[12]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \immS_B[12]~input_o\,
	datad => \PC[12]~input_o\,
	combout => \wiring_THE_nPC|wiringB|bit0toF|bit8toF|bit4567|bit01|bit0|s~0_combout\);

-- Location: LCCOMB_X89_Y34_N2
\wiring_THE_nPC|wiringB|bit0toF|bit8toF|bit0123|bit23|bit1|cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wiring_THE_nPC|wiringB|bit0toF|bit8toF|bit0123|bit23|bit1|cout~0_combout\ = (\immS_B[11]~input_o\ & ((\PC[11]~input_o\) # (\wiring_THE_nPC|wiringB|bit0toF|bit8toF|bit0123|bit23|bit0|cout~0_combout\))) # (!\immS_B[11]~input_o\ & (\PC[11]~input_o\ & 
-- \wiring_THE_nPC|wiringB|bit0toF|bit8toF|bit0123|bit23|bit0|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \immS_B[11]~input_o\,
	datac => \PC[11]~input_o\,
	datad => \wiring_THE_nPC|wiringB|bit0toF|bit8toF|bit0123|bit23|bit0|cout~0_combout\,
	combout => \wiring_THE_nPC|wiringB|bit0toF|bit8toF|bit0123|bit23|bit1|cout~0_combout\);

-- Location: LCCOMB_X89_Y40_N14
\wiring_THE_nPC|Mux12~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wiring_THE_nPC|Mux12~0_combout\ = (\PCSEL[0]~input_o\ & (\wiring_THE_nPC|wiringB|bit0toF|bit8toF|bit4567|bit01|bit0|s~0_combout\ $ ((\wiring_THE_nPC|wiringB|bit0toF|bit8toF|bit0123|bit23|bit1|cout~0_combout\)))) # (!\PCSEL[0]~input_o\ & 
-- (((\PCADDING_1|z\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wiring_THE_nPC|wiringB|bit0toF|bit8toF|bit4567|bit01|bit0|s~0_combout\,
	datab => \PCSEL[0]~input_o\,
	datac => \wiring_THE_nPC|wiringB|bit0toF|bit8toF|bit0123|bit23|bit1|cout~0_combout\,
	datad => \PCADDING_1|z\(12),
	combout => \wiring_THE_nPC|Mux12~0_combout\);

-- Location: LCCOMB_X97_Y38_N22
\wiring_THE_nPC|Mux12~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wiring_THE_nPC|Mux12~1_combout\ = (\PCSEL[1]~input_o\ & ((\WIRING_THE_ALU|Mux19~3_combout\))) # (!\PCSEL[1]~input_o\ & (\wiring_THE_nPC|Mux12~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wiring_THE_nPC|Mux12~0_combout\,
	datac => \PCSEL[1]~input_o\,
	datad => \WIRING_THE_ALU|Mux19~3_combout\,
	combout => \wiring_THE_nPC|Mux12~1_combout\);

-- Location: LCCOMB_X89_Y40_N0
\wiring_THE_nPC|wiringB|bit0toF|bit8toF|bit4567|bit01|bit0|cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wiring_THE_nPC|wiringB|bit0toF|bit8toF|bit4567|bit01|bit0|cout~0_combout\ = (\wiring_THE_nPC|wiringB|bit0toF|bit8toF|bit0123|bit23|bit1|cout~0_combout\ & ((\immS_B[12]~input_o\) # (\PC[12]~input_o\))) # 
-- (!\wiring_THE_nPC|wiringB|bit0toF|bit8toF|bit0123|bit23|bit1|cout~0_combout\ & (\immS_B[12]~input_o\ & \PC[12]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wiring_THE_nPC|wiringB|bit0toF|bit8toF|bit0123|bit23|bit1|cout~0_combout\,
	datab => \immS_B[12]~input_o\,
	datad => \PC[12]~input_o\,
	combout => \wiring_THE_nPC|wiringB|bit0toF|bit8toF|bit4567|bit01|bit0|cout~0_combout\);

-- Location: LCCOMB_X89_Y40_N18
\wiring_THE_nPC|Mux13~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wiring_THE_nPC|Mux13~0_combout\ = (\PCSEL[0]~input_o\ & ((\wiring_THE_nPC|wiringB|bit0toF|bit8toF|bit4567|bit01|bit0|cout~0_combout\ $ (\immS_B[13]~input_o\)))) # (!\PCSEL[0]~input_o\ & (\PCADDING_1|c\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PCADDING_1|c\(12),
	datab => \wiring_THE_nPC|wiringB|bit0toF|bit8toF|bit4567|bit01|bit0|cout~0_combout\,
	datac => \PCSEL[0]~input_o\,
	datad => \immS_B[13]~input_o\,
	combout => \wiring_THE_nPC|Mux13~0_combout\);

-- Location: LCCOMB_X89_Y40_N20
\wiring_THE_nPC|Mux13~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wiring_THE_nPC|Mux13~1_combout\ = (\PCSEL[1]~input_o\ & (((\WIRING_THE_ALU|Mux18~3_combout\)))) # (!\PCSEL[1]~input_o\ & (\PC[13]~input_o\ $ (((\wiring_THE_nPC|Mux13~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[13]~input_o\,
	datab => \PCSEL[1]~input_o\,
	datac => \WIRING_THE_ALU|Mux18~3_combout\,
	datad => \wiring_THE_nPC|Mux13~0_combout\,
	combout => \wiring_THE_nPC|Mux13~1_combout\);

-- Location: LCCOMB_X88_Y40_N30
\wiring_THE_nPC|Mux14~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wiring_THE_nPC|Mux14~1_combout\ = (!\PCSEL[0]~input_o\ & (\PC[14]~input_o\ $ (((\PC[13]~input_o\ & \PCADDING_1|c\(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[13]~input_o\,
	datab => \PCADDING_1|c\(12),
	datac => \PCSEL[0]~input_o\,
	datad => \PC[14]~input_o\,
	combout => \wiring_THE_nPC|Mux14~1_combout\);

-- Location: LCCOMB_X89_Y40_N22
\wiring_THE_nPC|wiringB|bit0toF|bit8toF|bit4567|bit01|bit1|cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wiring_THE_nPC|wiringB|bit0toF|bit8toF|bit4567|bit01|bit1|cout~0_combout\ = (\wiring_THE_nPC|wiringB|bit0toF|bit8toF|bit4567|bit01|bit0|cout~0_combout\ & ((\PC[13]~input_o\) # (\immS_B[13]~input_o\))) # 
-- (!\wiring_THE_nPC|wiringB|bit0toF|bit8toF|bit4567|bit01|bit0|cout~0_combout\ & (\PC[13]~input_o\ & \immS_B[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wiring_THE_nPC|wiringB|bit0toF|bit8toF|bit4567|bit01|bit0|cout~0_combout\,
	datac => \PC[13]~input_o\,
	datad => \immS_B[13]~input_o\,
	combout => \wiring_THE_nPC|wiringB|bit0toF|bit8toF|bit4567|bit01|bit1|cout~0_combout\);

-- Location: LCCOMB_X88_Y40_N28
\wiring_THE_nPC|Mux14~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wiring_THE_nPC|Mux14~0_combout\ = (\PCSEL[0]~input_o\ & (\immS_B[14]~input_o\ $ (\wiring_THE_nPC|wiringB|bit0toF|bit8toF|bit4567|bit01|bit1|cout~0_combout\ $ (\PC[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \immS_B[14]~input_o\,
	datab => \wiring_THE_nPC|wiringB|bit0toF|bit8toF|bit4567|bit01|bit1|cout~0_combout\,
	datac => \PCSEL[0]~input_o\,
	datad => \PC[14]~input_o\,
	combout => \wiring_THE_nPC|Mux14~0_combout\);

-- Location: LCCOMB_X88_Y40_N0
\wiring_THE_nPC|Mux14~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wiring_THE_nPC|Mux14~2_combout\ = (\PCSEL[1]~input_o\ & (\WIRING_THE_ALU|Mux17~3_combout\)) # (!\PCSEL[1]~input_o\ & (((\wiring_THE_nPC|Mux14~1_combout\) # (\wiring_THE_nPC|Mux14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PCSEL[1]~input_o\,
	datab => \WIRING_THE_ALU|Mux17~3_combout\,
	datac => \wiring_THE_nPC|Mux14~1_combout\,
	datad => \wiring_THE_nPC|Mux14~0_combout\,
	combout => \wiring_THE_nPC|Mux14~2_combout\);

-- Location: LCCOMB_X88_Y40_N2
\wiring_THE_nPC|wiringB|bit0toF|bit8toF|bit4567|bit23|bit0|cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wiring_THE_nPC|wiringB|bit0toF|bit8toF|bit4567|bit23|bit0|cout~0_combout\ = (\immS_B[14]~input_o\ & ((\wiring_THE_nPC|wiringB|bit0toF|bit8toF|bit4567|bit01|bit1|cout~0_combout\) # (\PC[14]~input_o\))) # (!\immS_B[14]~input_o\ & 
-- (\wiring_THE_nPC|wiringB|bit0toF|bit8toF|bit4567|bit01|bit1|cout~0_combout\ & \PC[14]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \immS_B[14]~input_o\,
	datab => \wiring_THE_nPC|wiringB|bit0toF|bit8toF|bit4567|bit01|bit1|cout~0_combout\,
	datad => \PC[14]~input_o\,
	combout => \wiring_THE_nPC|wiringB|bit0toF|bit8toF|bit4567|bit23|bit0|cout~0_combout\);

-- Location: LCCOMB_X88_Y40_N12
\wiring_THE_nPC|Mux15~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wiring_THE_nPC|Mux15~0_combout\ = (\PCSEL[0]~input_o\ & (\PC[15]~input_o\ $ (\immS_B[15]~input_o\ $ (\wiring_THE_nPC|wiringB|bit0toF|bit8toF|bit4567|bit23|bit0|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[15]~input_o\,
	datab => \immS_B[15]~input_o\,
	datac => \PCSEL[0]~input_o\,
	datad => \wiring_THE_nPC|wiringB|bit0toF|bit8toF|bit4567|bit23|bit0|cout~0_combout\,
	combout => \wiring_THE_nPC|Mux15~0_combout\);

-- Location: LCCOMB_X88_Y40_N6
\wiring_THE_nPC|Mux15~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wiring_THE_nPC|Mux15~1_combout\ = (!\PCSEL[1]~input_o\ & ((\wiring_THE_nPC|Mux15~0_combout\) # ((\PCADDING_1|z\(15) & !\PCSEL[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PCSEL[1]~input_o\,
	datab => \PCADDING_1|z\(15),
	datac => \PCSEL[0]~input_o\,
	datad => \wiring_THE_nPC|Mux15~0_combout\,
	combout => \wiring_THE_nPC|Mux15~1_combout\);

-- Location: LCCOMB_X89_Y34_N4
\wiring_THE_nPC|Mux15~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wiring_THE_nPC|Mux15~2_combout\ = (\wiring_THE_nPC|Mux15~1_combout\) # ((\WIRING_THE_ALU|Mux16~3_combout\ & \PCSEL[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WIRING_THE_ALU|Mux16~3_combout\,
	datac => \wiring_THE_nPC|Mux15~1_combout\,
	datad => \PCSEL[1]~input_o\,
	combout => \wiring_THE_nPC|Mux15~2_combout\);

-- Location: LCCOMB_X88_Y40_N24
\wiring_THE_nPC|wiringB|bit0toF|bit8toF|bit4567|bit23|bit1|cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wiring_THE_nPC|wiringB|bit0toF|bit8toF|bit4567|bit23|bit1|cout~0_combout\ = (\immS_B[15]~input_o\ & ((\PC[15]~input_o\) # (\wiring_THE_nPC|wiringB|bit0toF|bit8toF|bit4567|bit23|bit0|cout~0_combout\))) # (!\immS_B[15]~input_o\ & (\PC[15]~input_o\ & 
-- \wiring_THE_nPC|wiringB|bit0toF|bit8toF|bit4567|bit23|bit0|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \immS_B[15]~input_o\,
	datac => \PC[15]~input_o\,
	datad => \wiring_THE_nPC|wiringB|bit0toF|bit8toF|bit4567|bit23|bit0|cout~0_combout\,
	combout => \wiring_THE_nPC|wiringB|bit0toF|bit8toF|bit4567|bit23|bit1|cout~0_combout\);

-- Location: LCCOMB_X88_Y40_N26
\wiring_THE_nPC|Mux16~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wiring_THE_nPC|Mux16~0_combout\ = (\PCSEL[0]~input_o\ & ((\wiring_THE_nPC|wiringB|bit0toF|bit8toF|bit4567|bit23|bit1|cout~0_combout\ $ (\immS_B[16]~input_o\)))) # (!\PCSEL[0]~input_o\ & (\PCADDING_1|c\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PCADDING_1|c\(15),
	datab => \wiring_THE_nPC|wiringB|bit0toF|bit8toF|bit4567|bit23|bit1|cout~0_combout\,
	datac => \PCSEL[0]~input_o\,
	datad => \immS_B[16]~input_o\,
	combout => \wiring_THE_nPC|Mux16~0_combout\);

-- Location: LCCOMB_X88_Y40_N4
\wiring_THE_nPC|Mux16~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wiring_THE_nPC|Mux16~1_combout\ = (\PCSEL[1]~input_o\ & (\WIRING_THE_ALU|Mux15~3_combout\)) # (!\PCSEL[1]~input_o\ & ((\wiring_THE_nPC|Mux16~0_combout\ $ (\PC[16]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PCSEL[1]~input_o\,
	datab => \WIRING_THE_ALU|Mux15~3_combout\,
	datac => \wiring_THE_nPC|Mux16~0_combout\,
	datad => \PC[16]~input_o\,
	combout => \wiring_THE_nPC|Mux16~1_combout\);

-- Location: LCCOMB_X86_Y54_N26
\wiring_THE_nPC|Mux17~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wiring_THE_nPC|Mux17~1_combout\ = (!\PCSEL[0]~input_o\ & (\PC[17]~input_o\ $ (((\PCADDING_1|c\(15) & \PC[16]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PCADDING_1|c\(15),
	datab => \PC[16]~input_o\,
	datac => \PCSEL[0]~input_o\,
	datad => \PC[17]~input_o\,
	combout => \wiring_THE_nPC|Mux17~1_combout\);

-- Location: LCCOMB_X88_Y40_N22
\wiring_THE_nPC|wiringB|bit16to31|bit0to7|bit0123|bit01|bit0|cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wiring_THE_nPC|wiringB|bit16to31|bit0to7|bit0123|bit01|bit0|cout~0_combout\ = (\PC[16]~input_o\ & ((\wiring_THE_nPC|wiringB|bit0toF|bit8toF|bit4567|bit23|bit1|cout~0_combout\) # (\immS_B[16]~input_o\))) # (!\PC[16]~input_o\ & 
-- (\wiring_THE_nPC|wiringB|bit0toF|bit8toF|bit4567|bit23|bit1|cout~0_combout\ & \immS_B[16]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[16]~input_o\,
	datab => \wiring_THE_nPC|wiringB|bit0toF|bit8toF|bit4567|bit23|bit1|cout~0_combout\,
	datad => \immS_B[16]~input_o\,
	combout => \wiring_THE_nPC|wiringB|bit16to31|bit0to7|bit0123|bit01|bit0|cout~0_combout\);

-- Location: LCCOMB_X86_Y54_N8
\wiring_THE_nPC|Mux17~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wiring_THE_nPC|Mux17~0_combout\ = (\PCSEL[0]~input_o\ & (\immS_B[17]~input_o\ $ (\wiring_THE_nPC|wiringB|bit16to31|bit0to7|bit0123|bit01|bit0|cout~0_combout\ $ (\PC[17]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \immS_B[17]~input_o\,
	datab => \wiring_THE_nPC|wiringB|bit16to31|bit0to7|bit0123|bit01|bit0|cout~0_combout\,
	datac => \PCSEL[0]~input_o\,
	datad => \PC[17]~input_o\,
	combout => \wiring_THE_nPC|Mux17~0_combout\);

-- Location: LCCOMB_X71_Y55_N12
\WIRING_THE_ALU|Mux14~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Mux14~3_combout\ = (\WIRING_THE_ALU|Mux14~0_combout\) # ((\WIRING_THE_ALU|Mux14~2_combout\ & !\ALUFunct[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WIRING_THE_ALU|Mux14~2_combout\,
	datac => \ALUFunct[1]~input_o\,
	datad => \WIRING_THE_ALU|Mux14~0_combout\,
	combout => \WIRING_THE_ALU|Mux14~3_combout\);

-- Location: LCCOMB_X86_Y54_N28
\wiring_THE_nPC|Mux17~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wiring_THE_nPC|Mux17~2_combout\ = (\PCSEL[1]~input_o\ & (((\WIRING_THE_ALU|Mux14~3_combout\)))) # (!\PCSEL[1]~input_o\ & ((\wiring_THE_nPC|Mux17~1_combout\) # ((\wiring_THE_nPC|Mux17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wiring_THE_nPC|Mux17~1_combout\,
	datab => \PCSEL[1]~input_o\,
	datac => \wiring_THE_nPC|Mux17~0_combout\,
	datad => \WIRING_THE_ALU|Mux14~3_combout\,
	combout => \wiring_THE_nPC|Mux17~2_combout\);

-- Location: LCCOMB_X86_Y54_N6
\wiring_THE_nPC|wiringB|bit16to31|bit0to7|bit0123|bit01|bit1|cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wiring_THE_nPC|wiringB|bit16to31|bit0to7|bit0123|bit01|bit1|cout~0_combout\ = (\PC[17]~input_o\ & ((\immS_B[17]~input_o\) # (\wiring_THE_nPC|wiringB|bit16to31|bit0to7|bit0123|bit01|bit0|cout~0_combout\))) # (!\PC[17]~input_o\ & (\immS_B[17]~input_o\ & 
-- \wiring_THE_nPC|wiringB|bit16to31|bit0to7|bit0123|bit01|bit0|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[17]~input_o\,
	datac => \immS_B[17]~input_o\,
	datad => \wiring_THE_nPC|wiringB|bit16to31|bit0to7|bit0123|bit01|bit0|cout~0_combout\,
	combout => \wiring_THE_nPC|wiringB|bit16to31|bit0to7|bit0123|bit01|bit1|cout~0_combout\);

-- Location: LCCOMB_X86_Y54_N0
\wiring_THE_nPC|Mux18~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wiring_THE_nPC|Mux18~0_combout\ = (\PCSEL[0]~input_o\ & (\wiring_THE_nPC|wiringB|bit16to31|bit0to7|bit0123|bit01|bit1|cout~0_combout\ $ (\immS_B[18]~input_o\ $ (\PC[18]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wiring_THE_nPC|wiringB|bit16to31|bit0to7|bit0123|bit01|bit1|cout~0_combout\,
	datab => \immS_B[18]~input_o\,
	datac => \PCSEL[0]~input_o\,
	datad => \PC[18]~input_o\,
	combout => \wiring_THE_nPC|Mux18~0_combout\);

-- Location: LCCOMB_X86_Y54_N2
\wiring_THE_nPC|Mux18~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wiring_THE_nPC|Mux18~1_combout\ = (!\PCSEL[1]~input_o\ & ((\wiring_THE_nPC|Mux18~0_combout\) # ((\PCADDING_1|z\(18) & !\PCSEL[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PCADDING_1|z\(18),
	datab => \PCSEL[0]~input_o\,
	datac => \PCSEL[1]~input_o\,
	datad => \wiring_THE_nPC|Mux18~0_combout\,
	combout => \wiring_THE_nPC|Mux18~1_combout\);

-- Location: LCCOMB_X86_Y54_N20
\wiring_THE_nPC|Mux18~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wiring_THE_nPC|Mux18~2_combout\ = (\wiring_THE_nPC|Mux18~1_combout\) # ((\PCSEL[1]~input_o\ & \WIRING_THE_ALU|Mux13~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PCSEL[1]~input_o\,
	datac => \WIRING_THE_ALU|Mux13~3_combout\,
	datad => \wiring_THE_nPC|Mux18~1_combout\,
	combout => \wiring_THE_nPC|Mux18~2_combout\);

-- Location: LCCOMB_X86_Y54_N22
\wiring_THE_nPC|wiringB|bit16to31|bit0to7|bit0123|bit23|bit0|cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wiring_THE_nPC|wiringB|bit16to31|bit0to7|bit0123|bit23|bit0|cout~0_combout\ = (\wiring_THE_nPC|wiringB|bit16to31|bit0to7|bit0123|bit01|bit1|cout~0_combout\ & ((\immS_B[18]~input_o\) # (\PC[18]~input_o\))) # 
-- (!\wiring_THE_nPC|wiringB|bit16to31|bit0to7|bit0123|bit01|bit1|cout~0_combout\ & (\immS_B[18]~input_o\ & \PC[18]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wiring_THE_nPC|wiringB|bit16to31|bit0to7|bit0123|bit01|bit1|cout~0_combout\,
	datab => \immS_B[18]~input_o\,
	datad => \PC[18]~input_o\,
	combout => \wiring_THE_nPC|wiringB|bit16to31|bit0to7|bit0123|bit23|bit0|cout~0_combout\);

-- Location: LCCOMB_X85_Y59_N28
\wiring_THE_nPC|Mux19~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wiring_THE_nPC|Mux19~0_combout\ = (\PCSEL[0]~input_o\ & ((\immS_B[19]~input_o\ $ (\wiring_THE_nPC|wiringB|bit16to31|bit0to7|bit0123|bit23|bit0|cout~0_combout\)))) # (!\PCSEL[0]~input_o\ & (\PCADDING_1|c\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PCADDING_1|c\(18),
	datab => \immS_B[19]~input_o\,
	datac => \wiring_THE_nPC|wiringB|bit16to31|bit0to7|bit0123|bit23|bit0|cout~0_combout\,
	datad => \PCSEL[0]~input_o\,
	combout => \wiring_THE_nPC|Mux19~0_combout\);

-- Location: LCCOMB_X85_Y59_N22
\wiring_THE_nPC|Mux19~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wiring_THE_nPC|Mux19~1_combout\ = (\PCSEL[1]~input_o\ & (((\WIRING_THE_ALU|Mux12~4_combout\)))) # (!\PCSEL[1]~input_o\ & (\PC[19]~input_o\ $ (((\wiring_THE_nPC|Mux19~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[19]~input_o\,
	datab => \WIRING_THE_ALU|Mux12~4_combout\,
	datac => \PCSEL[1]~input_o\,
	datad => \wiring_THE_nPC|Mux19~0_combout\,
	combout => \wiring_THE_nPC|Mux19~1_combout\);

-- Location: LCCOMB_X85_Y59_N4
\wiring_THE_nPC|Mux20~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wiring_THE_nPC|Mux20~1_combout\ = (!\PCSEL[0]~input_o\ & (\PC[20]~input_o\ $ (((\PCADDING_1|c\(18) & \PC[19]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PCADDING_1|c\(18),
	datab => \PC[20]~input_o\,
	datac => \PC[19]~input_o\,
	datad => \PCSEL[0]~input_o\,
	combout => \wiring_THE_nPC|Mux20~1_combout\);

-- Location: LCCOMB_X85_Y59_N0
\wiring_THE_nPC|wiringB|bit16to31|bit0to7|bit0123|bit23|bit1|cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wiring_THE_nPC|wiringB|bit16to31|bit0to7|bit0123|bit23|bit1|cout~0_combout\ = (\wiring_THE_nPC|wiringB|bit16to31|bit0to7|bit0123|bit23|bit0|cout~0_combout\ & ((\PC[19]~input_o\) # (\immS_B[19]~input_o\))) # 
-- (!\wiring_THE_nPC|wiringB|bit16to31|bit0to7|bit0123|bit23|bit0|cout~0_combout\ & (\PC[19]~input_o\ & \immS_B[19]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wiring_THE_nPC|wiringB|bit16to31|bit0to7|bit0123|bit23|bit0|cout~0_combout\,
	datac => \PC[19]~input_o\,
	datad => \immS_B[19]~input_o\,
	combout => \wiring_THE_nPC|wiringB|bit16to31|bit0to7|bit0123|bit23|bit1|cout~0_combout\);

-- Location: LCCOMB_X85_Y59_N10
\wiring_THE_nPC|Mux20~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wiring_THE_nPC|Mux20~0_combout\ = (\PCSEL[0]~input_o\ & (\immS_B[20]~input_o\ $ (\PC[20]~input_o\ $ (\wiring_THE_nPC|wiringB|bit16to31|bit0to7|bit0123|bit23|bit1|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PCSEL[0]~input_o\,
	datab => \immS_B[20]~input_o\,
	datac => \PC[20]~input_o\,
	datad => \wiring_THE_nPC|wiringB|bit16to31|bit0to7|bit0123|bit23|bit1|cout~0_combout\,
	combout => \wiring_THE_nPC|Mux20~0_combout\);

-- Location: LCCOMB_X85_Y59_N14
\wiring_THE_nPC|Mux20~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wiring_THE_nPC|Mux20~2_combout\ = (\PCSEL[1]~input_o\ & (\WIRING_THE_ALU|Mux11~3_combout\)) # (!\PCSEL[1]~input_o\ & (((\wiring_THE_nPC|Mux20~1_combout\) # (\wiring_THE_nPC|Mux20~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Mux11~3_combout\,
	datab => \wiring_THE_nPC|Mux20~1_combout\,
	datac => \PCSEL[1]~input_o\,
	datad => \wiring_THE_nPC|Mux20~0_combout\,
	combout => \wiring_THE_nPC|Mux20~2_combout\);

-- Location: LCCOMB_X85_Y59_N12
\wiring_THE_nPC|Mux21~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wiring_THE_nPC|Mux21~1_combout\ = (!\PCSEL[0]~input_o\ & \PCADDING_1|z\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PCSEL[0]~input_o\,
	datad => \PCADDING_1|z\(21),
	combout => \wiring_THE_nPC|Mux21~1_combout\);

-- Location: LCCOMB_X85_Y59_N24
\wiring_THE_nPC|wiringB|bit16to31|bit0to7|bit4567|bit01|bit0|cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wiring_THE_nPC|wiringB|bit16to31|bit0to7|bit4567|bit01|bit0|cout~0_combout\ = (\immS_B[20]~input_o\ & ((\PC[20]~input_o\) # (\wiring_THE_nPC|wiringB|bit16to31|bit0to7|bit0123|bit23|bit1|cout~0_combout\))) # (!\immS_B[20]~input_o\ & (\PC[20]~input_o\ & 
-- \wiring_THE_nPC|wiringB|bit16to31|bit0to7|bit0123|bit23|bit1|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \immS_B[20]~input_o\,
	datac => \PC[20]~input_o\,
	datad => \wiring_THE_nPC|wiringB|bit16to31|bit0to7|bit0123|bit23|bit1|cout~0_combout\,
	combout => \wiring_THE_nPC|wiringB|bit16to31|bit0to7|bit4567|bit01|bit0|cout~0_combout\);

-- Location: LCCOMB_X85_Y59_N2
\wiring_THE_nPC|Mux21~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wiring_THE_nPC|Mux21~0_combout\ = (\PCSEL[0]~input_o\ & (\PC[21]~input_o\ $ (\immS_B[21]~input_o\ $ (\wiring_THE_nPC|wiringB|bit16to31|bit0to7|bit4567|bit01|bit0|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PCSEL[0]~input_o\,
	datab => \PC[21]~input_o\,
	datac => \immS_B[21]~input_o\,
	datad => \wiring_THE_nPC|wiringB|bit16to31|bit0to7|bit4567|bit01|bit0|cout~0_combout\,
	combout => \wiring_THE_nPC|Mux21~0_combout\);

-- Location: LCCOMB_X86_Y59_N20
\wiring_THE_nPC|Mux21~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wiring_THE_nPC|Mux21~2_combout\ = (\PCSEL[1]~input_o\ & (((\WIRING_THE_ALU|Mux10~3_combout\)))) # (!\PCSEL[1]~input_o\ & ((\wiring_THE_nPC|Mux21~1_combout\) # ((\wiring_THE_nPC|Mux21~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wiring_THE_nPC|Mux21~1_combout\,
	datab => \PCSEL[1]~input_o\,
	datac => \WIRING_THE_ALU|Mux10~3_combout\,
	datad => \wiring_THE_nPC|Mux21~0_combout\,
	combout => \wiring_THE_nPC|Mux21~2_combout\);

-- Location: LCCOMB_X85_Y59_N6
\wiring_THE_nPC|wiringB|bit16to31|bit0to7|bit4567|bit01|bit1|cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wiring_THE_nPC|wiringB|bit16to31|bit0to7|bit4567|bit01|bit1|cout~0_combout\ = (\PC[21]~input_o\ & ((\immS_B[21]~input_o\) # (\wiring_THE_nPC|wiringB|bit16to31|bit0to7|bit4567|bit01|bit0|cout~0_combout\))) # (!\PC[21]~input_o\ & (\immS_B[21]~input_o\ & 
-- \wiring_THE_nPC|wiringB|bit16to31|bit0to7|bit4567|bit01|bit0|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC[21]~input_o\,
	datac => \immS_B[21]~input_o\,
	datad => \wiring_THE_nPC|wiringB|bit16to31|bit0to7|bit4567|bit01|bit0|cout~0_combout\,
	combout => \wiring_THE_nPC|wiringB|bit16to31|bit0to7|bit4567|bit01|bit1|cout~0_combout\);

-- Location: LCCOMB_X84_Y59_N20
\wiring_THE_nPC|Mux22~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wiring_THE_nPC|Mux22~0_combout\ = (\PCSEL[0]~input_o\ & (\immS_B[22]~input_o\ $ ((\wiring_THE_nPC|wiringB|bit16to31|bit0to7|bit4567|bit01|bit1|cout~0_combout\)))) # (!\PCSEL[0]~input_o\ & (((\PCADDING_1|c\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PCSEL[0]~input_o\,
	datab => \immS_B[22]~input_o\,
	datac => \wiring_THE_nPC|wiringB|bit16to31|bit0to7|bit4567|bit01|bit1|cout~0_combout\,
	datad => \PCADDING_1|c\(21),
	combout => \wiring_THE_nPC|Mux22~0_combout\);

-- Location: LCCOMB_X84_Y59_N30
\wiring_THE_nPC|Mux22~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wiring_THE_nPC|Mux22~1_combout\ = (\PCSEL[1]~input_o\ & (\WIRING_THE_ALU|Mux9~3_combout\)) # (!\PCSEL[1]~input_o\ & ((\wiring_THE_nPC|Mux22~0_combout\ $ (\PC[22]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Mux9~3_combout\,
	datab => \wiring_THE_nPC|Mux22~0_combout\,
	datac => \PCSEL[1]~input_o\,
	datad => \PC[22]~input_o\,
	combout => \wiring_THE_nPC|Mux22~1_combout\);

-- Location: LCCOMB_X84_Y59_N8
\wiring_THE_nPC|wiringB|bit16to31|bit0to7|bit4567|bit23|bit0|cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wiring_THE_nPC|wiringB|bit16to31|bit0to7|bit4567|bit23|bit0|cout~0_combout\ = (\immS_B[22]~input_o\ & ((\wiring_THE_nPC|wiringB|bit16to31|bit0to7|bit4567|bit01|bit1|cout~0_combout\) # (\PC[22]~input_o\))) # (!\immS_B[22]~input_o\ & 
-- (\wiring_THE_nPC|wiringB|bit16to31|bit0to7|bit4567|bit01|bit1|cout~0_combout\ & \PC[22]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \immS_B[22]~input_o\,
	datac => \wiring_THE_nPC|wiringB|bit16to31|bit0to7|bit4567|bit01|bit1|cout~0_combout\,
	datad => \PC[22]~input_o\,
	combout => \wiring_THE_nPC|wiringB|bit16to31|bit0to7|bit4567|bit23|bit0|cout~0_combout\);

-- Location: LCCOMB_X84_Y59_N10
\wiring_THE_nPC|Mux23~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wiring_THE_nPC|Mux23~0_combout\ = (\PCSEL[0]~input_o\ & (\PC[23]~input_o\ $ (\wiring_THE_nPC|wiringB|bit16to31|bit0to7|bit4567|bit23|bit0|cout~0_combout\ $ (\immS_B[23]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PCSEL[0]~input_o\,
	datab => \PC[23]~input_o\,
	datac => \wiring_THE_nPC|wiringB|bit16to31|bit0to7|bit4567|bit23|bit0|cout~0_combout\,
	datad => \immS_B[23]~input_o\,
	combout => \wiring_THE_nPC|Mux23~0_combout\);

-- Location: LCCOMB_X84_Y59_N12
\wiring_THE_nPC|Mux23~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wiring_THE_nPC|Mux23~1_combout\ = (!\PCSEL[0]~input_o\ & (\PC[23]~input_o\ $ (((\PCADDING_1|c\(21) & \PC[22]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PCSEL[0]~input_o\,
	datab => \PCADDING_1|c\(21),
	datac => \PC[23]~input_o\,
	datad => \PC[22]~input_o\,
	combout => \wiring_THE_nPC|Mux23~1_combout\);

-- Location: LCCOMB_X84_Y59_N14
\wiring_THE_nPC|Mux23~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wiring_THE_nPC|Mux23~2_combout\ = (\PCSEL[1]~input_o\ & (((\WIRING_THE_ALU|Mux8~3_combout\)))) # (!\PCSEL[1]~input_o\ & ((\wiring_THE_nPC|Mux23~0_combout\) # ((\wiring_THE_nPC|Mux23~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wiring_THE_nPC|Mux23~0_combout\,
	datab => \WIRING_THE_ALU|Mux8~3_combout\,
	datac => \PCSEL[1]~input_o\,
	datad => \wiring_THE_nPC|Mux23~1_combout\,
	combout => \wiring_THE_nPC|Mux23~2_combout\);

-- Location: LCCOMB_X84_Y59_N0
\wiring_THE_nPC|wiringB|bit16to31|bit0to7|bit4567|bit23|bit1|cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wiring_THE_nPC|wiringB|bit16to31|bit0to7|bit4567|bit23|bit1|cout~0_combout\ = (\PC[23]~input_o\ & ((\wiring_THE_nPC|wiringB|bit16to31|bit0to7|bit4567|bit23|bit0|cout~0_combout\) # (\immS_B[23]~input_o\))) # (!\PC[23]~input_o\ & 
-- (\wiring_THE_nPC|wiringB|bit16to31|bit0to7|bit4567|bit23|bit0|cout~0_combout\ & \immS_B[23]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC[23]~input_o\,
	datac => \wiring_THE_nPC|wiringB|bit16to31|bit0to7|bit4567|bit23|bit0|cout~0_combout\,
	datad => \immS_B[23]~input_o\,
	combout => \wiring_THE_nPC|wiringB|bit16to31|bit0to7|bit4567|bit23|bit1|cout~0_combout\);

-- Location: LCCOMB_X84_Y59_N18
\wiring_THE_nPC|wiringB|bit16to31|bit8toF|bit0123|bit01|bit0|s~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wiring_THE_nPC|wiringB|bit16to31|bit8toF|bit0123|bit01|bit0|s~0_combout\ = \immS_B[24]~input_o\ $ (\PC[24]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \immS_B[24]~input_o\,
	datad => \PC[24]~input_o\,
	combout => \wiring_THE_nPC|wiringB|bit16to31|bit8toF|bit0123|bit01|bit0|s~0_combout\);

-- Location: LCCOMB_X84_Y59_N28
\wiring_THE_nPC|Mux24~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wiring_THE_nPC|Mux24~0_combout\ = (\PCSEL[0]~input_o\ & (\wiring_THE_nPC|wiringB|bit16to31|bit0to7|bit4567|bit23|bit1|cout~0_combout\ $ (((\wiring_THE_nPC|wiringB|bit16to31|bit8toF|bit0123|bit01|bit0|s~0_combout\))))) # (!\PCSEL[0]~input_o\ & 
-- (((\PCADDING_1|z\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PCSEL[0]~input_o\,
	datab => \wiring_THE_nPC|wiringB|bit16to31|bit0to7|bit4567|bit23|bit1|cout~0_combout\,
	datac => \PCADDING_1|z\(24),
	datad => \wiring_THE_nPC|wiringB|bit16to31|bit8toF|bit0123|bit01|bit0|s~0_combout\,
	combout => \wiring_THE_nPC|Mux24~0_combout\);

-- Location: LCCOMB_X86_Y59_N6
\wiring_THE_nPC|Mux24~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wiring_THE_nPC|Mux24~1_combout\ = (\PCSEL[1]~input_o\ & (\WIRING_THE_ALU|Mux7~3_combout\)) # (!\PCSEL[1]~input_o\ & ((\wiring_THE_nPC|Mux24~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Mux7~3_combout\,
	datab => \PCSEL[1]~input_o\,
	datad => \wiring_THE_nPC|Mux24~0_combout\,
	combout => \wiring_THE_nPC|Mux24~1_combout\);

-- Location: LCCOMB_X70_Y64_N6
\WIRING_THE_ALU|Mux6~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Mux6~3_combout\ = (\WIRING_THE_ALU|Mux6~0_combout\) # ((\WIRING_THE_ALU|Mux6~2_combout\ & !\ALUFunct[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Mux6~2_combout\,
	datab => \ALUFunct[1]~input_o\,
	datad => \WIRING_THE_ALU|Mux6~0_combout\,
	combout => \WIRING_THE_ALU|Mux6~3_combout\);

-- Location: LCCOMB_X84_Y59_N22
\wiring_THE_nPC|wiringB|bit16to31|bit8toF|bit0123|bit01|bit0|cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wiring_THE_nPC|wiringB|bit16to31|bit8toF|bit0123|bit01|bit0|cout~0_combout\ = (\PC[24]~input_o\ & ((\wiring_THE_nPC|wiringB|bit16to31|bit0to7|bit4567|bit23|bit1|cout~0_combout\) # (\immS_B[24]~input_o\))) # (!\PC[24]~input_o\ & 
-- (\wiring_THE_nPC|wiringB|bit16to31|bit0to7|bit4567|bit23|bit1|cout~0_combout\ & \immS_B[24]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC[24]~input_o\,
	datac => \wiring_THE_nPC|wiringB|bit16to31|bit0to7|bit4567|bit23|bit1|cout~0_combout\,
	datad => \immS_B[24]~input_o\,
	combout => \wiring_THE_nPC|wiringB|bit16to31|bit8toF|bit0123|bit01|bit0|cout~0_combout\);

-- Location: LCCOMB_X70_Y65_N18
\wiring_THE_nPC|Mux25~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wiring_THE_nPC|Mux25~0_combout\ = (\PCSEL[0]~input_o\ & (\wiring_THE_nPC|wiringB|bit16to31|bit8toF|bit0123|bit01|bit0|cout~0_combout\ $ (((\immS_B[25]~input_o\))))) # (!\PCSEL[0]~input_o\ & (((\PCADDING_1|c\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wiring_THE_nPC|wiringB|bit16to31|bit8toF|bit0123|bit01|bit0|cout~0_combout\,
	datab => \PCADDING_1|c\(24),
	datac => \PCSEL[0]~input_o\,
	datad => \immS_B[25]~input_o\,
	combout => \wiring_THE_nPC|Mux25~0_combout\);

-- Location: LCCOMB_X70_Y65_N20
\wiring_THE_nPC|Mux25~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wiring_THE_nPC|Mux25~1_combout\ = (\PCSEL[1]~input_o\ & (((\WIRING_THE_ALU|Mux6~3_combout\)))) # (!\PCSEL[1]~input_o\ & (\PC[25]~input_o\ $ (((\wiring_THE_nPC|Mux25~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PCSEL[1]~input_o\,
	datab => \PC[25]~input_o\,
	datac => \WIRING_THE_ALU|Mux6~3_combout\,
	datad => \wiring_THE_nPC|Mux25~0_combout\,
	combout => \wiring_THE_nPC|Mux25~1_combout\);

-- Location: LCCOMB_X70_Y65_N14
\wiring_THE_nPC|wiringB|bit16to31|bit8toF|bit0123|bit01|bit1|cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wiring_THE_nPC|wiringB|bit16to31|bit8toF|bit0123|bit01|bit1|cout~0_combout\ = (\wiring_THE_nPC|wiringB|bit16to31|bit8toF|bit0123|bit01|bit0|cout~0_combout\ & ((\immS_B[25]~input_o\) # (\PC[25]~input_o\))) # 
-- (!\wiring_THE_nPC|wiringB|bit16to31|bit8toF|bit0123|bit01|bit0|cout~0_combout\ & (\immS_B[25]~input_o\ & \PC[25]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wiring_THE_nPC|wiringB|bit16to31|bit8toF|bit0123|bit01|bit0|cout~0_combout\,
	datab => \immS_B[25]~input_o\,
	datad => \PC[25]~input_o\,
	combout => \wiring_THE_nPC|wiringB|bit16to31|bit8toF|bit0123|bit01|bit1|cout~0_combout\);

-- Location: LCCOMB_X70_Y65_N24
\wiring_THE_nPC|Mux26~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wiring_THE_nPC|Mux26~0_combout\ = (\PCSEL[0]~input_o\ & (\immS_B[26]~input_o\ $ (\wiring_THE_nPC|wiringB|bit16to31|bit8toF|bit0123|bit01|bit1|cout~0_combout\ $ (\PC[26]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \immS_B[26]~input_o\,
	datab => \wiring_THE_nPC|wiringB|bit16to31|bit8toF|bit0123|bit01|bit1|cout~0_combout\,
	datac => \PCSEL[0]~input_o\,
	datad => \PC[26]~input_o\,
	combout => \wiring_THE_nPC|Mux26~0_combout\);

-- Location: LCCOMB_X70_Y65_N10
\wiring_THE_nPC|Mux26~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wiring_THE_nPC|Mux26~1_combout\ = (!\PCSEL[0]~input_o\ & (\PC[26]~input_o\ $ (((\PC[25]~input_o\ & \PCADDING_1|c\(24))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PCSEL[0]~input_o\,
	datab => \PC[25]~input_o\,
	datac => \PCADDING_1|c\(24),
	datad => \PC[26]~input_o\,
	combout => \wiring_THE_nPC|Mux26~1_combout\);

-- Location: LCCOMB_X70_Y65_N28
\wiring_THE_nPC|Mux26~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wiring_THE_nPC|Mux26~2_combout\ = (\PCSEL[1]~input_o\ & (((\WIRING_THE_ALU|Mux5~3_combout\)))) # (!\PCSEL[1]~input_o\ & ((\wiring_THE_nPC|Mux26~0_combout\) # ((\wiring_THE_nPC|Mux26~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PCSEL[1]~input_o\,
	datab => \wiring_THE_nPC|Mux26~0_combout\,
	datac => \WIRING_THE_ALU|Mux5~3_combout\,
	datad => \wiring_THE_nPC|Mux26~1_combout\,
	combout => \wiring_THE_nPC|Mux26~2_combout\);

-- Location: LCCOMB_X70_Y65_N30
\wiring_THE_nPC|wiringB|bit16to31|bit8toF|bit0123|bit23|bit0|cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wiring_THE_nPC|wiringB|bit16to31|bit8toF|bit0123|bit23|bit0|cout~0_combout\ = (\PC[26]~input_o\ & ((\wiring_THE_nPC|wiringB|bit16to31|bit8toF|bit0123|bit01|bit1|cout~0_combout\) # (\immS_B[26]~input_o\))) # (!\PC[26]~input_o\ & 
-- (\wiring_THE_nPC|wiringB|bit16to31|bit8toF|bit0123|bit01|bit1|cout~0_combout\ & \immS_B[26]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC[26]~input_o\,
	datac => \wiring_THE_nPC|wiringB|bit16to31|bit8toF|bit0123|bit01|bit1|cout~0_combout\,
	datad => \immS_B[26]~input_o\,
	combout => \wiring_THE_nPC|wiringB|bit16to31|bit8toF|bit0123|bit23|bit0|cout~0_combout\);

-- Location: LCCOMB_X70_Y65_N0
\wiring_THE_nPC|Mux27~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wiring_THE_nPC|Mux27~0_combout\ = (\PCSEL[0]~input_o\ & (\immS_B[27]~input_o\ $ (\wiring_THE_nPC|wiringB|bit16to31|bit8toF|bit0123|bit23|bit0|cout~0_combout\ $ (\PC[27]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PCSEL[0]~input_o\,
	datab => \immS_B[27]~input_o\,
	datac => \wiring_THE_nPC|wiringB|bit16to31|bit8toF|bit0123|bit23|bit0|cout~0_combout\,
	datad => \PC[27]~input_o\,
	combout => \wiring_THE_nPC|Mux27~0_combout\);

-- Location: LCCOMB_X70_Y66_N16
\WIRING_THE_ALU|Mux4~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Mux4~3_combout\ = (\WIRING_THE_ALU|Mux4~0_combout\) # ((!\ALUFunct[1]~input_o\ & \WIRING_THE_ALU|Mux4~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUFunct[1]~input_o\,
	datac => \WIRING_THE_ALU|Mux4~2_combout\,
	datad => \WIRING_THE_ALU|Mux4~0_combout\,
	combout => \WIRING_THE_ALU|Mux4~3_combout\);

-- Location: LCCOMB_X70_Y65_N2
\wiring_THE_nPC|Mux27~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wiring_THE_nPC|Mux27~1_combout\ = (!\PCSEL[0]~input_o\ & \PCADDING_1|z\(27))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PCSEL[0]~input_o\,
	datad => \PCADDING_1|z\(27),
	combout => \wiring_THE_nPC|Mux27~1_combout\);

-- Location: LCCOMB_X70_Y65_N12
\wiring_THE_nPC|Mux27~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wiring_THE_nPC|Mux27~2_combout\ = (\PCSEL[1]~input_o\ & (((\WIRING_THE_ALU|Mux4~3_combout\)))) # (!\PCSEL[1]~input_o\ & ((\wiring_THE_nPC|Mux27~0_combout\) # ((\wiring_THE_nPC|Mux27~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PCSEL[1]~input_o\,
	datab => \wiring_THE_nPC|Mux27~0_combout\,
	datac => \WIRING_THE_ALU|Mux4~3_combout\,
	datad => \wiring_THE_nPC|Mux27~1_combout\,
	combout => \wiring_THE_nPC|Mux27~2_combout\);

-- Location: LCCOMB_X70_Y65_N22
\wiring_THE_nPC|wiringB|bit16to31|bit8toF|bit0123|bit23|bit1|cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wiring_THE_nPC|wiringB|bit16to31|bit8toF|bit0123|bit23|bit1|cout~0_combout\ = (\wiring_THE_nPC|wiringB|bit16to31|bit8toF|bit0123|bit23|bit0|cout~0_combout\ & ((\immS_B[27]~input_o\) # (\PC[27]~input_o\))) # 
-- (!\wiring_THE_nPC|wiringB|bit16to31|bit8toF|bit0123|bit23|bit0|cout~0_combout\ & (\immS_B[27]~input_o\ & \PC[27]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wiring_THE_nPC|wiringB|bit16to31|bit8toF|bit0123|bit23|bit0|cout~0_combout\,
	datab => \immS_B[27]~input_o\,
	datac => \PC[27]~input_o\,
	combout => \wiring_THE_nPC|wiringB|bit16to31|bit8toF|bit0123|bit23|bit1|cout~0_combout\);

-- Location: LCCOMB_X70_Y66_N18
\wiring_THE_nPC|Mux28~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wiring_THE_nPC|Mux28~0_combout\ = (\PCSEL[0]~input_o\ & (\immS_B[28]~input_o\ $ (((\wiring_THE_nPC|wiringB|bit16to31|bit8toF|bit0123|bit23|bit1|cout~0_combout\))))) # (!\PCSEL[0]~input_o\ & (((\PCADDING_1|c\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PCSEL[0]~input_o\,
	datab => \immS_B[28]~input_o\,
	datac => \PCADDING_1|c\(27),
	datad => \wiring_THE_nPC|wiringB|bit16to31|bit8toF|bit0123|bit23|bit1|cout~0_combout\,
	combout => \wiring_THE_nPC|Mux28~0_combout\);

-- Location: LCCOMB_X70_Y66_N10
\WIRING_THE_ALU|Mux3~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WIRING_THE_ALU|Mux3~3_combout\ = (\WIRING_THE_ALU|Mux3~0_combout\) # ((!\ALUFunct[1]~input_o\ & \WIRING_THE_ALU|Mux3~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUFunct[1]~input_o\,
	datac => \WIRING_THE_ALU|Mux3~0_combout\,
	datad => \WIRING_THE_ALU|Mux3~2_combout\,
	combout => \WIRING_THE_ALU|Mux3~3_combout\);

-- Location: LCCOMB_X70_Y66_N4
\wiring_THE_nPC|Mux28~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wiring_THE_nPC|Mux28~1_combout\ = (\PCSEL[1]~input_o\ & (((\WIRING_THE_ALU|Mux3~3_combout\)))) # (!\PCSEL[1]~input_o\ & (\wiring_THE_nPC|Mux28~0_combout\ $ ((\PC[28]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PCSEL[1]~input_o\,
	datab => \wiring_THE_nPC|Mux28~0_combout\,
	datac => \PC[28]~input_o\,
	datad => \WIRING_THE_ALU|Mux3~3_combout\,
	combout => \wiring_THE_nPC|Mux28~1_combout\);

-- Location: LCCOMB_X70_Y66_N14
\wiring_THE_nPC|wiringB|bit16to31|bit8toF|bit4567|bit01|bit0|cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wiring_THE_nPC|wiringB|bit16to31|bit8toF|bit4567|bit01|bit0|cout~0_combout\ = (\immS_B[28]~input_o\ & ((\PC[28]~input_o\) # (\wiring_THE_nPC|wiringB|bit16to31|bit8toF|bit0123|bit23|bit1|cout~0_combout\))) # (!\immS_B[28]~input_o\ & (\PC[28]~input_o\ & 
-- \wiring_THE_nPC|wiringB|bit16to31|bit8toF|bit0123|bit23|bit1|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \immS_B[28]~input_o\,
	datac => \PC[28]~input_o\,
	datad => \wiring_THE_nPC|wiringB|bit16to31|bit8toF|bit0123|bit23|bit1|cout~0_combout\,
	combout => \wiring_THE_nPC|wiringB|bit16to31|bit8toF|bit4567|bit01|bit0|cout~0_combout\);

-- Location: LCCOMB_X70_Y66_N0
\wiring_THE_nPC|Mux29~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wiring_THE_nPC|Mux29~0_combout\ = (\PCSEL[0]~input_o\ & (\wiring_THE_nPC|wiringB|bit16to31|bit8toF|bit4567|bit01|bit0|cout~0_combout\ $ (\immS_B[29]~input_o\ $ (\PC[29]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PCSEL[0]~input_o\,
	datab => \wiring_THE_nPC|wiringB|bit16to31|bit8toF|bit4567|bit01|bit0|cout~0_combout\,
	datac => \immS_B[29]~input_o\,
	datad => \PC[29]~input_o\,
	combout => \wiring_THE_nPC|Mux29~0_combout\);

-- Location: LCCOMB_X70_Y66_N26
\wiring_THE_nPC|Mux29~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wiring_THE_nPC|Mux29~1_combout\ = (!\PCSEL[0]~input_o\ & (\PC[29]~input_o\ $ (((\PC[28]~input_o\ & \PCADDING_1|c\(27))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PCSEL[0]~input_o\,
	datab => \PC[28]~input_o\,
	datac => \PCADDING_1|c\(27),
	datad => \PC[29]~input_o\,
	combout => \wiring_THE_nPC|Mux29~1_combout\);

-- Location: LCCOMB_X70_Y66_N28
\wiring_THE_nPC|Mux29~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wiring_THE_nPC|Mux29~2_combout\ = (\PCSEL[1]~input_o\ & (((\WIRING_THE_ALU|Mux2~3_combout\)))) # (!\PCSEL[1]~input_o\ & ((\wiring_THE_nPC|Mux29~0_combout\) # ((\wiring_THE_nPC|Mux29~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PCSEL[1]~input_o\,
	datab => \wiring_THE_nPC|Mux29~0_combout\,
	datac => \wiring_THE_nPC|Mux29~1_combout\,
	datad => \WIRING_THE_ALU|Mux2~3_combout\,
	combout => \wiring_THE_nPC|Mux29~2_combout\);

-- Location: LCCOMB_X70_Y66_N6
\wiring_THE_nPC|wiringB|bit16to31|bit8toF|bit4567|bit01|bit1|cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wiring_THE_nPC|wiringB|bit16to31|bit8toF|bit4567|bit01|bit1|cout~0_combout\ = (\PC[29]~input_o\ & ((\wiring_THE_nPC|wiringB|bit16to31|bit8toF|bit4567|bit01|bit0|cout~0_combout\) # (\immS_B[29]~input_o\))) # (!\PC[29]~input_o\ & 
-- (\wiring_THE_nPC|wiringB|bit16to31|bit8toF|bit4567|bit01|bit0|cout~0_combout\ & \immS_B[29]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[29]~input_o\,
	datab => \wiring_THE_nPC|wiringB|bit16to31|bit8toF|bit4567|bit01|bit0|cout~0_combout\,
	datac => \immS_B[29]~input_o\,
	combout => \wiring_THE_nPC|wiringB|bit16to31|bit8toF|bit4567|bit01|bit1|cout~0_combout\);

-- Location: LCCOMB_X70_Y67_N4
\wiring_THE_nPC|Mux30~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wiring_THE_nPC|Mux30~0_combout\ = (\PCSEL[0]~input_o\ & (\immS_B[30]~input_o\ $ (\PC[30]~input_o\ $ (\wiring_THE_nPC|wiringB|bit16to31|bit8toF|bit4567|bit01|bit1|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \immS_B[30]~input_o\,
	datab => \PC[30]~input_o\,
	datac => \PCSEL[0]~input_o\,
	datad => \wiring_THE_nPC|wiringB|bit16to31|bit8toF|bit4567|bit01|bit1|cout~0_combout\,
	combout => \wiring_THE_nPC|Mux30~0_combout\);

-- Location: LCCOMB_X70_Y67_N22
\wiring_THE_nPC|Mux30~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wiring_THE_nPC|Mux30~1_combout\ = (!\PCSEL[1]~input_o\ & ((\wiring_THE_nPC|Mux30~0_combout\) # ((!\PCSEL[0]~input_o\ & \PCADDING_1|z\(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PCSEL[0]~input_o\,
	datab => \PCSEL[1]~input_o\,
	datac => \wiring_THE_nPC|Mux30~0_combout\,
	datad => \PCADDING_1|z\(30),
	combout => \wiring_THE_nPC|Mux30~1_combout\);

-- Location: LCCOMB_X70_Y67_N24
\wiring_THE_nPC|Mux30~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wiring_THE_nPC|Mux30~2_combout\ = (\wiring_THE_nPC|Mux30~1_combout\) # ((\WIRING_THE_ALU|Mux1~3_combout\ & \PCSEL[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WIRING_THE_ALU|Mux1~3_combout\,
	datab => \PCSEL[1]~input_o\,
	datac => \wiring_THE_nPC|Mux30~1_combout\,
	combout => \wiring_THE_nPC|Mux30~2_combout\);

-- Location: LCCOMB_X70_Y67_N2
\wiring_THE_nPC|Mux31~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wiring_THE_nPC|Mux31~0_combout\ = (\immS_B[30]~input_o\ & ((\PC[30]~input_o\) # ((\PCSEL[0]~input_o\ & \wiring_THE_nPC|wiringB|bit16to31|bit8toF|bit4567|bit01|bit1|cout~0_combout\)))) # (!\immS_B[30]~input_o\ & (\PC[30]~input_o\ & 
-- ((\wiring_THE_nPC|wiringB|bit16to31|bit8toF|bit4567|bit01|bit1|cout~0_combout\) # (!\PCSEL[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \immS_B[30]~input_o\,
	datab => \PC[30]~input_o\,
	datac => \PCSEL[0]~input_o\,
	datad => \wiring_THE_nPC|wiringB|bit16to31|bit8toF|bit4567|bit01|bit1|cout~0_combout\,
	combout => \wiring_THE_nPC|Mux31~0_combout\);

-- Location: LCCOMB_X70_Y67_N28
\wiring_THE_nPC|Mux31~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wiring_THE_nPC|Mux31~1_combout\ = (\PCSEL[0]~input_o\ & (\wiring_THE_nPC|Mux31~0_combout\ $ ((\immS_B[31]~input_o\)))) # (!\PCSEL[0]~input_o\ & (\wiring_THE_nPC|Mux31~0_combout\ & ((\PCADDING_1|c\(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PCSEL[0]~input_o\,
	datab => \wiring_THE_nPC|Mux31~0_combout\,
	datac => \immS_B[31]~input_o\,
	datad => \PCADDING_1|c\(29),
	combout => \wiring_THE_nPC|Mux31~1_combout\);

-- Location: LCCOMB_X70_Y67_N30
\wiring_THE_nPC|Mux31~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wiring_THE_nPC|Mux31~2_combout\ = (\PCSEL[1]~input_o\ & (((\WIRING_THE_ALU|Mux0~3_combout\)))) # (!\PCSEL[1]~input_o\ & (\PC[31]~input_o\ $ (((\wiring_THE_nPC|Mux31~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[31]~input_o\,
	datab => \PCSEL[1]~input_o\,
	datac => \WIRING_THE_ALU|Mux0~3_combout\,
	datad => \wiring_THE_nPC|Mux31~1_combout\,
	combout => \wiring_THE_nPC|Mux31~2_combout\);

-- Location: IOIBUF_X113_Y91_N8
\WP[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WP(0),
	o => \WP[0]~input_o\);

-- Location: IOIBUF_X10_Y91_N8
\WP[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WP(1),
	o => \WP[1]~input_o\);

-- Location: IOIBUF_X113_Y0_N1
\WP[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WP(2),
	o => \WP[2]~input_o\);

-- Location: IOIBUF_X113_Y0_N8
\WP[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WP(3),
	o => \WP[3]~input_o\);

-- Location: IOIBUF_X17_Y91_N8
\WP[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WP(4),
	o => \WP[4]~input_o\);

ww_Memory_Address(0) <= \Memory_Address[0]~output_o\;

ww_Memory_Address(1) <= \Memory_Address[1]~output_o\;

ww_Memory_Address(2) <= \Memory_Address[2]~output_o\;

ww_Memory_Address(3) <= \Memory_Address[3]~output_o\;

ww_Memory_Address(4) <= \Memory_Address[4]~output_o\;

ww_Memory_Address(5) <= \Memory_Address[5]~output_o\;

ww_Memory_Address(6) <= \Memory_Address[6]~output_o\;

ww_Memory_Address(7) <= \Memory_Address[7]~output_o\;

ww_Memory_Address(8) <= \Memory_Address[8]~output_o\;

ww_Memory_Address(9) <= \Memory_Address[9]~output_o\;

ww_Memory_Address(10) <= \Memory_Address[10]~output_o\;

ww_Memory_Address(11) <= \Memory_Address[11]~output_o\;

ww_Memory_Address(12) <= \Memory_Address[12]~output_o\;

ww_Memory_Address(13) <= \Memory_Address[13]~output_o\;

ww_Memory_Address(14) <= \Memory_Address[14]~output_o\;

ww_Memory_Address(15) <= \Memory_Address[15]~output_o\;

ww_Memory_Address(16) <= \Memory_Address[16]~output_o\;

ww_Memory_Address(17) <= \Memory_Address[17]~output_o\;

ww_Memory_Address(18) <= \Memory_Address[18]~output_o\;

ww_Memory_Address(19) <= \Memory_Address[19]~output_o\;

ww_Memory_Address(20) <= \Memory_Address[20]~output_o\;

ww_Memory_Address(21) <= \Memory_Address[21]~output_o\;

ww_Memory_Address(22) <= \Memory_Address[22]~output_o\;

ww_Memory_Address(23) <= \Memory_Address[23]~output_o\;

ww_Memory_Address(24) <= \Memory_Address[24]~output_o\;

ww_Memory_Address(25) <= \Memory_Address[25]~output_o\;

ww_Memory_Address(26) <= \Memory_Address[26]~output_o\;

ww_Memory_Address(27) <= \Memory_Address[27]~output_o\;

ww_Memory_Address(28) <= \Memory_Address[28]~output_o\;

ww_Memory_Address(29) <= \Memory_Address[29]~output_o\;

ww_Memory_Address(30) <= \Memory_Address[30]~output_o\;

ww_Memory_Address(31) <= \Memory_Address[31]~output_o\;

ww_Memory_WriteData(0) <= \Memory_WriteData[0]~output_o\;

ww_Memory_WriteData(1) <= \Memory_WriteData[1]~output_o\;

ww_Memory_WriteData(2) <= \Memory_WriteData[2]~output_o\;

ww_Memory_WriteData(3) <= \Memory_WriteData[3]~output_o\;

ww_Memory_WriteData(4) <= \Memory_WriteData[4]~output_o\;

ww_Memory_WriteData(5) <= \Memory_WriteData[5]~output_o\;

ww_Memory_WriteData(6) <= \Memory_WriteData[6]~output_o\;

ww_Memory_WriteData(7) <= \Memory_WriteData[7]~output_o\;

ww_Memory_WriteData(8) <= \Memory_WriteData[8]~output_o\;

ww_Memory_WriteData(9) <= \Memory_WriteData[9]~output_o\;

ww_Memory_WriteData(10) <= \Memory_WriteData[10]~output_o\;

ww_Memory_WriteData(11) <= \Memory_WriteData[11]~output_o\;

ww_Memory_WriteData(12) <= \Memory_WriteData[12]~output_o\;

ww_Memory_WriteData(13) <= \Memory_WriteData[13]~output_o\;

ww_Memory_WriteData(14) <= \Memory_WriteData[14]~output_o\;

ww_Memory_WriteData(15) <= \Memory_WriteData[15]~output_o\;

ww_Memory_WriteData(16) <= \Memory_WriteData[16]~output_o\;

ww_Memory_WriteData(17) <= \Memory_WriteData[17]~output_o\;

ww_Memory_WriteData(18) <= \Memory_WriteData[18]~output_o\;

ww_Memory_WriteData(19) <= \Memory_WriteData[19]~output_o\;

ww_Memory_WriteData(20) <= \Memory_WriteData[20]~output_o\;

ww_Memory_WriteData(21) <= \Memory_WriteData[21]~output_o\;

ww_Memory_WriteData(22) <= \Memory_WriteData[22]~output_o\;

ww_Memory_WriteData(23) <= \Memory_WriteData[23]~output_o\;

ww_Memory_WriteData(24) <= \Memory_WriteData[24]~output_o\;

ww_Memory_WriteData(25) <= \Memory_WriteData[25]~output_o\;

ww_Memory_WriteData(26) <= \Memory_WriteData[26]~output_o\;

ww_Memory_WriteData(27) <= \Memory_WriteData[27]~output_o\;

ww_Memory_WriteData(28) <= \Memory_WriteData[28]~output_o\;

ww_Memory_WriteData(29) <= \Memory_WriteData[29]~output_o\;

ww_Memory_WriteData(30) <= \Memory_WriteData[30]~output_o\;

ww_Memory_WriteData(31) <= \Memory_WriteData[31]~output_o\;

ww_rd_port(0) <= \rd_port[0]~output_o\;

ww_rd_port(1) <= \rd_port[1]~output_o\;

ww_rd_port(2) <= \rd_port[2]~output_o\;

ww_rd_port(3) <= \rd_port[3]~output_o\;

ww_rd_port(4) <= \rd_port[4]~output_o\;

ww_WB_to_rd(0) <= \WB_to_rd[0]~output_o\;

ww_WB_to_rd(1) <= \WB_to_rd[1]~output_o\;

ww_WB_to_rd(2) <= \WB_to_rd[2]~output_o\;

ww_WB_to_rd(3) <= \WB_to_rd[3]~output_o\;

ww_WB_to_rd(4) <= \WB_to_rd[4]~output_o\;

ww_WB_to_rd(5) <= \WB_to_rd[5]~output_o\;

ww_WB_to_rd(6) <= \WB_to_rd[6]~output_o\;

ww_WB_to_rd(7) <= \WB_to_rd[7]~output_o\;

ww_WB_to_rd(8) <= \WB_to_rd[8]~output_o\;

ww_WB_to_rd(9) <= \WB_to_rd[9]~output_o\;

ww_WB_to_rd(10) <= \WB_to_rd[10]~output_o\;

ww_WB_to_rd(11) <= \WB_to_rd[11]~output_o\;

ww_WB_to_rd(12) <= \WB_to_rd[12]~output_o\;

ww_WB_to_rd(13) <= \WB_to_rd[13]~output_o\;

ww_WB_to_rd(14) <= \WB_to_rd[14]~output_o\;

ww_WB_to_rd(15) <= \WB_to_rd[15]~output_o\;

ww_WB_to_rd(16) <= \WB_to_rd[16]~output_o\;

ww_WB_to_rd(17) <= \WB_to_rd[17]~output_o\;

ww_WB_to_rd(18) <= \WB_to_rd[18]~output_o\;

ww_WB_to_rd(19) <= \WB_to_rd[19]~output_o\;

ww_WB_to_rd(20) <= \WB_to_rd[20]~output_o\;

ww_WB_to_rd(21) <= \WB_to_rd[21]~output_o\;

ww_WB_to_rd(22) <= \WB_to_rd[22]~output_o\;

ww_WB_to_rd(23) <= \WB_to_rd[23]~output_o\;

ww_WB_to_rd(24) <= \WB_to_rd[24]~output_o\;

ww_WB_to_rd(25) <= \WB_to_rd[25]~output_o\;

ww_WB_to_rd(26) <= \WB_to_rd[26]~output_o\;

ww_WB_to_rd(27) <= \WB_to_rd[27]~output_o\;

ww_WB_to_rd(28) <= \WB_to_rd[28]~output_o\;

ww_WB_to_rd(29) <= \WB_to_rd[29]~output_o\;

ww_WB_to_rd(30) <= \WB_to_rd[30]~output_o\;

ww_WB_to_rd(31) <= \WB_to_rd[31]~output_o\;

ww_CacheMISS_stopFetch <= \CacheMISS_stopFetch~output_o\;

ww_WB_nextPC(0) <= \WB_nextPC[0]~output_o\;

ww_WB_nextPC(1) <= \WB_nextPC[1]~output_o\;

ww_WB_nextPC(2) <= \WB_nextPC[2]~output_o\;

ww_WB_nextPC(3) <= \WB_nextPC[3]~output_o\;

ww_WB_nextPC(4) <= \WB_nextPC[4]~output_o\;

ww_WB_nextPC(5) <= \WB_nextPC[5]~output_o\;

ww_WB_nextPC(6) <= \WB_nextPC[6]~output_o\;

ww_WB_nextPC(7) <= \WB_nextPC[7]~output_o\;

ww_WB_nextPC(8) <= \WB_nextPC[8]~output_o\;

ww_WB_nextPC(9) <= \WB_nextPC[9]~output_o\;

ww_WB_nextPC(10) <= \WB_nextPC[10]~output_o\;

ww_WB_nextPC(11) <= \WB_nextPC[11]~output_o\;

ww_WB_nextPC(12) <= \WB_nextPC[12]~output_o\;

ww_WB_nextPC(13) <= \WB_nextPC[13]~output_o\;

ww_WB_nextPC(14) <= \WB_nextPC[14]~output_o\;

ww_WB_nextPC(15) <= \WB_nextPC[15]~output_o\;

ww_WB_nextPC(16) <= \WB_nextPC[16]~output_o\;

ww_WB_nextPC(17) <= \WB_nextPC[17]~output_o\;

ww_WB_nextPC(18) <= \WB_nextPC[18]~output_o\;

ww_WB_nextPC(19) <= \WB_nextPC[19]~output_o\;

ww_WB_nextPC(20) <= \WB_nextPC[20]~output_o\;

ww_WB_nextPC(21) <= \WB_nextPC[21]~output_o\;

ww_WB_nextPC(22) <= \WB_nextPC[22]~output_o\;

ww_WB_nextPC(23) <= \WB_nextPC[23]~output_o\;

ww_WB_nextPC(24) <= \WB_nextPC[24]~output_o\;

ww_WB_nextPC(25) <= \WB_nextPC[25]~output_o\;

ww_WB_nextPC(26) <= \WB_nextPC[26]~output_o\;

ww_WB_nextPC(27) <= \WB_nextPC[27]~output_o\;

ww_WB_nextPC(28) <= \WB_nextPC[28]~output_o\;

ww_WB_nextPC(29) <= \WB_nextPC[29]~output_o\;

ww_WB_nextPC(30) <= \WB_nextPC[30]~output_o\;

ww_WB_nextPC(31) <= \WB_nextPC[31]~output_o\;
END structure;


