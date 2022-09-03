#!perl.exe
use strict;
use warnings;

=pod

=head3 NAME

Challenge 174 Disarium Numbers

=head3 AUTHOR

Robert DiCicco

DATE: 2022-07-18

=head3 DESCRIPTION

A disarium number is an integer where the sum of each digit raised to the power 
of its position in the number, is equal to the number.

=cut

# Author: Robert DiCicco
# DATE: 2022-07-18
# Challenge 174 Disarium Numbers ( Perl )

my $inp = 0;
my @arr = ();

sub getPositSum {
  my @a = @_;
  my $sum = 0;
  for (my $i = 0; $i < scalar(@arr); $i++){
    $sum += $arr[$i] ** ($i+1);
  }
  return $sum;
}

$inp = 0;
my $count = 1;
while($count < 20){
  @arr = split(//, $inp);
  my $retval = getPositSum(\@arr);
  if($retval == $inp){
    print("$retval ");
    $count++;
  }
  $inp++;
}
print(" ");

#--------------------------------------------------
# SAMPLE OUTPUT
# PS G:\Projects\Perl\Challenges> perl .\Disarium.pl
# 0 1 2 3 4 5 6 7 8 9 89 135 175 518 598 1306 1676 2427 2646798  