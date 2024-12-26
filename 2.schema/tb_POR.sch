v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -240 -80 -240 120 {lab=GND}
N -240 120 -10 120 {lab=GND}
N 160 -50 190 -50 {lab=por}
N 160 -10 190 -10 {lab=por_x}
N 0 -160 -0 -100 {lab=vdd}
N -240 -160 -0 -160 {lab=vdd}
N -240 -160 -240 -140 {lab=vdd}
N -170 -160 -170 -50 {lab=vdd}
N -170 -50 -170 -30 {lab=vdd}
N -170 -30 -170 10 {lab=vdd}
N -170 10 -170 30 {lab=vdd}
N -170 30 -140 30 {lab=vdd}
C {por.sym} 10 10 0 0 {name=x1}
C {devices/vsource.sym} -240 -110 0 0 {name=V1 value="PWL(0s 0v 10u 0v 1m 3v 90m 3v 90.1m 0v)" savecurrent=false}
C {devices/gnd.sym} -130 120 0 0 {name=l1 lab=GND}
C {devices/simulator_commands.sym} 100 -260 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value=".tran 1u 100000u"
* ngspice commands}
C {devices/code.sym} 240 0 0 0 {name=MF20_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".include $::LIB/SOI_CMOS"
spice_ignore=false}
C {devices/lab_pin.sym} 190 -50 2 0 {name=p1 sig_type=std_logic lab=por
}
C {devices/lab_pin.sym} 190 -10 2 0 {name=p2 sig_type=std_logic lab=por_x
}
C {devices/lab_pin.sym} -130 -160 1 0 {name=p3 sig_type=std_logic lab=vdd
}
