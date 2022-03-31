# maxx 1
wm title . "scenario"
wm geometry . 480x600+650+100
canvas .c -width 800 -height 800 \
	-scrollregion {0c -1c 30c 100c} \
	-xscrollcommand ".hscroll set" \
	-yscrollcommand ".vscroll set" \
	-bg white -relief raised -bd 2
scrollbar .vscroll -relief sunken  -command ".c yview"
scrollbar .hscroll -relief sunken -orient horiz  -command ".c xview"
pack append . \
	.vscroll {right filly} \
	.hscroll {bottom fillx} \
	.c {top expand fill}
.c yview moveto 0
# ProcLine[2] stays at 0 (Used 0 nobox 0)
.c create rectangle 264 0 340 20 -fill black
# ProcLine[2] stays at 0 (Used 0 nobox 0)
.c create rectangle 263 -2 337 18 -fill ivory
.c create text 300 8 -text "1::init:"
# ProcLine[1] stays at 0 (Used 0 nobox 0)
.c create rectangle 99 0 185 20 -fill black
# ProcLine[1] stays at 0 (Used 0 nobox 0)
.c create rectangle 98 -2 182 18 -fill ivory
.c create text 140 8 -text "0:never_0"
.c create text 70 32 -fill #eef -text "1"
.c create line 140 32 300 32 -fill #eef -dash {6 4}
.c create line 140 36 140 20 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 0 to 1 (Used 1 nobox 0)
# ProcLine[1] stays at 1 (Used 1 nobox 1)
.c create rectangle 122 22 158 42 -fill white -width 0
.c create text 140 32 -text "#112"
.c create text 70 56 -fill #eef -text "3"
.c create line 140 56 300 56 -fill #eef -dash {6 4}
.c create line 300 36 300 44 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 0 to 3 (Used 1 nobox 1)
# ProcLine[2] stays at 3 (Used 1 nobox 1)
.c create rectangle 263 46 337 66 -fill white -width 0
.c create text 300 56 -text "1:Joueur"
.c create text 70 80 -fill #eef -text "5"
.c create line 140 80 300 80 -fill #eef -dash {6 4}
.c create line 140 48 140 68 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 1 to 5 (Used 1 nobox 1)
# ProcLine[1] stays at 5 (Used 1 nobox 1)
.c create rectangle 122 70 158 90 -fill white -width 0
.c create text 140 80 -text "#111"
.c lower grid
.c raise mesg
