#!perl.exe
use strict;
use warnings;
use feature qw/say/;

my $file = 'PangramWords.txt';

sub GetLineCount {
  my $cnt = 0;
  open(FH, '<', $file) or die "Can't open $file $!\n";
  while (<FH> ){
    $cnt++;
  }
  close(FH);
  return($cnt);
}

sub GetSpecificLine {
  my $cnt = shift;
  my $line;
  my $linenum = int(rand($cnt));
  open(FH2, '<', $file) or die "Can't open file $!\n";
  while($linenum--) {
    $line = <FH2>;
  }
  close(FH2);
  $line =~ s/^\s+|\s+$//g;   # trim left and right
  return $line;
}


my $retline = GetSpecificLine(GetLineCount);
say $retline;
