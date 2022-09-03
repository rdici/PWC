#!/usr/bin/perl

use strict;
use warnings;

#
# Complete the 'hourglassSum' function below.
#
# The function is expected to return an INTEGER.
# The function accepts 2D_INTEGER_ARRAY arr as parameter.
#

sub hourglassSum {
    # Write your code here

}

open(my $fptr, '>', "HGSum.txt");

my @arr = ();

for (1..6) {
    my $arr_item = rtrim(my $arr_item_temp = <STDIN>);

    my @arr_item = split /\s+/, $arr_item;

    push @arr, \@arr_item;
}

my $result = hourglassSum \@arr;

print $fptr "$result\n";

close $fptr;

sub ltrim {
    my $str = shift;

    $str =~ s/^\s+//;

    return $str;
}

sub rtrim {
    my $str = shift;

    $str =~ s/\s+$//;

    return $str;
}
