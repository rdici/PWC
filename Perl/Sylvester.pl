#!perl.exe

# AUTHOR: Robert DiCicco
# DATE: 2022-07-13
# Challenge 173 Sylvbester's Sequence ( Perl )
use strict;
use warnings;
use bigint;
use List::Util qw/product/;

my @arr = (2);
my $count = 1;
my $prod = 1;
print("$arr[0]\n");
while (1) {
  $prod = product(@arr) + 1;
  print("$prod\n");
  push(@arr,$prod);
  $count++;
  last if ($count == 10);
}

#--------------------------------------------------------
# SAMPLE OUTPUT
# PS G:\Projects\Perl\Challenges> perl .\Sylvester.pl
# 2
# 3
# 7
# 43
# 1807
# 3263443
# 10650056950807
# 113423713055421844361000443
# 12864938683278671740537145998360961546653259485195807
# 165506647324519964198468195444439180017513152706377497841851388766535868639572406808911988131737645185443