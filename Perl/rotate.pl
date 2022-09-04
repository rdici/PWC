#!perl.exe
use strict;
use warnings;

sub rotate {
  my $c = shift;
  $c = substr($c, 1, 99) . substr($c, 0, 1);
  return($c);
}

my $num = 113;
my $x = 2;
print("$num\n");

while($x) {
  my $retval = rotate($num);
  print("$retval\n");
  $num = $retval;
  $x--;
}