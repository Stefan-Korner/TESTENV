# this is done at the beginning to ensure that the MIB is loaded in any case
LOG_INFO "Connecting to CnC plugin"
if {! $::utope::connected} {
	connect CncProto
	while { ! $::utope::connected } {
		waittime +00.00.01.000
	}
	::utope::waitForDbLoaded
	array exists CncProto::Status
}
CncProto::connect SCOE_TC
CncProto::connect SCOE_TM
