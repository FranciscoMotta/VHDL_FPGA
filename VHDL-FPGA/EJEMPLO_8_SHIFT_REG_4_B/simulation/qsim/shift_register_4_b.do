onerror {exit -code 1}
vlib work
vcom -work work shift_register_4_b.vho
vcom -work work Waveform.vwf.vht
vsim -c -t 1ps -L cycloneive -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.shift_register_4_b_vhd_vec_tst
vcd file -direction shift_register_4_b.msim.vcd
vcd add -internal shift_register_4_b_vhd_vec_tst/*
vcd add -internal shift_register_4_b_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f
