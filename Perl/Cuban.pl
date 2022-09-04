#!perl.exe
use strict;
use warnings;
use ntheory qw/is_prime/;
use feature qw/say/;

# AUTHOR: Robert DiCicco
# DATE: 28-MAR-2022
# Challenge 158 Cuban Primes ( Perl )


my $TARGET = 1000;
my $i = 1;
my @outarr;


sub makeCuban {
  my $num = shift;
  my $cuban = 3 * ($num**2) + (3 * $num) + 1;
  return($cuban) if (is_prime($cuban));
  return(-1);
}


while( $i < $TARGET ) {
  my $retval = makeCuban($i);
  last if ($retval > $TARGET);
  if($retval > 0) {
    push(@outarr, $retval);
  }
  $i++;
}

say "@outarr ";