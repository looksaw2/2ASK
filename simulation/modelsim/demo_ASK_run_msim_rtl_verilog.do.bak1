transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+D:/quartus_ii/demo_ASK/src {D:/quartus_ii/demo_ASK/src/ASK_top.v}
vlog -vlog01compat -work work +incdir+D:/quartus_ii/demo_ASK/src {D:/quartus_ii/demo_ASK/src/my_dac_bus.v}
vlog -vlog01compat -work work +incdir+D:/quartus_ii/demo_ASK/src {D:/quartus_ii/demo_ASK/src/switch.v}
vlog -vlog01compat -work work +incdir+D:/quartus_ii/demo_ASK/src {D:/quartus_ii/demo_ASK/src/m_seq_gen.v}
vlog -vlog01compat -work work +incdir+D:/quartus_ii/demo_ASK/ip {D:/quartus_ii/demo_ASK/ip/PLL.v}
vlog -vlog01compat -work work +incdir+D:/quartus_ii/demo_ASK/ip {D:/quartus_ii/demo_ASK/ip/ROM.v}
vlog -vlog01compat -work work +incdir+D:/quartus_ii/demo_ASK/ip {D:/quartus_ii/demo_ASK/ip/Counter.v}
vlog -vlog01compat -work work +incdir+D:/quartus_ii/demo_ASK/db {D:/quartus_ii/demo_ASK/db/pll_altpll.v}

vlog -vlog01compat -work work +incdir+D:/quartus_ii/demo_ASK/src {D:/quartus_ii/demo_ASK/src/ASK_top_tb.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneiv_hssi_ver -L cycloneiv_pcie_hip_ver -L cycloneiv_ver -L rtl_work -L work -voptargs="+acc"  ASK_top_tb

add wave *
view structure
view signals
run -all
