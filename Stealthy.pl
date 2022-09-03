#!perl.exe
use strict;
use warnings;
use ntheory qw/divisors/;
use IO::Prompter;
use 5.30.0;
use English;
use lib "G:/Projects/Perl/Lib";
use MyHelp;

=head1 NAME

Stealthy.pl Perl Challenge #143

=head1 DATE

15-DEC-2021

=head1 LICENSE AND COPYRIGHT

Copyright (c) 2021 Robert DiCicco 
All rights reserved.

This module is free software; you can redistribute it and/or modify it under
the same terms as Perl itself. This program is
distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY;
without even the implied warranty of MERCHANTABILITY or FITNESS FOR A
PARTICULAR PURPOSE.

=head1 DESCRIPTION

You are given a positive number, $n.

Write a script to find out if the given number is a Stealthy Number.

A positive integer N is stealthy, if there exist positive integers a, b, c, d such that a * b = c * d = N and a + b = c + d + 1.

Example 1:

Input: $n = 36
Output: 1

Since 36 = 4 (a) * 9 (b) = 6 (c) * 6 (d) and 4 (a) + 9 (b) = 6 (c) + 6 (d) + 1.

Example 2:

Input: $n = 12
Output: 1

Since 2 * 6 = 3 * 4 and 2 + 6 = 3 + 4 + 1

Example 3:

Input: $n = 6
Output: 0

Since 2 * 3 = 1 * 6 but 2 + 3 != 1 + 6 + 1

=cut

### Author: Robert DiCicco
### Date: 15-DEC-2021
### Challenge #143 Stealthy Number v 2.0

# initialize vars
# array to hold list of divisors
my @final = ();
# sum of initial set of divisors
my $target = 0;

# Get number from user
my $inp = prompt 'Input the number : ', -integer => [ 1 .. 999 ];
chomp($inp);
$inp = int($inp);

# calculate list of divisors
my @d = divisors($inp);

# get divisors and their sums
foreach(@d){
    my $val = $inp / $ARG;
    # skip the opposite pair (e.g. 3,4  but skip 4,3)
    next if ($val > $ARG);
    my $digit_sum = $val + $ARG;
    
    if($target == 0){
        $target = $digit_sum;
        push(@final,$val,$ARG);
    }

    if($digit_sum == ($target + 1)){
        push(@final,$val,$ARG);
        last;
    } 
}

# if we have 4 divisors that meet the criteria, print
# using pointer to @final array
my $f =\@final;
if(scalar(@$f) == 4){
    print("@$f[2] x @$f[3] = @$f[0] x @$f[1] and @$f[2] + @$f[3] = @$f[0] + @$f[1] + 1");
} else {
    print("Not Stealthy!\n");
}
