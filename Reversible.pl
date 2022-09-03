#!perl.exe
use strict;
use warnings;

# AUTHOR: Robert DiCicco
# DATE: 2022-08-01
# Challenge 176 Reversible Numbers ( Perl )

sub AllDigitsOdd {
  my $d = shift;
  my @candidate = split("", $d);
  for my $c ( @candidate ) {
    if ( $c % 2 == 0 ){
      return -1;
    }
  }
  return 1;
}

for my $num ( 10 .. 99 ){
  my @forward = split("",$num);
  my @backward = reverse(@forward);
  my $newnum = $num + join("", @backward);
  my $retval = AllDigitsOdd($newnum);
  if ( $retval == 1){
    print("$num ");
  }
}
print "\n";

#-------------------------------------------------
# SAMPLE OUTPUT
# PS G:\Projects\Perl\Challenges> perl .\Reversible.pl
# 10 12 14 16 18 21 23 25 27 30 32 34 36 41 43 45 50 52 54 61 63 70 72 81 90 