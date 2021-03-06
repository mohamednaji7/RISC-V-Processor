transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/altera/13.1/_processor/processor/processor.vhd}
vcom -93 -work work {C:/altera/13.1/_processor/processor/ifetch.vhd}
vcom -93 -work work {C:/altera/13.1/_processor/processor/pc_reg.vhd}
vcom -93 -work work {C:/altera/13.1/_processor/processor/inst_memory.vhd}
vcom -93 -work work {C:/altera/13.1/_processor/processor/decode.vhd}
vcom -93 -work work {C:/altera/13.1/_processor/processor/regfile.vhd}
vcom -93 -work work {C:/altera/13.1/_processor/processor/execute.vhd}
vcom -93 -work work {C:/altera/13.1/_processor/processor/alu.vhd}
vcom -93 -work work {C:/altera/13.1/_processor/processor/addsub.vhd}
vcom -93 -work work {C:/altera/13.1/_processor/processor/fulladder32bit.vhd}
vcom -93 -work work {C:/altera/13.1/_processor/processor/fulladder16bit.vhd}
vcom -93 -work work {C:/altera/13.1/_processor/processor/fulladder8bit.vhd}
vcom -93 -work work {C:/altera/13.1/_processor/processor/fulladder4bit.vhd}
vcom -93 -work work {C:/altera/13.1/_processor/processor/fulladder2bit.vhd}
vcom -93 -work work {C:/altera/13.1/_processor/processor/full_adder.vhd}
vcom -93 -work work {C:/altera/13.1/_processor/processor/lt32.vhd}
vcom -93 -work work {C:/altera/13.1/_processor/processor/ltu32.vhd}
vcom -93 -work work {C:/altera/13.1/_processor/processor/cmp1bit.vhd}
vcom -93 -work work {C:/altera/13.1/_processor/processor/sft32.vhd}
vcom -93 -work work {C:/altera/13.1/_processor/processor/rotate.vhd}
vcom -93 -work work {C:/altera/13.1/_processor/processor/barrelrshift.vhd}
vcom -93 -work work {C:/altera/13.1/_processor/processor/sh32bit_r_16p_sftin.vhd}
vcom -93 -work work {C:/altera/13.1/_processor/processor/sh32bit_r_8p_sftin.vhd}
vcom -93 -work work {C:/altera/13.1/_processor/processor/sh32bit_r_4p_sftin.vhd}
vcom -93 -work work {C:/altera/13.1/_processor/processor/sh32bit_r_2p_sftin.vhd}
vcom -93 -work work {C:/altera/13.1/_processor/processor/sh32bit_r_1p_sftin.vhd}
vcom -93 -work work {C:/altera/13.1/_processor/processor/pc_add1.vhd}
vcom -93 -work work {C:/altera/13.1/_processor/processor/nextpc_comp.vhd}
vcom -93 -work work {C:/altera/13.1/_processor/processor/data_memory.vhd}

