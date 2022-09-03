#!perl.exe
use strict;
use warnings;
use ntheory qw/divisors /;
use feature qw/say/;

=pod

=head3 NAME

Challenge 171 Abundant Number

=head3 AUTHOR

Robert DiCicco

DATE: 2022-06-28

=head3 DESCRIPTION

A number n for which the sum of divisors > 2n, or, equivalently, 
the sum of proper divisors (or aliquot sum) s(n) > n.

For example, 945 is the first Abundant Odd Number.

=cut

# AUTHOR: Robert DiCicco
# DATE: 2022-06-28
# Challenge 171 Abundant Number ( Perl )

my $n = 1;                                # Starting Number
my $count = 0;                            

while ($count < 20) {                     # Looking for 20 odd numbers
  my $sum = 0;                            # Hold our sum of divisors
  my @arr = divisors($n);
  pop(@arr);
  foreach(@arr) {                          # Add each divisor to the sum
    my $val = $_;
    $sum += $val;
  }
  if (($sum > $n) && ($n % 2 == 1)) {     # if the sum of divisors is greater than the source number,
    print "$n ";                          # and it is odd, print it
    $count++;
  }
  $n++;                                   # get next number
}
print "\n";

#---------------------------------------------------------------------
# SAMPLE OUTPUT
# 945 1575 2205 2835 3465 4095 4725 5355 5775 5985 6435 6615 6825 7245 7425 7875 8085 8415 8505 8925 
