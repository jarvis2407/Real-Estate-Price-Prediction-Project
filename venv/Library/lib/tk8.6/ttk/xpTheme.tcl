#
# Settings for 'xpnative' theme
#

namespace eval ttk::theme::xpnative {

    ttk::style theme settings xpnative {

	ttk::style configure . \
	    -background SystemButtonFace \
	    -foreground SystemWindowText \
	    -selectforeground SystemHighlightText \
	    -selectbackground SystemHighlight \
	    -insertcolor SystemWindowText \
<<<<<<< HEAD
	    -font TkDefaultFont

	ttk::style map "." \
	    -foreground [list disabled SystemGrayText]
=======
	    -font TkDefaultFont \
	    ;

	ttk::style map "." \
	    -foreground [list disabled SystemGrayText] \
	    ;
>>>>>>> cb2058a7352ad65a7756918b9e8539859882041a

	ttk::style configure TButton -anchor center -padding {1 1} -width -11
	ttk::style configure TRadiobutton -padding 2
	ttk::style configure TCheckbutton -padding 2
	ttk::style configure TMenubutton -padding {8 4}

	ttk::style configure TNotebook -tabmargins {2 2 2 0}
	ttk::style map TNotebook.Tab \
	    -expand [list selected {2 2 2 2}]

	ttk::style configure TLabelframe.Label -foreground "#0046d5"

	# OR: -padding {3 3 3 6}, which some apps seem to use.
	ttk::style configure TEntry -padding {2 2 2 4}
	ttk::style map TEntry \
	    -selectbackground [list !focus SystemWindow] \
<<<<<<< HEAD
	    -selectforeground [list !focus SystemWindowText]
=======
	    -selectforeground [list !focus SystemWindowText] \
	    ;
>>>>>>> cb2058a7352ad65a7756918b9e8539859882041a
	ttk::style configure TCombobox -padding 2
	ttk::style map TCombobox \
	    -selectbackground [list !focus SystemWindow] \
	    -selectforeground [list !focus SystemWindowText] \
	    -foreground	[list \
		disabled		SystemGrayText \
	    	{readonly focus}	SystemHighlightText \
	    ] \
<<<<<<< HEAD
	    -focusfill	[list {readonly focus} SystemHighlight]
=======
	    -focusfill	[list {readonly focus} SystemHighlight] \
	    ;
>>>>>>> cb2058a7352ad65a7756918b9e8539859882041a

	ttk::style configure TSpinbox -padding {2 0 14 0}
	ttk::style map TSpinbox \
	    -selectbackground [list !focus SystemWindow] \
<<<<<<< HEAD
	    -selectforeground [list !focus SystemWindowText]
=======
	    -selectforeground [list !focus SystemWindowText] \
	    ;
>>>>>>> cb2058a7352ad65a7756918b9e8539859882041a

	ttk::style configure Toolbutton -padding {4 4}

	# Treeview:
	ttk::style configure Heading -font TkHeadingFont -relief raised
	ttk::style configure Treeview -background SystemWindow
	ttk::style map Treeview \
	    -background [list   disabled SystemButtonFace \
				selected SystemHighlight] \
	    -foreground [list   disabled SystemGrayText \
<<<<<<< HEAD
				selected SystemHighlightText]
    }
}

# ttk::theme::xpnative::configureNotebookStyle --
#
# Sets theme-specific option values for the ttk::notebook style $style and the
# style $style.Tab.  Invoked by ::ttk::configureNotebookStyle.

proc ttk::theme::xpnative::configureNotebookStyle {style} {
    set tabPos [ttk::style lookup $style -tabposition {} nw]
    switch -- [string index $tabPos 0] {
	n {
	    ttk::style configure $style -tabmargins     {2 2 2 0}
	    ttk::style map $style.Tab -expand {selected {2 2 2 2}}
	}
	s {
	    ttk::style configure $style -tabmargins     {2 0 2 2}
	    ttk::style map $style.Tab -expand {selected {2 2 2 2}}
	}
	w {
	    ttk::style configure $style -tabmargins     {2 2 0 2}
	    ttk::style map $style.Tab -expand {selected {2 2 2 2}}
	}
	e {
	    ttk::style configure $style -tabmargins     {0 2 2 2}
	    ttk::style map $style.Tab -expand {selected {2 2 2 2}}
	}
	default {
	    ttk::style configure $style -tabmargins     {2 2 2 0}
	    ttk::style map $style.Tab -expand {selected {2 2 2 2}}
	}
=======
				selected SystemHighlightText];
>>>>>>> cb2058a7352ad65a7756918b9e8539859882041a
    }
}
