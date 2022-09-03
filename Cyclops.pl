#!perl.exe
use strict;
use warnings;
use ntheory qw/is_prime/;
no warnings 'experimental::smartmatch';
use 5.30.0;

=pod

=head3 NAME

# Challenge 177 Palindromic Prime Cyclops ( Perl )

=head3 AUTHOR

Robert DiCicco

DATE: 2022-08-08

=head3 DESCRIPTION

A cyclops number is a number with an odd number of digits that has a zero in the center only.

=cut

# AUTHOR: Robert DiCicco
# DATE: 2022-08-08
# Challenge 177 Palindromic Prime Cyclops ( Perl )

sub MidChar {
  my $str = shift;
  my $ln = length($str);
  given($ln){
    when (3) { return(substr($str,1,1)); }
    when (5) { return(substr($str,2,1)); }
    when (7) { return(substr($str,3,1)); }
    default  { return(-1); }
  }
}

my $count = 0;
my $candidate = 100;

while( $count <= 20 ) {
  if(length($candidate) % 2 == 0) {
    $candidate++;
     next;
  }
  if (is_prime($candidate) && $candidate == reverse($candidate) && MidChar($candidate) == 0 ) {
    print("$candidate ");
    $count++;
  }
  $candidate++;
}
print("\n");

#------------------------------------------------
# SAMPLE OUTPUT
# PS G:\Projects\Perl\Challenges> perl .\Cyclops.pl
# 101 16061 31013 35053 38083 73037 74047 91019 94049 1120211 1150511 1160611 1180811 1190911 1250521 1280821 1300031 1360631 1390931 1490941 1520251 