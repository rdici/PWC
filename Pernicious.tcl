#!tclsh.exe

package require Tcl 8.6

proc dec2bin {i {width {}}} {
  #returns the binary representation of $i
  # width determines the length of the returned string (left truncated or added left 0)
  # use of width allows concatenation of bits sub-fields
  set res {}
  if {$i<0} {
      set sign -
      set i [expr {abs($i)}]
  } else {
      set sign {}
  }
  while {$i>0} {
      set res [expr {$i%2}]$res
      set i [expr {$i/2}]
  }
  if {$res eq {}} {set res 0}

  if {$width ne {}} {
      append d [string repeat 0 $width] $res
      set res [string range $d [string length $res] end]
  }
  return $sign$res
}

proc ladd l {                     ;# return sum of divisor subset
  if {![llength $l]} {return 0}
  return [expr [join $l +]]
}

set x 1
set TARGET 10

# This is a normal way to write a Tcl while loop.

while {$x < $TARGET} {
    puts "x is $x"
    set bnum [ dec2bin $x 6]
    puts "$x = $bnum"
    set lst [split $bnum 0]
    set digsum [ ladd $bnum ]
    puts $digsum
    puts " "
    set x [expr {$x + 1}]
}