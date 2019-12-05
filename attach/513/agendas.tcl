# ****************************************************************************
# Synopsis:
#     arrayHasElem ?options? arrName ?keyVar? ?valueVar?
#
# Options:
#     -remove
#         does "unset arrName($key)" iff a key has been found.
#     --
#         end of option list
#
# Take any key (the very first) and assign it to keyVar and its value to valueVar.
# Return value is 1 iff an element has been found and 0 otherwise.
# ****************************************************************************

proc arrayHasElem {args} {
    set optli [list -remove --]
    set rm 0
    for {set i 0} {$i < [llength $args]} {incr i} {
        if {[string index [set a [lindex $args $i]] 0] ne "-"} break
        set a [::tcl::prefix match -error {-level 1} $optli $a]
        switch -- $a {
            -remove { incr rm  }
            -- { incr i;  break }
        }
    }
    # --- $i is on the first non-option.
    lassign [set akv [lrange $args $i end]] arrName aKey aValue
    switch [llength $akv] {
        0 { return -code error "missing: arrName" }
        1 { upvar 1 $arrName arr }
        2 { upvar 1 $arrName arr $aKey key }
        3 { upvar 1 $arrName arr $aKey key $aValue value }
        default { return -code error "too many arguments: $akv" }
    }
    # payload:
    if {![info exists arr]} { return 0 }
    set id [array startsearch arr]
    set nm [array nextelement arr $id]
    array donesearch arr $id
    if {$nm eq ""} { ;# check: nothing-found or ""-is-a-valid-key; (annoying!)
        # --- already 'donesearch' => no [array anymore] any more.
        if {![info exists arr([list])]} { return 0 }
    }
    set key $nm
    set value $arr($key)
    if {$rm} { unset arr($key) }
    return 1
}

# ****************************************************************************
apply {{} {
    set dct [namespace ensemble configure ::array -map]
    if {[dict exists $dct haselem]} return
    dict set dct haselem ::arrayHasElem
    namespace ensemble configure ::array -map $dct
}}

# ############################################################################
# ****************************************************************************
# Synopsis:
#     dHaselem ?-remove? dictVar ?keyVar? ?valueVar?
#
# ****************************************************************************

proc dHaselem {args} {
    set rm 0 ;# option-handling:
    switch [llength $args] {
        0 { return -code error "dict argument missing" }
        1 { upvar 1 [lindex $args 0] d }
        default {
            if {[string index [set a [lindex $args 0]] 0] eq "-"} {
                switch -- [::tcl::prefix match {-remove} $a] {
                    -remove {
                        incr rm
                        set args [lrange $args 1 end]
                    }
                }
            }
            lassign $args dvar keyVar valueVar
            switch [llength $args] {
                0 { return -code error "dict argument missing" }
                1 { upvar 1 $dvar d }
                2 { upvar 1 $dvar d  $keyVar key }
                3 { upvar 1 $dvar d  $keyVar key  $valueVar val }
                default { return -code error "unknown arguments: $args" }
            }
        }
    }
    # payload:
    if {![info exists d]} { return 0 }
    dict for {key val} $d {
        if {$rm} { dict unset d $key }
        return 1
    }
    return 0
}

# ############################################################################
apply {{} {
    set dct [namespace ensemble configure ::dict -map]
    if {[dict exists $dct haselem]} return
    dict set dct haselem ::dHaselem
    namespace ensemble configure ::dict -map $dct
}}

# ############################################################################
# ****************************************************************************
# Synopsis:
#     lhaselem ?options? listVar ?valueVar?
#
# Options:
#     -index index
#         only look at the required index
#     -remove
#         does remove the item iff it has been found.
#     --
#         end of option list
#
# Return value is 1 iff an element has been found and 0 otherwise.
# ****************************************************************************

proc lhaselem {args} {
    set optli [list -index -remove --]
    set index end
    set rm 0
    switch [llength $args] {
        0 { return -code error "wrong number of arguments" }
        1 { upvar 1 [lindex $args 0] livar }
        default {
            for {set i 0} {$i < [llength $args] - 1} {incr i} {
                if {[string index [set a [lindex $args $i]] 0] ne "-"} break
                set a [::tcl::prefix match -error {-level 1} $optli $a]
                switch -- $a {
                    -index  { set index [lindex $args [incr i]] }
                    -remove { incr rm  }
                    -- { incr i;  break }
                }
            }
            # --- $i is on the first non-option.
            if {$i < [llength $args] -2} {
                return -code error "wrong number of arguments"
            } elseif {$i == [llength $args] -2} {
                upvar 1 [lindex $args end-1] livar  [lindex $args end] val
            } else {
                upvar 1 [lindex $args end] livar
            }
        }
    }
    # payload:
    if {![info exists livar]} { return 0 }
    set len [llength $livar]
    set index [string map [list end [incr len -1]] $index]
    set index [expr {$index}]
    if {$index < 0 || $index >= [llength $livar]} { return 0 }
    set val [lindex $livar $index]
    if {$rm} { set livar [lreplace $livar $index $index] }
    return 1
}
