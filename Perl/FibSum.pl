#!perl.exe
use strict;
use warnings;
use experimental 'say';
use List::Util qw(sum0);
use Math::Fibonacci qw(isfibonacci);
use lib "G:/Projects/Perl/Lib";
use MyHelp;

=pod

=head3 NAME 

Challenge 149  Fibonacci Digit Sum (Perl)

=head3 AUTHOR 

Robert DiCicco

=head3 DATE 

25-JAN-2022

=head3 DESCRIPTION

Given an input $N, generate the first $N numbers for which 

the sum of their digits is a Fibonacci number.

Example

f(20)=[0, 1, 2, 3, 5, 8, 10, 11, 12, 14, 17, 20, 21, 23, 26, 30, 32, 35, 41, 44]

=cut

my $fibcnt = 20;

my @expected = (0, 1, 2, 3, 5, 8, 10, 11, 12, 14, 17, 20, 21, 23, 26, 30, 32, 35, 41, 44);

my $cnt = 0;
while($fibcnt){
    my $sumval = SingleSumOfDigits($cnt);
    if(isfibonacci($sumval)){
        print("$cnt ");
        $fibcnt--;
    }
    $cnt++;
}
say " ";

sub SingleSumOfDigits {
    my @temp = split(//,shift);
    return(sum0(@temp));
}
