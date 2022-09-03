#! perl.exe
use strict;
use warnings;
use ntheory qw/divisors powmod is_prime/;
use 5.30.0;
use lib "G:/Projects/Perl/Lib";
use MyHelp;

=pod

=head3 NAME

Challenge 139 Long Primes

=head3 AUTHOR

Robert DiCicco

=head3 DATE

17-NOV-2021

=head3 DESCRIPTION

Write a script to generate first 5 Long Primes.

A prime number (p) is called Long Prime if (1/p) has an infinite decimal 
expansion repeating every (p-1) digits.

Example

7 is a long prime since 1/7 = 0.142857142857...
The repeating part (142857) size is 6 i.e. one less than the prime number 7.

Also 17 is a long prime since 1/17 = 0.05882352941176470588235294117647...
The repeating part (0588235294117647) size is 16 i.e. one less than the prime number 17.

Another example, 2 is not a long prime as 1/2 = 0.5.
There is no repeating part in this case.

=cut

my $cnt        = 0;
my $test_prime = 1;

print("Enter the number of primes to find : ");
my $limit = <STDIN>;
chomp($limit);

print("Finding $limit Long Primes\n");
while ( 1 == 1 ) {
    my $ret = long_prime($test_prime);
    if ( $ret > 0 ) {
        $cnt++;
        print("$cnt. $test_prime\n");
        if ( $cnt == $limit ) {
            say "Goodbye !";
            last;
        }
    }
    $test_prime++;
}

sub long_prime {
    my ($p) = @_;
    return 0 unless is_prime($p);
    for my $d ( divisors( $p - 1 ) ) {
        return $d + 1 == $p if powmod( 10, $d, $p ) == 1;
    }
    return (0);
}

