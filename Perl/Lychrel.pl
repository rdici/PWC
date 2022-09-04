#!/usr/bin/env perl
use strict;
use warnings;
use lib "G:/Projects/Perl/Lib";
use MyHelp;

=pod

=head3 NAME

Lychrel Number  Challenge 137

=head3 AUTHOR

Robert DiCicco

=head3 DATE

01-NOV-2021

=head3 DESCRIPTION

You are given a number, 10 <= $n <= 1000.

Write a script to find out if the given number is Lychrel number. 
To keep the task simple, we impose the following rules:

a. Stop if the number of iterations reached 500.
b. Stop if you end up with number >= 10_000_000.


[UPDATED][2021-11-01 16:20:00]: If you stop because of any of the above 
two rules then we expect 1 as an output.

According to wikipedia:

A Lychrel number is a natural number that cannot form a palindrome through 
the iterative process of repeatedly reversing its digits and adding the resulting numbers.

=cut

print("Enter the first number: ");
my $fnum = <STDIN>;
chomp($fnum);

my $found = 0;
my $iterations = 0;
my $snum = 0;

while(( $found == 0) and ($iterations < 500) and ($snum < 10_000_000)){
	$iterations++;
	$snum = reverse("$fnum");
	my $mysum = $fnum + $snum;
	my $revsum = reverse($mysum);
	$snum =~ s/^\s+//;   #remove leading spaces
	print  "$fnum + $snum = $mysum\n";

	if( $mysum == $revsum){ 
		print("Palindrome found after $iterations iterations\n"); 
		$found++;
	} else {
		$fnum = $mysum;
	}
}

if($iterations == 500 ){
		print("Reached total iteration limit of 500\n");
}
if($snum >= 10_000_000){
		print("Value has exceeded limit of 10_000_000\n");
}