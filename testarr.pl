use strict;
use warnings;

my @a = (1,2);
my @b = (3,4);

sub sum {
  my $aval = shift;
  my $bval = shift;
  print "$aval->[1]\n";
  print "$bval->[1]\n";
}

sum(\@a, \@b);