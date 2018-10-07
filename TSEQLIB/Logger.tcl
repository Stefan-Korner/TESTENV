#******************************************************************************
# DEMO                                                                        *
#******************************************************************************
# Logging functions                                                           *
#******************************************************************************

#############
# functions #
#############
proc ::LOG {message} {
	syslog -debug -- $message
}

proc ::LOG_INFO {message} {
	syslog -info -- $message
}

proc ::LOG_WARNING {message} {
	syslog -warning -- $message
}

proc ::LOG_ERROR {message} {
	syslog -error -- $message
}
