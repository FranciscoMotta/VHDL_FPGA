onerror {exit -code 1}
vlib work
vcom -work work decoder_vector_3_8.vho
vcom -work work Waveform.vwf.vht
vsim -c -t 1ps -sdfmax decoder_vector_3_8_vhd_vec_tst/i1=decoder_vector_3_8_vhd.sdo -L cycloneive -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.decoder_vector_3_8_vhd_vec_tst
vcd file -direction decoder_vector_3_8.msim.vcd
vcd add -internal decoder_vector_3_8_vhd_vec_tst/*
vcd add -internal decoder_vector_3_8_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f
