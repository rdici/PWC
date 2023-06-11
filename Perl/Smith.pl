#!/usr/bin/env perl
=begin comment
--------------------------------------
AUTHOR: Robert DiCicco
DATE  : 2023-06-11
Challenge 133 Smith Numbers ( Perl )
--------------------------------------
=cut
use strict;
use warnings;

use Math::Prime::Util ':all'; 
use List::Util qw(sum);

my $n = 4;
my $occurence = 0;

sub SumPrimeFactors {
    my $n = shift;
    my @prime_factors = factor( $n ); 
    my $ln = scalar(@prime_factors);
    return 0 if ($ln == 1);
    my $total = 0;

    for (my $digit = 0; $digit < $ln; $digit++){
        if ($prime_factors[$digit] > 9 ) {
            my @testsum = split("",$prime_factors[$digit]);
            $total += sum(@testsum);
        } else {
            $total += $prime_factors[$digit];
        }
    }
    return($total);
}

print("Output: ");
while($occurence < 10 ) {
    my $pfsum = SumPrimeFactors($n);
    my $numsum = sum(split("", $n));
    if($pfsum == $numsum) {
        print("$n ");
        $occurence++;
    }
    $n++;
}

=begin comment
--------------------------------------
SAMPLE OUTPUT
perl Smith.pl

Output: 4 22 27 58 85 94 121 166 202 265
--------------------------------------
=cut


