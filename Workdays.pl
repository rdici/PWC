#!perl.exe
### Author: Robert DiCicco
### Date: 


use strict;
use warnings;
use Date::Calc qw(:all);
use IO::Prompter;
use lib "G:/Projects/Perl/Lib";
use MyHelp;

=pod

=head3 NAME

Challenge #: 138  Workdays.pl

=head3 AUTHOR

Robert DiCicco

=head3 DATE

8-NOV-2021

=head3 DESCRIPTION

You are given a year, $year in 4-digits form.

Write a script to calculate the total number of workdays in the given year.

    For the task, we consider, Monday - Friday as workdays.

Example 1

Input: $year = 2021
Output: 261

=cut

my $input_yr = prompt 'Input year = ', -num;
my $numyr = Days_in_Year($input_yr,12);
my ($count, $dow) = 0;
for my $offset (1 .. $numyr){
	#Starting with last day of previous year
	# add 1, then calculate date
	my ($year,$month,$day) = Add_Delta_Days(($input_yr - 1),12,31,$offset); 
	$dow = Day_of_Week($year,$month,$day);  # then, get its day of week
	if(($dow > 0 ) && ($dow < 6)){   ## 0 = Sunday,  6 = Saturday
		$count++;
	}
}

print("Output: $count\n");
