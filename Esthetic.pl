#!perl.exe
use strict;
use warnings;

=pod

=head3 NAME

Challenge 173 Esthetic Number

=head3 AUTHOR

Robert DiCicco

DATE: 2022-07-12

=head3 DESCRIPTION

An esthetic number is a positive integer where every adjacent digit differs from its neighbour by 1.

For example,

5456 is an esthetic number as |5 - 4| = |4 - 5| = |5 - 6| = 1
120 is not an esthetic numner as |1 - 2| != |2 - 0| != 1

=cut

# AUTHOR: Robert DiCicco
# DATE: 2022-07-12
# Challenge 173 Esthetic Number ( Perl )

sub is_esthetic {
  my $v = shift;
  my @arr = split(//,$v);               # split into digits
  my $i = 0;
  my $prev = $arr[0];
  $i++;
  while ($i <= $#arr) {               
    if(abs($arr[$i] - $prev) == 1 ){    # check that absolute value of diff between digits = 1
      $prev = $arr[$i];
      $i++;
    } else {
      return -1;                        # if not, return -1
    }
  }
  return 1;                             # return 1, is Esthetic
}

for my $e (100 .. 5000 ){               # check all ints 100 to 5000
  my $retval = is_esthetic($e);
  if($retval == 1){
    print("$e ");
  }
}
print("\n");


#----------------------------------------------------
# SAMPLE OUTPUT
# PS G:\Projects\Perl\Challenges> perl .\Esthetic.pl 
# 101 121 123 210 212 232 234 321 323 343 345 432 434 454 456 543 
# 545 565 567 654 656 676 678 765 767 787 789 876 878 898 987 989 
# 1010 1012 1210 1212 1232 1234 2101 2121 2123 2321 2323 2343 2345 
# 3210 3212 3232 3234 3432 3434 3454 3456 4321 4323 4343 4345 4543 
# 4545 4565 4567

