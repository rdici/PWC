use strict;
use feature qw/say/;

sub marsExploration {
  my $mess = shift;
  my $cnt = 0;
  my $len = length($mess);
  my $set = $len / 3;
  my $src = 'SOS' x $set;
  foreach(0..$len) {
      if ( substr($mess,$_,1) ne substr($src,$_,1) ){
        $cnt++;
      }
   }
  return $cnt";
}


marsExploration('SOSSOSSSS');
