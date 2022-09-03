#!perl.exe
use strict;
use warnings;
use Date::Calc qw/Day_of_Week Day_of_Week_to_Text/;

my $timestamp = '2022-08-01 10:30';

$timestamp =~ /(\d{4})-(\d{2})-(\d{2})\s(\d{2}:\d{2})/;

my $dtime = $4;
my $year = $1;
my $month = $2;
my $day = $3;

print "Year = $year\n";
print "Month = $month\n";
print "Date = $day\n";
print("Time = $dtime\n");
my $result = Day_of_Week_to_Text(Day_of_Week($year,$month,$day));
print "$result\n";