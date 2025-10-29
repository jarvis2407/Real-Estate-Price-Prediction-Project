if {![package vsatisfies [package provide Tcl] 8.6.0]} return
if {($::tcl_platform(platform) eq "unix") && ([info exists ::env(DISPLAY)]
	|| ([info exists ::argv] && ("-display" in $::argv)))} {
<<<<<<< HEAD
    package ifneeded Tk 8.6.15 [list load [file join $dir .. .. bin libtk8.6.dll]]
} else {
    package ifneeded Tk 8.6.15 [list load [file join $dir .. .. bin tk86t.dll]]
=======
    package ifneeded Tk 8.6.14 [list load [file join $dir .. .. bin libtk8.6.dll]]
} else {
    package ifneeded Tk 8.6.14 [list load [file join $dir .. .. bin tk86t.dll]]
>>>>>>> cb2058a7352ad65a7756918b9e8539859882041a
}
