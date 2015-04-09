# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
	set Page0 [ipgui::add_page $IPINST -name "Page 1" -layout vertical]
	set Component_Name [ipgui::add_param $IPINST -parent $Page0 -name Component_Name]
	set width [ipgui::add_param $IPINST -parent $Page0 -name width]
}

proc update_PARAM_VALUE.width { PARAM_VALUE.width } {
	# Procedure called to update width when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.width { PARAM_VALUE.width } {
	# Procedure called to validate width
	return true
}


proc update_MODELPARAM_VALUE.width { MODELPARAM_VALUE.width PARAM_VALUE.width } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.width}] ${MODELPARAM_VALUE.width}
}

