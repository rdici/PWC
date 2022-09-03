use strict;
use feature qw/say/;

sub hackerrankInString {
  my $str = shift;
  $str =~ tr/bdfgijlmopqstuvwxyz//d;
  say $str;
}

hackerrankInString('heriamstackerrank');