#!/usr/bin/env perl
use strict;
use warnings;
=begin comment
--------------------------------------
AUTHOR: Robert DiCicco
DATE  : 2023-05-16
Challenge 217 Sorted Matrix ( Perl )
--------------------------------------
=cut

my @lst = (([[3, 1, 2], [5, 2, 4], [0, 1, 3]]),
            ([[2,1],[4,5]]),
            ([[1, 0, 3], [0, 0, 0], [1, 2, 1]]),
            );
            
my @out = ();
my @test = ();

for my $n (@lst) {
    my $ln = scalar(@$n);
    print("Input: \@matrix = ");
    print("test = @test\n");
    for (my $cnt = 0; $cnt < $ln; $cnt++) {
        print("["."@{@$n[$cnt]}] ");
        for my $val (@{@$n[$cnt]}) {
            push(@out,$val);
        }
    }
    print("\n");
    @out = sort(@out);
    print("Output: $out[2]\n");
    @out = ();
    print("----------------------\n");
}
=begin comment
--------------------------------------
SAMPLE OUTPUT
perl SortedMatrix.pl
Input: @matrix = test =
[3 1 2] [5 2 4] [0 1 3]
Output: 1
----------------------
Input: @matrix = test =
[2 1] [4 5]
Output: 4
----------------------
Input: @matrix = test =
[1 0 3] [0 0 0] [1 2 1]
Output: 0
--------------------------------------
=cut