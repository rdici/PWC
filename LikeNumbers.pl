#!perl.exe
use strict;
use warnings;
use IO::Prompter;
use List::MoreUtils qw / uniq /;
use lib "G:/Projects/Perl/Lib";
use MyHelp;

=pod

=head3 NAME

Challenge 141 Like Numbers

=head3 AUTHOR

Robert DiCicco

=head3 DATE

29-NOV-2021

=head3 DESCRIPTION

You are given positive integers, $m and $n.

Write a script to find total count of integers created using the digits of $m which is also divisible by $n.

Repeating of digits are not allowed. Order/Sequence of digits can't be altered. 
You are only allowed to use (n-1) digits at the most. For example, 432 is not 
acceptable integer created using the digits of 1234. Also for 1234, you can only 
have integers having no more than three digits.

Example 1:

Input: $m = 1234, $n = 2
Output: 9

Possible integers created using the digits of 1234 are:
1, 2, 3, 4, 12, 13, 14, 23, 24, 34, 123, 124, 134 and 234.

There are 9 integers divisible by 2 such as:
2, 4, 12, 14, 24, 34, 124, 134 and 234.

=cut

my $inp = prompt 'Input a 3 or 4 digit number : ', -integer => [100..9999]; 
$inp = int($inp);

my $dd = prompt 'Enter divisor : ', -integer => [2..99];
$dd = int($dd);

my @num = split(//,$inp);

my $len = scalar(@num);

if($len == 3){
	my @arr = (  $num[0],$num[1],$num[2], 
				"$num[0]$num[1]", "$num[0]$num[2]",
				"$num[1]$num[2]",
		);
		@arr = uniq(@arr);
		printit( \@arr );
}	
elsif ( $len == 4 ){
	my @arr2 = (  $num[0],$num[1],$num[2],$num[3], 
			"$num[0]$num[1]", "$num[0]$num[2]", "$num[0]$num[3]",
			"$num[1]$num[2]",  "$num[1]$num[3]",
			"$num[2]$num[3]",
			"$num[0]$num[1]$num[2]",
			"$num[0]$num[1]$num[3]",
			"$num[0]$num[2]$num[3]",
			"$num[1]$num[2]$num[3]",
	);
	@arr2 = uniq(@arr2);
	printit( \@arr2 );
}

sub printit { 
	my $aref = shift;
	print("Possible integers created : ");			
	foreach (@$aref){
			print("$_ ");
	}
	print("\n");
	print("Integers divisible by $dd : ");
	foreach (@$aref){
	if(($_ % $dd) == 0){
			print("$_ ");
		}
	}
	print("\n");
}
	