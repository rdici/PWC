#!/usr/bin/perl
use strict;
use warnings;
use IO::Prompter;
use Array::Utils qw(:all);
use List::MoreUtils qw{any}; 
use lib 'G:\Projects\Perl\Lib';
use Mylib;
use MyHelp;
use 5.30.0;

=pod

=head3 NAME

Two Friendly Challenge #136 

=head3 AUTHOR

Robert DiCicco

=head3 DATE

21-OCT-2021

=head3 DESCRIPTION

You are given 2 positive numbers, $m and $n.

Write a script to find out if the given two numbers are Two Friendly.

Two positive numbers, m and n are two friendly when gcd(m, n) = 2 ^ p where p > 0. 
The greatest common divisor (gcd) of a set of numbers is the largest positive number 
that divides all the numbers in the set without remainder.

Example 1

    Input: $m = 8, $n = 24
    Output: 1

    Reason: gcd(8,24) = 8 => 2 ^ 3

=cut

#### Get first number and guarantee integer 
my $fnum = prompt 'Enter the first number: ', -num;
$fnum = int($fnum);
say "First number: $fnum";

#### Get first number and guarantee integer ####
my $snum = prompt 'Enter the second number: ', -num;
$snum = int(Mylib::trim($snum));
say "Second number: $snum";

my $retval = common_factor($fnum, $snum);

print "Output: $retval\n";

sub common_factor {
                my @denoms1 = ();         #### array to hold divisors for first number 
                for (my $x = 1; $x < $_[0]; $x++){
                                my $factor = $_[0] / $x; #### Get a divisor
                                if ($factor =~  /^-?\d+\z/ ){    #### All numbers, no decimal point
                                                if($factor != $_[0]){
                                                                push(@denoms1, $factor);  #### push divisor into array
                                                }
                                }
                }

                my $snum = $_[1];
                my @denoms2= ();
                for (my $x = 1; $x < $_[1]; $x++){
                                my $factor = $_[1] / $x;
                                if ($factor =~  /^-?\d+\z/ ){
                                                if($factor != $_[1]){
                                                                push(@denoms2, $factor);
                                                }
                                }
                }
                print ("@denoms1\n");  #### Divisors for first number
                print ("@denoms2\n");  #### divisors for second number
                my @isect = intersect(@denoms1, @denoms2);  #### get divisors common between arrays
                print("@isect\n");
                if (any { $_ == 2 } @isect ){
                                return(1);  #### Two Friendly
                }else{
                                return(0);  #### Not Two Friendly
                }
}
