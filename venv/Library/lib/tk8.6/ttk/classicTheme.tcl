#
# "classic" Tk theme.
#
# Implements Tk's traditional Motif-like look and feel.
#

namespace eval ttk::theme::classic {

<<<<<<< HEAD
    variable colors
    array set colors {
	-frame		"#d9d9d9"
	-window		"#ffffff"
	-activebg	"#ececec"
	-troughbg	"#b3b3b3"
=======
    variable colors; array set colors {
	-frame		"#d9d9d9"
	-window		"#ffffff"
	-activebg	"#ececec"
	-troughbg	"#c3c3c3"
>>>>>>> cb2058a7352ad65a7756918b9e8539859882041a
	-selectbg	"#c3c3c3"
	-selectfg	"#000000"
	-disabledfg	"#a3a3a3"
	-indicator	"#b03060"
	-altindicator	"#b05e5e"
    }

    ttk::style theme settings classic {
	ttk::style configure "." \
	    -font		TkDefaultFont \
	    -background		$colors(-frame) \
	    -foreground		black \
	    -selectbackground	$colors(-selectbg) \
	    -selectforeground	$colors(-selectfg) \
	    -troughcolor	$colors(-troughbg) \
	    -indicatorcolor	$colors(-frame) \
	    -highlightcolor	$colors(-frame) \
	    -highlightthickness	1 \
<<<<<<< HEAD
	    -borderwidth	1 \
	    -insertwidth	2 \
	    -focuswidth		0
=======
	    -selectborderwidth	1 \
	    -insertwidth	2 \
	    ;
>>>>>>> cb2058a7352ad65a7756918b9e8539859882041a

	# To match pre-Xft X11 appearance, use:
	#	ttk::style configure . -font {Helvetica 12 bold}

	ttk::style map "." -background \
	    [list disabled $colors(-frame) active $colors(-activebg)]
	ttk::style map "." -foreground \
	    [list disabled $colors(-disabledfg)]

	ttk::style map "." -highlightcolor [list focus black]

	ttk::style configure TButton \
	    -anchor center -padding "3m 1m" -relief raised -shiftrelief 1
	ttk::style map TButton -relief [list {!disabled pressed} sunken]

	ttk::style configure TCheckbutton -indicatorrelief raised
	ttk::style map TCheckbutton \
	    -indicatorcolor [list \
		    pressed $colors(-frame) \
		    alternate $colors(-altindicator) \
		    selected $colors(-indicator)] \
<<<<<<< HEAD
	    -indicatorrelief {alternate raised  selected sunken  pressed sunken}
=======
	    -indicatorrelief {alternate raised  selected sunken  pressed sunken} \
	    ;
>>>>>>> cb2058a7352ad65a7756918b9e8539859882041a

	ttk::style configure TRadiobutton -indicatorrelief raised
	ttk::style map TRadiobutton \
	    -indicatorcolor [list \
		    pressed $colors(-frame) \
		    alternate $colors(-altindicator) \
		    selected $colors(-indicator)] \
<<<<<<< HEAD
	    -indicatorrelief {alternate raised  selected sunken  pressed sunken}

	ttk::style configure TMenubutton -relief raised \
	    -indicatorborderwidth 2 -padding "3m 1m"
=======
	    -indicatorrelief {alternate raised  selected sunken  pressed sunken} \
	    ;

	ttk::style configure TMenubutton -relief raised -padding "3m 1m"
>>>>>>> cb2058a7352ad65a7756918b9e8539859882041a

	ttk::style configure TEntry -relief sunken -padding 1 -font TkTextFont
	ttk::style map TEntry -fieldbackground \
		[list readonly $colors(-frame) disabled $colors(-frame)]
<<<<<<< HEAD

	ttk::style element create Combobox.downarrow from default
	ttk::style configure TCombobox -padding 1 -arrowsize 12
=======
	ttk::style configure TCombobox -padding 1
>>>>>>> cb2058a7352ad65a7756918b9e8539859882041a
	ttk::style map TCombobox -fieldbackground \
		[list readonly $colors(-frame) disabled $colors(-frame)]
	ttk::style configure ComboboxPopdownFrame \
	    -relief solid -borderwidth 1

<<<<<<< HEAD
	ttk::style element create Spinbox.uparrow from default
	ttk::style element create Spinbox.downarrow from default
=======
>>>>>>> cb2058a7352ad65a7756918b9e8539859882041a
	ttk::style configure TSpinbox -arrowsize 10 -padding {2 0 10 0}
	ttk::style map TSpinbox -fieldbackground \
	    [list readonly $colors(-frame) disabled $colors(-frame)]

	ttk::style configure TLabelframe -borderwidth 2 -relief groove

<<<<<<< HEAD
	ttk::style configure TScrollbar -relief raised -arrowsize 12 -width 12
	ttk::style map TScrollbar -relief {{pressed !disabled} sunken}

	ttk::style configure TScale -sliderrelief raised -sliderborderwidth 2
=======
	ttk::style configure TScrollbar -relief raised
	ttk::style map TScrollbar -relief {{pressed !disabled} sunken}

	ttk::style configure TScale -sliderrelief raised
>>>>>>> cb2058a7352ad65a7756918b9e8539859882041a
	ttk::style map TScale -sliderrelief {{pressed !disabled} sunken}

	ttk::style configure TProgressbar -background SteelBlue
	ttk::style configure TNotebook.Tab \
	    -padding {3m 1m} \
<<<<<<< HEAD
	    -background $colors(-troughbg) \
	    -focussolid 1
=======
	    -background $colors(-troughbg)
>>>>>>> cb2058a7352ad65a7756918b9e8539859882041a
	ttk::style map TNotebook.Tab -background [list selected $colors(-frame)]

	# Treeview:
	ttk::style configure Heading -font TkHeadingFont -relief raised
	ttk::style configure Treeview -background $colors(-window)
	ttk::style map Treeview \
	    -background [list disabled $colors(-frame)\
				selected $colors(-selectbg)] \
	    -foreground [list disabled $colors(-disabledfg) \
				selected $colors(-selectfg)]

	#
	# Toolbar buttons:
	#
<<<<<<< HEAD
	ttk::style layout Toolbutton {
	    Toolbutton.focus -children {
		Toolbutton.border -children {
		    Toolbutton.padding -children {
			Toolbutton.label
		    }
		}
	    }
	}
	ttk::style configure Toolbutton -padding 2 -relief flat \
	    -shiftrelief 2 -focussolid 1
=======
	ttk::style configure Toolbutton -padding 2 -relief flat -shiftrelief 2
>>>>>>> cb2058a7352ad65a7756918b9e8539859882041a
	ttk::style map Toolbutton -relief \
	    {disabled flat selected sunken pressed sunken active raised}
	ttk::style map Toolbutton -background \
	    [list pressed $colors(-troughbg)  active $colors(-activebg)]
    }
}
