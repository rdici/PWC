#!/usr/bin/env perl
=begin
----------------------------------------------
AUTHOR: Robert DiCicco
DATE  : 2022-12-20
Challenge 196 Pattern 132 ( Perl )
SAMPLE OUTPUT
perl .\Pattern132.pl
Input: @list = 3 1 4 2
Output: 1 4 2

Input: @list = 1 2 3 4
-1

Input: @list = 1 3 2 4 6 5
Output: 1 3 2

Input: @list = 1 3 4 2
Output: 1 3 2
----------------------------------------------
=cut
use strict;
use warnings;

my @lists = ([3, 1, 4, 2],[1, 2, 3, 4],[1, 3, 2, 4, 6, 5],[1, 3, 4, 2]);
my @out = ();

sub findFirst {
  my $arr = shift;
  for (my $fi = 0; $fi < scalar(@$arr); $fi++){
    if( $arr->[$fi] == 1 ){
      push(@out, $arr->[$fi]);
      return $fi;
    }
  }
}

sub findSecond {
   my $arr = shift;
   my $fi = shift;
   $fi++;
   while ( $fi < scalar(@$arr) ) {
      if ($arr->[$fi] >= '3') {
        push(@out, $arr->[$fi]);
        return $fi;
      }
      $fi++;
   }
   return -1;
}

sub findThird {
  my $arr = shift;
  my $fi = shift;
  $fi++;
  while ( $fi <= scalar(@$arr) ) {
       if(exists $arr->[$fi]){
          if ($arr->[$fi] < $out[1]) {
            push(@out, $arr->[$fi]);
            return $fi;
          }
       }
    $fi++;
  }
   return -1;
}

for my $inputs (@lists) {
  @out = ();
  print("Input: \@list = @$inputs\n");
  my $retval = findFirst($inputs);
  my $secval = findSecond($inputs, $retval);
  my $thirdval = findThird($inputs, $secval);
  (! exists $out[2]) ? print("-1\n\n") : print("Output: @out\n\n");
}

