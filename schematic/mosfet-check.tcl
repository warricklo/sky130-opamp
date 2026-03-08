xschem annotate_op
xschem unhilight_all

foreach {i n t} [xschem instance_list] {
	if {$t eq {nmos} || $t eq {pmos}} {
		set inst x[string tolower $i]
		lassign [array get ::ngspice::ngspice_data *$inst.*\\\[vth\\\]*] node_vth vth
		lassign [array get ::ngspice::ngspice_data *$inst.*\\\[vgs\\\]*] node_vgs vgs
		lassign [array get ::ngspice::ngspice_data *$inst.*\\\[vds\\\]*] node_vds vds
		set vov [expr {$vgs - $vth}]

		if {$vov <= 0} {
			# Off.
			xschem set hilight_color 0
		} elseif {$vds < $vov} {
			# Linear/triode.
			xschem set hilight_color 1
		} else {
			# Saturation.
			xschem set hilight_color 2
		}

		xschem hilight_instname $i fast
	}
}

xschem redraw
