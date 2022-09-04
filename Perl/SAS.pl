#!/usr/bin/perl

use strict;
use warnings;

#
# Complete the 'simpleArraySum' function below.
#
# The function is expected to return an INTEGER.
# The function accepts INTEGER_ARRAY ar as parameter.
#

sub simpleArraySum {
  my $arr = shift;
  my $sum = 0;
  foreach my $val (@$arr) {
      print "$val\n";

    # Write your code here

}

open(my $fptr, '>', "SAS.txt");

my $ar_count = ltrim(rtrim(my $ar_count_temp = <STDIN>));

my $ar = rtrim(my $ar_temp = <STDIN>);

my @ar = split /\s+/, $ar;

my $result = simpleArraySum \@ar;

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
