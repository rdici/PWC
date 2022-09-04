#!perl.exe
use strict;
use warnings;
use feature qw/say/;

my %letters = ( 'P' => 0, 'L' => 1, 'A' => 2, 'Y' => 3, 'F' => 4, 
                'I' => 5, 'R' => 6, 'E' => 7, 'X' => 8, 'M' => 9,
                'B' => 10, 'C' => 11, 'D' => 12, 'G' => 13, 'H'=>14,
                'K' => 15, 'N' => 16, 'O' => 17, 'Q'=>18, 'S'=>19,
                'T'=>20, 'U'=>21, 'V'=>22, 'W'=> 23, 'Z'=>25,
                );

my @bigsquare = qw( 
                    P L A Y F 
                    I R E X M 
                    B C D G H 
                    K N O Q S 
                    T U V W Z
                  );


my $plaintext = "hidethegoldinthtrexestump";

for ('A'..'Z') {
  say $letters{$_};
}

