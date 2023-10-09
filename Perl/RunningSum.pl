#!/usr/bin/env perl
=begin comment
AUTHOR: Robert DiCicco
DATE  : 2023-10-09
Challenge 238 Task 01 Running Sum ( Perl )
=cut

use v5.38;

my @myints = ([1, 2, 3, 4, 5],[1, 1, 1, 1, 1],[0, -1, 1, 2]);

for my $mints (@myints) {
    my $sum = 0;
    my @out = ();
    say "Input: \@int = [@$mints]";
    for my $i (@$mints) {
        push(@out, $i + $sum);
        $sum += $i;
    }
    say "Output: [@out]\n";
}

=begin comment
SAMPLE OUTPUT
perl .\RunningSum.pl

Input: @int = [1 2 3 4 5]
Output: [1 3 6 10 15]

Input: @int = [1 1 1 1 1]
Output: [1 2 3 4 5]

Input: @int = [0 -1 1 2]
Output: [0 -1 0 2]
=cut