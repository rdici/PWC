#!perl.exe
use strict;
use warnings;
use DateTime;

# AUTHOR: Robert DiCicco
# DATE: 2022-07-25
# Challenge 175 Last Sunday ( Perl )

sub CreateDateTime {                # create a Date object for year and month
  my $y = shift;
  my $m = shift;
  my $dt = DateTime->last_day_of_month(year => $y, month => $m);
  return $dt;
}

sub GetLastSunday {                 # back up until we land on Sunday
    my $dt = shift;
    my $dow = $dt->day_of_week;
    if($dow != 7 ){
      $dt->subtract(days=>$dow);
    }
    return $dt;
}

my $count = 1;
my $year = $ARGV[0];

while( $count <= 12){
  my $dt = CreateDateTime($year, $count);
  #CheckLeapYear($dt);
  $dt = GetLastSunday($dt);
  print($dt->ymd . "\n");
  $count++;
}

#------------------------------------------------
# SAMPLE OUTPUT
# PS G:\Projects\Raku\OneLiners> perl .\LastSunday.pl 2022
# 2022-01-30
# 2022-02-27
# 2022-03-27
# 2022-04-24
# 2022-05-29
# 2022-06-26
# 2022-07-31
# 2022-08-28
# 2022-09-25
# 2022-10-30
# 2022-11-27
# 2022-12-25
