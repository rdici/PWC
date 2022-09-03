use strict;
use warnings;
use ntheory qw/pn_primorial is_prime/;
use List::Util qw/uniq/;
use lib "G:/Projects/Perl/Lib";
use MyHelp;

=pod

=head1 NAME

Challenge #155 Fortunate Numbers ( Perl )

=head1 AUTHOR

Author: Robert DiCicco

Date: 7-MAR-2022

=head1 DESCRIPTION

A Fortunate number, named after Reo Fortune, is the smallest 
integer m > 1 such that, for a given positive integer n, 
pn# + m is a prime number, where the primorial pn# is the 
product of the first n prime numbers.

=cut

my @out;  # array to hold final output
my $howmany = 8;
foreach (1..($howmany+1)) {
  my $p = pn_primorial($_);  # product of first n primes
  print "$p\n";
  my $m = 1;
  my $i = 0;
  do {
    $m++;
    $i = $p + $m;
  } until ( is_prime($i));  # add m until we hit next prime
  push(@out, $m);    # save m to the output array
}
@out = sort { $a <=> $b } @out;   # sort the output array
@out = uniq(@out);     # only keep unique values
print "@out ";
print "\n";