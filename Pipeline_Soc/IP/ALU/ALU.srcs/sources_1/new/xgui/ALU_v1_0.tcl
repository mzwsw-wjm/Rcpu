# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "one" -parent ${Page_0}
  ipgui::add_param $IPINST -name "zero_0" -parent ${Page_0}


}

proc update_PARAM_VALUE.one { PARAM_VALUE.one } {
	# Procedure called to update one when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.one { PARAM_VALUE.one } {
	# Procedure called to validate one
	return true
}

proc update_PARAM_VALUE.zero_0 { PARAM_VALUE.zero_0 } {
	# Procedure called to update zero_0 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.zero_0 { PARAM_VALUE.zero_0 } {
	# Procedure called to validate zero_0
	return true
}


proc update_MODELPARAM_VALUE.one { MODELPARAM_VALUE.one PARAM_VALUE.one } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.one}] ${MODELPARAM_VALUE.one}
}

proc update_MODELPARAM_VALUE.zero_0 { MODELPARAM_VALUE.zero_0 PARAM_VALUE.zero_0 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.zero_0}] ${MODELPARAM_VALUE.zero_0}
}

