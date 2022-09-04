#!perl.exe
use strict;
use warnings;
use ntheory qw/ divisors /;
use lib "G:/Projects/Perl/Lib";
use MyHelp;

=pod

=head1 NAME

Number_Divisors.pl Challenge #141

=head1 DESCRIPTION

Write a script to find lowest 10 positive integers having exactly 8 divisors.

Example

24 is the first such number having exactly 8 divisors.
1, 2, 3, 4, 6, 8, 12 and 24.


=head2 COPYRIGHT

Author: Robert DiCicco

Date: 29-NOV-2021

 It is free software; you can redistribute it and/or modify it under the terms of either:

a) the GNU General Public License as published by the Free Software Foundation; either version 1, or (at your option) any later version, or

b) the "Artistic License". 

=cut

my $FACNUM = 8;
my $LIMIT = 10;
my ($fnd,$num) = 0;

while(1){
	$num++;
	my @d = divisors($num);
	if(scalar(@d) == $FACNUM){
		print("$num =  ");
		foreach my $n (@d){
			print($n . " ");
		}
		print("\n");
		$fnd++;
		last if($fnd == $LIMIT );
	}
}