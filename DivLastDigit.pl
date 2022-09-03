#!perl.exe
use strict;
use warnings;
use ntheory qw/ divisors /;
use IO::Prompter;
use lib "G:/Projects/Perl/Lib";
use MyHelp;

=pod

=head3 NAME

Challenge #142 Divisor Last Digit

=head3 AUTHOR

Robert DiCicco

=head3 DATE

06-DEC-2021

=head3 DESCRIPTION

You are given positive integers, $m and $n.

Write a script to find total count of divisors of $m having last digit $n.

Example 1:

Input: $m = 24, $n = 2
Output: 2

The divisors of 24 are 1, 2, 3, 4, 6, 8 and 12.
There are only 2 divisors having last digit 2 are 2 and 12.

=cut

my @outlist = ();

my $fnum = prompt 'Input the first number : ', -integer => [ 1 .. 99999 ];
chomp($fnum);
$fnum = int($fnum);

my $snum = prompt 'Input the second number (last digit) : ',
  -integer => [ 0 .. 9 ];
chomp($snum);
$snum = int($snum);

# Get list of divisors for $fnum
my @d = divisors($fnum);

# And get rid of the last entry, which is $fnum
pop(@d);

# Check to see if we have saved anything to our array
if ( scalar(@d) ) {
    print("The divisors of $fnum are : @d\n");
}
else {
    die "There are no divisors. Aborting\n";
}

# Foreach divisor in our array
# get its last digit and save it in the outlist array

foreach my $n (@d) {
    my $retval = lastdigit($n);
    if ( ( $retval == $snum ) and ( $fnum != $snum ) ) {
        push( @outlist, $n );
    }
}

# Print the count of those divisors that have the proper last digit,
# and the list of those divisors
if ( scalar(@outlist) ) {
    print(  "There are only "
          . scalar(@outlist)
          . " divisor\(s\) having last digit $snum\n" );
    print("They are :  @outlist\n");
}
else {
	die "There are no divisors that have a last digit of $snum\n";
}

# Given an integer, return its last digit
sub lastdigit {
    my $len = length( $_[0] ) - 1;
	# Return the number if it is only one digit long
    if ( $len == 0 ) {
        return ( $_[0] );
    }
    else {
		# split into digits
        my @spl = split( //, $_[0] );
        return ( $spl[$len] );
    }
}
