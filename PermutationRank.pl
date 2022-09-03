#!perl.exe

use strict;
use warnings;
use feature qw/say/;
use Algorithm::Permute;   ### qw/new permute/;

my @seq1 = [0,1,2];
my @arr = ();

#Algorithm::Permute::permute { print "@seq1\n" } @seq1;

my $p = Algorithm::Permute->new(@seq1, 3);

while (my @res = $p->next) {
  push(@arr,) join(", ", @res);
}


 