#!/usr/bin/env perl
=begin comment
---------------------------------------------
AUTHOR: Robert DiCicco
DATE  : 09-26-2023
Challenge 236 Task 02 Array Loops ( Perl )
---------------------------------------------
=cut
use v5.38;

my @myints =([4,6,3,8,15,0,13,18,7,16,14,19,17,5,11,1,12,2,9,10], [0,1,13,7,6,8,10,11,2,14,16,4,12,9,17,5,3,18,15,1],
            [9,8,3,11,5,7,13,19,12,4,14,10,18,2,16,1,0,15,6,17]);

my @seen = ();
my $lps = 0;

sub WalkLoop ($m, $s) {
    my @outloop = ();
    my $start = $m->[$s];
    my $v = $m->[$start];
    if ($v == $start) {
        push(@seen, $s);
        push(@outloop, $s);
        my $ol = scalar @outloop;
        if ($ol == 1) {
            say "\tLoop: [@outloop]";
            $lps++;
        }
        return;
    } else {
        push(@seen, $start);
        push(@outloop, $start);
        push(@seen, $v);
        push(@outloop, $v);
    }
    while(1) {
        $v = $m->[$v];
        if ( grep( /^$v$/, @seen ) ) {
            last;
        }
        if ( $v == $start) {
            last;
        } else {
            push(@seen, $v);
            push(@outloop, $v);
        }
    }
    my $ol = scalar @outloop;
    if (($ol > 2) or ($ol == 1)) {
        say "\tLoop: [@outloop]";
        $lps++;
    }
}

for my $mints (@myints) {
    @seen = ();
    $lps = 0;
    print "Input: \@myints = [@$mints]\n";
    my $cnt = 0;
    while ($cnt < 20) {
        WalkLoop($mints,$cnt);
        $cnt++;
    }
    say "\tOutput: $lps";
    say "-----------------------------------";
}

=begin comment
---------------------------------------------
SAMPLE OUTPUT
perl .\ArrayLoops.pl

Input: @myints = [4 6 3 8 15 0 13 18 7 16 14 19 17 5 11 1 12 2 9 10]
        Loop: [4 15 1 6 13 5 0]
        Loop: [3 8 7 18 9 16 12 17 2]
        Loop: [14 11 19 10]
        Output: 3
-----------------------------------
Input: @myints = [0 1 13 7 6 8 10 11 2 14 16 4 12 9 17 5 3 18 15 1]
        Loop: [0]
        Loop: [1]
        Loop: [13 9 14 17 18 15 5 8 2]
        Loop: [7 11 4 6 10 16 3]
        Loop: [12]
        Loop: [19]
        Output: 6
-----------------------------------
Input: @myints = [9 8 3 11 5 7 13 19 12 4 14 10 18 2 16 1 0 15 6 17]
        Loop: [9 4 5 7 19 17 15 1 8 12 18 6 13 2 3 11 10 14 16 0]
        Output: 1
---------------------------------------------
=cut