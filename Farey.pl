#!perl.exe
use strict;
use warnings;
use Number::Fraction qw/:constants/;

=pod

=head3 NAME

Challenge 159 Farey Sequence 

=head3 AUTHOR

Robert DiCicco

DATE: 4-APR-2022

=head3 DESCRIPTION

Example 1:

Input: $n = 5
Output: 0/1, 1/5, 1/4, 1/3, 2/5, 1/2, 3/5, 2/3, 3/4, 4/5, 1/1.

Example 2:

Input: $n = 7
Output: 0/1, 1/7, 1/6, 1/5, 1/4, 2/7, 1/3, 2/5, 3/7, 1/2, 4/7, 3/5, 2/3, 5/7, 3/4, 4/5, 5/6, 6/7, 1/1.

Example 3:

Input: $n = 4
Output: 0/1, 1/4, 1/3, 1/2, 2/3, 3/4, 1/1.

=cut

# Author: Robert DiCicco
# DATE: 4-APR-2022
# Challenge 159 Farey Sequence ( Perl )

my $n = $ARGV[0];   # command line arg, no error check !

my %equivs;         # hash arrray to hold fraction and its decimal equivalent
my $LOWER_LIMIT = '0' . '/' . '1';    # lower limit in the output '0/1'
my $UPPER_LIMIT = '1' . '/' . '1';    # upper limit in the output '1/1'

for (1..($n-1)) {     # get numerators we will work with
  my $frac = Number::Fraction->new($_, $n);    # create fraction $_/$n
  $equivs{$frac} = ($_ / $n);                  # store decimal value in hash keyed by fraction
}


my $d = $n-1;
while($d) {                                    # create all other fractions with denoms 1 .. n-1
  for my $num (1..($d-1)) {
    my $frac = Number::Fraction->new($num, $d);
    $equivs{$frac} = ($num / $d);              # store decimal value in hash keyed by fraction
  }
  $d--;
}

# print hash sorted by decimal values, displayed by fraction value
print("Input: n = $n\n");
print("$LOWER_LIMIT ");
foreach my $v (sort { $equivs{$a} <=> $equivs{$b} } keys %equivs) {
   print("$v ");
}
print("$UPPER_LIMIT\n");

