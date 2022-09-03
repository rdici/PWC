#!perl.exe
use strict;
use warnings;
use feature qw/say/;

#AUTHOR: Robert DiCicco
# DATE: 2022-05-23
# Challenge 166 Hexadecimal Words ( Perl )

my %letters = ( 'a'=>'a','b'=>'b','c'=>'c','d'=>'d','e'=>'e','f'=>'f','o'=>0,'l'=>1,'i'=>1,'s'=>5,'t'=>7);
my $found = 0;
my $selection = $ARGV[0];

die "Length Selection Error. Must be between 2 and 8 inclusive" if ($selection < 2 or $selection > 8);

open(FH, '<', "./Words.txt") or die "Can't open Words.txt\n";

while(my $word = <FH>) {
  $word = lc($word);
  $word =~ s/^\s+|\s+$//g;                  # remove both leading and trailing spaces
  next if (length($word) != $selection);    # only look at the slected length words
  my @arr = split(//,$word);                # create array of chars
  foreach my $val (@arr){                   # if we have a character not in out list, go to next
    if(! defined($letters{$val})){
      next;
    }
    if(exists($letters{$val})){             # if its in our list, bump the found flag
      $found++;
    }
  }
  $word =~ tr/olist/01157/;       
  
  if ($found == $selection) {       # convert certain chars to their number representations{
    print "$word ";
  }

     $found = 0;                             # reset the found flag, go another round
  }
  print "\n";

#---------------------------------------------------------------------------
# SAMPLE OUTPUT
# PS G:\Projects\Perl\Challenges> perl .\Hex2Words.pl 8
# 0xda7aba5e 0xde11ca7e 0xde7a11ed 0xd1abe7e5 0xd15ab1ed 0xd15c105e 0xf007ba11 0x1501a7ed 0x0ff1c1a1 0x7ac71ca1  

# PS G:\Projects\Perl\Challenges> perl .\Hex2Words.pl 7
# 0x0be51de5 0x0c1a55e5 0x0c1a551c 0x0c011ec7 0x0dec1ded 0x0def1c17 0x0d15ea5e  

  




