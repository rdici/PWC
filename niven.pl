#!perl.exe
use strict;
use warnings;
use List::Util qw(sum0);
use 5.30.0;

# expected = 
              # 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 12, 18, 20, 21, 24, 27, 30, 
              # 36, 40, 42, 45, 48, 50, 54, 60, 63, 70, 72, 80, 81, 84, 90, 
              # 100, 102, 108, 110, 111, 112, 114, 117, 120, 126, 132, 133, 
              # 135, 140, 144, 150, 152, 153, 156, 162, 171, 180, 190, 192, 
              # 195, 198, 200, 201, 204
              
my $cnt = 1;
my $total_cnt = 0;

while ( $total_cnt < 50){
  my @digits = split(//, $cnt);
  my $total = sum0(@digits);
  if($cnt % $total == 0){
    print("$cnt ");
    $total_cnt++;
  }
  $cnt++;
}
say " ";
