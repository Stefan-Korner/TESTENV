# Clear previous setings
::utope::clearSettings

# general settings
set ::utope::settings(startup/firstRunScript) startUp_EDEN.tcl
set ::utope::settings(Editor) {C:/Program Files (x86)/Notepad++/notepad++.exe}

# MIB settings
set ::utope::settings(DataBase/loadPaths/dbPath) data/ASCII
set ::utope::settings(DataBase/loadPaths/dbEDENpath) data/ASCII_EDEN

# TC settings
# to satisfy TSC
set ::utope::settings(TC/timeTag/loadTimeTaggedCmdName) BINCMD

# TM settings
# this information is also needed to correctly decode PUS Service 1 telemetry
set ::utope::settings(TM/fineTimeBytes) 4

# EDEN settings
set ::utope::settings(plugins/datasource/EDEN/systemPktInterval) 0

prompt "TSC has been configured successfully and has to be restarted."
disconnect
::utope::_exit_all 0 0
