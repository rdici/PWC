#!/usr/bin/env perl
=begin pod
AUTHOR: Robert DiCicco
DATE  : 2023-02-20
Challenge 205 Third Highest ( Perl )
=cut
use strict;
use warnings;
use feature qw/say/;
use List::Util qw(max min);
use List::MoreUtils qw(uniq);

my @array = ([5,3,4], [5,6], [5,4,4,3]);

sub Process {
    my @a = @_;
    my $ln = scalar(@a);
    if ($ln < 3){
        say "Output: ",max(@a);
    } elsif ($ln == 3) {
        say "Output: ",min(@a);
    } else {
        @a = sort(@a);
        @a = uniq(@a);
        say "Output: ",$a[-3];
    }
    say " ";
}

for (@array) {
    my @arr = @$_;
    my @arr_jn = join(",",@arr);
    say "Input: \@array = (",@arr_jn,")";
    Process(@arr);
}

=begin pod
-----------------------------------------------
SAMPLE OUTPUT
Sperl .\ThirdHighest.pl
Input: @array = (5,3,4)
Output: 3

Input: @array = (5,6)
Output: 6

Input: @array = (5,4,4,3)
Output: 3
-----------------------------------------------
=cut

