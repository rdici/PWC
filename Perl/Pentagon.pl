#!perl.exe
use strict;
use warnings;
use List::Permutor;
use 5.30.0;
my @pents = ( 1,  5, 12, 22, 35, 51, 70, 92, 117, 145, 176, 210, 247, 287, 330, 376, 425, 477, 532, 590, 651, 715, 782, 852, 925, 1001, 1080, 1162, 1247, 1335, 1426, 1520, 1617, 1717, 1820, 1926, 2035, 2147, 2262, 2380, 2501, 2625, 2752, 2882, 3015, 3151, 3290, 3432, 3577, 3725, 3876, 4030, 4187);
my %hash = map {$_ => 1} @pents;


#foreach(1..10000){
while(1){
    my $r = $pents[ rand(@pents)];
    my $s = $pents[ rand(@pents)];
    
    my $ret = pentagon( $r, $s);
    
    if( $ret == 1){
        print("Found! $r, $s\n");
        last;
    }
}
say "Complete";

sub pentagon {
    my $first = shift;
    my $sec = shift;
    my $diff = 0;
    my $psum = $first + $sec;
    if($first >= $sec){
        $diff = $first - $sec;
    } else {
        $diff = $sec - $first;
    }
   say "$first, $sec, $psum,$diff";
    if( ( exists $hash{$psum}) and (exists $hash{$diff}) ){
        return(1);
    } 
    return(-1);
}
       
