#!perl.exe

# AUTHOR: Robert DiCicco
# DATE:   2022-06-06
# Challenge 168 Home Prime ( Perl )

use strict;
use warnings;
use ntheory qw/is_prime factor divisors/;

my $hp = 8;
my @results;

sub homeprime {
  my $hp = shift;
  my @factors = factor($hp);
  my $hp_new = join('',@factors);
  return($hp_new);
}

my $flag = 1;
push(@results, $hp);
while ( $flag > 0) {
  my $retval = homeprime($hp);
  if ( is_prime($retval) ){
    push(@results, $retval);
    $flag = 0;
  } else {
    push(@results, $retval);
    $hp = $retval;
  } 
}
  print ("@results ");
  print("\n");

#----------------------------------------------------------------
# SAMPLE OUTPUT
# PS G:\Projects\Perl\Challenges> perl homeprime.pl
# 8 222 2337 31941 33371313 311123771 7149317941 22931219729 112084656339 3347911118189 11613496501723 97130517917327 531832651281459 3331113965338635107 
