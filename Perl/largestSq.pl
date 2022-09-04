#!perl.exe
use strict;
use warnings;
use feature "say";
use lib "G:/Projects/Perl/Lib";
use MyHelp;

=pod

=head3 NAME 

Challenge 149 Largest Square

=head3 AUTHOR

Robert DiCicco

=head3 DATE

25-JAN-2022

=head3 DESCRIPTION

Given a number base, derive the largest perfect square with no 

repeated digits and return it as a string. (For base>10, use 'A'..'Z'.)

Example:

    f(2)="1"
    f(4)="3201"
    f(10)="9814072356"
    f(12)="B8750A649321"

=cut

sub base_to_b {
    my ($n, $b) = @_;
    my $s = "";
    while ($n) {
        $s .= ('0'..'9','A'..'Z')[$n % $b];
        $n = int($n / $b);
    }
    scalar(reverse($s));
}

sub has_unique_digits {
    my $in = shift; 
    my %seen = map { $_ => 1 } split //,  $in;
    return length $in == scalar keys %seen;
}

sub largest {
    my $base = shift;
    my $largest_num = $base ** $base - 1;
    my $largest_root = int sqrt $largest_num;
    for my $i ( reverse 1..$largest_root) {
        my $sq = base_to_b ($i*$i, $base);
        next unless has_unique_digits $sq;
        say "f($base) = $sq" and last;
    }
}

largest $_ for 1..14;