#!perl.exe
use strict;
use warnings;
use Carp;

=pod

=head3 NAME

Challenge 160 Equilibrium Index 

=head3 AUTHOR

Robert DiCicco

DATE: 11-APR-2022

=head3 DESCRIPTION

For an array A consisting n elements, index i is an equilibrium index 
if the sum of elements of subarray A[0..i-1] is equal to the sum of 
elements of subarray A[i+1..n-1].

Example 1:

Input: @n = (1, 3, 5, 7, 9)
Output: 3

=cut

# AUTHOR: Robert DiCicco
# DATE: 11-APR-2022
# Challenge 160 Equilibrium Index ( Perl )

sub leftsum {                           # get sum of the array to left of the inflection point,
  my $a = shift;                        # this includes the inflection point
  my $i = shift;
  my $sum = 0;
  while($i >= 0 ){
    $sum += @$a[$i];
    $i--;
  }
  return $sum;
}

sub rightsum {                          # get sum of the array to right of the inflection point,
  my $a = shift;                        # this includes the inflection point
  my $i = shift;
  my $sum = 0;
  while($i < scalar(@$a) ){
    $sum += @$a[$i];
    $i++;
  }
  return $sum;
}


 sub balance {
   my $a = shift;                       # the input array
   my $flag = 0;                        # 'found' flag
   my $len = scalar(@$a);               
   foreach my $i (1..$len-2){           # step thru possible inflection points
      my $leftval = leftsum($a, $i);    # get the sum oof left side of inflection point
      my $rightval = rightsum($a,$i);   # get sum of right side of inflection point
      if ($leftval == $rightval){       # compare sums
        print "Output: $i\n\n";
        $flag++;                        # increment flag if equal
        last;
      }
   }
   if ( $flag == 0 ) {print "Output: -1 as no Equilibrium Index found.\n\n"} ;
   return;
 }


my $x = 3;
my @arr;
while($x){
    # try each of the supplied arrays
    if ($x == 3) { 
      @arr = (1, 3, 5, 7, 9);
    } elsif ( $x == 2 ) { 
      @arr = (1, 2, 3, 4, 5);
    } elsif ( $x == 1 ) {
      @arr = (2,4,2);
    } else { croak "Error: Unknown case!" };
  print "Input: \@n = \( @arr \)\n";
  balance(\@arr);
  $x--;
}



