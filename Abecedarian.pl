#!perl.exe
use strict;
use warnings;
use feature qw/say/;

=pod

=head3 NAME

Challenge 161 Abecedarian Words

=head3 AUTHOR

Robert DiCicco
 
Date: 18-APR-2022

=head3 DESCRIPTION

An abecedarian word is a word whose letters are arranged in alphabetical order. 
For example, knotty is an abecedarian word, but knots is not. 
Output or return a list of all abecedarian words in the dictionary, 
sorted in decreasing order of length.

=cut


# AUTHOR: Robert DiCicco
# DATE: 18-APR-2022
# Challenge 161 Abecedarian Words ( Perl )

######      Bees bellow in bop cellos! 

my @sorted;
my @elements;

sub wordCheck {
  my $word = shift;
  my $new = join('',sort(split(//,$word)));     # split the word, sort it, 
                                                # compare sorted value to supplied value
  if ($new eq $word){                           # return 1 if equal, else return 0
    return(1);
  }
  return(0);
}

sub printByLengthDesc {
  @sorted = sort { length($b) <=> length($a) } @_;    # sorted by descending length
  my $cnt = 0;
  foreach (@sorted) {
    print("$sorted[$cnt] ");
    $cnt++;
    if(($cnt % 22) == 0){
      print "\n";
    }
  }
  print "\n";
}

sub main {

  # ARGV[0] points to your dictionary file
  # Usage: ./Abecedarian.pl "your_dict_file.txt"

  open(OF, '>', 'PangramWords.txt');
  open(FP, '<', $ARGV[0]) or die "Can't open $ARGV[0]. $!\n";
  while(my $word = <FP>){
    chomp($word);
    if ( $word =~ /^[A-z]*/) {
      my $retval = wordCheck($word);
      if ($retval == 1 ) {
        push(@elements, $word);
        print OF "$word\n";
      }
    }
  }
  close(FP);
  close(OF);
  printByLengthDesc(@elements);
}

main();







