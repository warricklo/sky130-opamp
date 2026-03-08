v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
C {opamp.sym} 60 50 0 0 {name=x1}
C {lab_wire.sym} 60 0 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 60 100 2 1 {name=p2 sig_type=std_logic lab=0}
C {lab_wire.sym} 0 30 0 0 {name=p3 sig_type=std_logic lab=IN}
C {lab_wire.sym} 0 70 0 0 {name=p4 sig_type=std_logic lab=IN}
C {lab_wire.sym} 120 50 0 1 {name=p5 sig_type=std_logic lab=OUT}
C {code_shown.sym} 180 0 0 0 {name=SPICE only_toplevel=false value=".LIB /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt

.INCLUDE save_mos_params.spice
.SAVE ALL

.CONTROL
OP
WRITE opamp_tb_op.raw
.ENDC

VDD VDD 0 DC 1.8
VIN IN 0 DC 0.9"}
