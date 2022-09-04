#!perl.exe
use strict;
use warnings;
use List::Util qw/uniq/;
use feature qw/say/;

my @grid = (
    ['P','L','A','Y','F'],
    ['I','R','E','X','M'],
    ['B','C','D','G','H'],
    ['K','N','O','Q','S'],
    ['T','U','V','W','Z'],
);

sub locate {
  my $ch = shift;
  my $r;
  my $c;
  for ( $r = 0;$r < 5; $r++ ) {
    for($c = 0;$c < 5; $c++ ) {
      if($grid[$r][$c] eq $ch ) {
          return ($r,$c);
      }
    }
  }
}

my ($row, $col,$ch);
$ch = 'H';
($row,$col) = locate($ch);
print "$ch : row = $row col = $col\n";
$ch = 'I';
($row,$col) = locate($ch);
print "$ch : row = $row col = $col\n";
print "$grid[2][0] $grid[1][4]\n";
my $ch = 'D';
($row,$col) = locate($ch);
print "$ch : row = $row col = $col\n";
my $ch = 'E';
($row,$col) = locate($ch);
print "$ch : row = $row col = $col\n";
print "$grid[3][2] $grid[2][2]\n";

say "OK";
