#!perl.exe
use strict;
use warnings;
use threads;
use Time::HiRes qw/ usleep /;
use lib "G:/Projects/Perl/Lib";
use MyHelp;

=pod

=head3 NAME

Challenge #142 Sleep Sort

=head3 AUTHOR

Robert DiCicco

=head3 DATE

07-DEC-2021

=head3 DESCRIPTION

Another joke sort similar to JortSort suggested by champion Adam Russell.

You are given a list of numbers.

Write a script to implement Sleep Sort.

=cut

my $start = Time::HiRes::time();

print("\nStart Time : $start\n\n");

# Original array to be sorted

my @arr = qw/ 9 8 z g R o p x u a b 0 /;

my @thds = ();

# '0' = 48
my $offset = 48;

my $item = '';

print("Array to be sorted : ");

print("@arr\n");

print("Sorted array      : ");

# Create a thread for each item in the source array
# Send the item and its adjusted value to the sub
foreach $item ( @arr ){
	my $t = threads->create(\&sub1, $item,ord($item) - $offset);
	# push the thread id into an array
	push(@thds, $t);
}

# Join threads, read from array
foreach (@thds) {
	$_->join;
}

foreach(@thds){
		$_->kill('SIGTERM');
}


my $end = Time::HiRes::time();

print("\n\nEnd Time : $end\n");

print("\nElapsed Time : " . ($end - $start) . "\n");

sub sub1 {
	my $message = $_[0];
	# HiRes microseconds are too quick, adjusted by multiplying by 10000
    usleep($_[1] * 10000);
	print(" $message");
}