#!perl.exe

# AUTHOR: Robert DiCicco
# DATE: 2022-06-20
# Challeng 170 Primorial Numbers ( Perl )

use strict;
use warnings;
use ntheory qw/is_prime/;
use feature qw/say/;

my $count = 1;
my $product = 1;

say 1;
foreach(1..100){
  my $x = $_;
  if(is_prime($x)){
    $product *= $x;
    say $product;
    $count++;
    last if ($count == 10);
  }
}

#-----------------------------------------------------------
# SAMPLE OUTPUT
# 1
# 2
# 6
# 30
# 210
# 2310
# 30030
# 510510
# 9699690
# 223092870