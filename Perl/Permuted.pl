#!perl.exe
use strict;
use warnings;
use feature qw/say/;
use Algorithm::Permute qw/permute/;

my $num = 125874;
my @arr = split("",$num);
my @results = ();
my $testval = 0;

my $p = Algorithm::Permute->new(\@arr, 6);

my $count = 2;
while (my @x = $p->next) {
  $testval = join("", @x);
  if($testval == $count * $num ){
      print("$testval\n");
  }
  $count++;
}