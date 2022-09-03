#perl.exe
use strict;
use warnings;
use List::MoreUtils qw / uniq /;

use 5.010;
 my @arr = ();
 my $val;
foreach (1..4){
    $val = 1 + int rand(6);
    push(@arr, $val);
}
print("@arr\n");

$val = 0;
foreach (@arr){
    print($arr[$val] + $arr[$val + 1]);
    $val++;
}