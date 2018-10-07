# this is done at the beginning to ensure that the MIB is loaded in any case
LOG_INFO "Connecting to EDEN plugin"
if {! $::utope::connected} {
	connect EDEN
	while { ! $::utope::connected } {
		waittime +00.00.01.000
	}
	::utope::waitForDbLoaded
	array exists EDEN::Status
}
EDEN::connect SCOE
EDEN::connect SCOE2
