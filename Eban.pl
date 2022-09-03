#!perl.exe
use strict;
use warnings;
use Lingua::EN::Numbers qw(num2en);
use lib "G:/Projects/Perl/Lib";
use MyHelp;

=pod

=head3 NAME

Challenge 148 Eban Numbers

=head3 AUTHOR

Robert DiCicco

=head3 DATE

17-JAN-2022

=head3 DESCRIPTION

Write a script to generate all Eban Numbers <= 100.

An Eban number is a number that has no letter 'e' in it when the number is spelled in English (American or British).

Example

2, 4, 6, 30, 32 are the first 5 Eban numbers.

=cut


my $n = 0;
while($n < 100){
    my $engnum = num2en($n);
    if(index($engnum, 'e') == -1 ){
        print("$n ");
    }
    $n++;
}
print("\n");

