#!perl.exe

use strict;
use warnings;
use feature qw/say/;
use lib 'G:\Projects\Perl\Lib';
use Mylib;

# AUTHOR: Robert DiCicco
# DATE: 18-APR-2022
# Challenge 161 Pangrams ( Perl )

#my %alphabet;
#my %lettercnt;
my %usedwords;
my @linearr;
my $cnt = 0;
my $file = 'PangramWords.txt';       # Pangram which contains only abecedarian words (see challenge 1)

sub ReadFileToArray {
  open(FH2, '<', $file) or die "Can't open file $!\n";
  while(my $ln = <FH2>){
    #chomp($ln);
    $ln = trim($ln);
    push(@linearr, $ln);
  }
  close(FH2);
  return 1;
}

sub FindWords {
  my $ch = shift;
  my $extreme = shift;
  my $i;
  my $lettercnt;
  my $word;
  if($extreme eq 'largest') {
    $lettercnt = 0;
  } else {
    $lettercnt = 100;
  }
  
  foreach $i (@linearr){
    $i = ltrim($i);
    $i = rtrim($i);
    next if ( $i !~ /$ch/x);
    next if(exists($usedwords{$i}));
    if(($extreme eq 'largest') && (length($i) > $lettercnt)) {
      $lettercnt = length($i);
      $word = $i;
      $usedwords{$i} = 1;
    } elsif (($extreme eq 'smallest') && (length($i) < $lettercnt)){
      $lettercnt = length($i);
      $word = $i;
      $usedwords{$i} = 1;
    } 
  }
  return($word);
  #return($i);
}

print "Uses Abecedarian words from Challenge 1:\n";
ReadFileToArray();
my $extreme = $ARGV[0];
foreach my $x ('a' .. 'z' ){
  my $retword = FindWords($x, $extreme);
  print("$retword ");
}

print "\n";