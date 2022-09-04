#!perl.exe
 
use strict;
use warnings;
 
use SVG;
 
# create an SVG object with a size of 40x40 pixels
my $svg = SVG->new;

my $tag = $svg->line(
    id => 'l1',
    x1 =>  0,
    y1 => 50,
    x2 => 400,
    y2 =>  50,
    style => {
        stroke => 'red',
        fill   => 'green'
    },
);



print $svg->xmlify(-standalone=>'yes');