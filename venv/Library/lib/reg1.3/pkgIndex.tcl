if {![package vsatisfies [package provide Tcl] 8.5]} return
if {[info sharedlibextension] != ".dll"} return
if {[::tcl::pkgconfig get debug]} {
    package ifneeded registry 1.3.5 \
<<<<<<< HEAD
	    [list load [file join $dir tclreg13g.dll] Registry]
} else {
    package ifneeded registry 1.3.5 \
	    [list load [file join $dir tclreg13.dll] Registry]
=======
            [list load [file join $dir tclreg13g.dll] Registry]
} else {
    package ifneeded registry 1.3.5 \
            [list load [file join $dir tclreg13.dll] Registry]
>>>>>>> cb2058a7352ad65a7756918b9e8539859882041a
}
