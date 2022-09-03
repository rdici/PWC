#!perl.exe
use strict;
use warnings;
use List::Permutor;
use feature qw/say/;

my %letters = ( 'a'=>1, 'b'=>2, 'c'=>3, 'd'=>4, 'e'=>5, 'f'=>6, 'o'=>7,'l'=>8,'i'=>8,'s'=>9,'t'=>10);
my $notfound = 0;
my $selection = $ARGV[0];

if($selection == 3){
  open(FH, '<', "./ThreeLetters.txt") or die "Can't open file\n";  
} elsif ($selection == 2) {
  open(FH, '<', "./TwoLetters.txt") or die "Can't open file\n"; 
} elsif ($selection == 4) {
  open(FH, '<', "./FourLetters.txt") or die "Can't open file\n"; 
} elsif ($selection == 5) {
  open(FH, '<', "./FiveLetters.txt") or die "Can't open file\n";   
} elsif ($selection == 6) {
  open(FH, '<', "./SixLetters.txt") or die "Can't open file\n";   
} elsif ($selection == 7) {
  open(FH, '<', "./SevenLetters.txt") or die "Can't open file\n";   
} elsif ($selection == 8 ) {
  open(FH, '<', "./EightLetters.txt") or die "Can't open file\n";
} else {
  die "Word Length Error!";
}
while(my $word = <FH>) {
  $word = lc($word);
  $word =~ s/^\s+|\s+$//g;
  #say "word = $word";
  my @arr = split(//,$word);
  foreach my $val (@arr){
    if(! defined($letters{$val})){
      #say "GOTHERE";
      #$notfound++;
      next;
    }
    if($letters{$val} > 0 ){
      $notfound++;
    }
  }
    if ($selection == 2) { 
        say "0x000000$word" if ($notfound == $selection);
    } elsif ( $selection == 3) {
        say "0x00000$word" if ($notfound == $selection);
    } elsif ( $selection == 4) {
        say "0x0000$word" if ($notfound == $selection);
    } elsif ( $selection == 5) {
        say "0x000$word" if ($notfound == $selection);
    }   elsif ( $selection == 6) {
        say "0x00$word" if ($notfound == $selection);
    } elsif ($selection == 7) {
        say "0x0$word" if ($notfound == $selection);
    } elsif ($selection == 8) {
        say "0x$word" if ( $notfound == $selection);
    } else {
        say "nothing";
    }
    $notfound = 0;
  }
  




