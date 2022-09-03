#!perl.exe
use strict;
use warnings;
use List::Util qw/min sum/;
use lib "G:/Projects/Perl/Lib";
use MyHelp;

=pod

=head3 NAME

Challenge #152 Triangle Sum Path  ( Perl )

=head3 AUTHOR

Robert DiCicco

=head3 DATE

14-FEB-2022

=head3 DESCRIPTION

You are given a triangle array.

Write a script to find the minimum sum path from top to bottom.

Example 1:

Input: $triangle = [ [1], [5,3], [2,3,4], [7,1,0,2], [6,4,5,2,8] ]

                1
               5 3
              2 3 4
             7 1 0 2
            6 4 5 2 8

Output: 8

Minimum Sum Path = 1 + 3 + 2 + 0 + 2 => 8

=cut

my @output;
#my $elem;
#my @triangle = ([5], [2,3], [4,1,5], [0,1,2,3], [7,2,4,1,9]);
my @triangle = ([1], [5,3], [2,3,4], [7,1,0,2], [6,4,5,2,8]);

print "Array : ";
foreach my $subarray(@triangle){
  my $val = min(@$subarray);
    push(@output, $val);
    print "[@$subarray] ";
}
print "\n";

my $total = sum @output;

print "Minimum Sum Path @output = $total\n";