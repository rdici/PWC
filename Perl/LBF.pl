#!perl.exe
use strict;
use warnings;
use Statistics::LineFit;

my @xv;
my @yv;

my $lineFit = Statistics::LineFit->new();

my @points = ('333,129','39,189','140,156','292,134','393,52','160,166',
              '362,122','13,193','341,104','320,113','109,177','203,152',
              '343,100','225,110','23,186','282,102','284,98','205,133',
              '297,114','292,126','339,112','327,79','253,136','61,169',
              '128,176','346,72','316,103','124,162','65,181','159,137',
              '212,116','337,86','215,136','153,137','390,104','100,180',
              '76,188','77,181','69,195','92,186','275,96','250,147','34,174',
              '213,134','186,129','189,154','361,82','363,89',
); 

foreach (@points) {
  my @arr = split(/,/,$_);
  push(@xv, $arr[0]);
  push(@yv, $arr[1]);
}
#print("@xv\n");
#print("@yv\n");

my($intercept, $slope);

$lineFit->setData(\@xv, \@yv ) or die "Invalid regression data\n";
my @stats = $lineFit->regress() or die "Regression failed";
# my $meanSquaredError = $lineFit->meanSqError();
# ($intercept, $slope) = $lineFit->coefficients();
# #print("$meanSquaredError\n");
# print("$intercept $slope\n");
# my @residuals = $lineFit->residuals();
# print("@residuals ");
print("@stats\n");