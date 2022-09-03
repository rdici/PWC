#!perl.exe
use strict;
use warnings;
#use lib 'G:\Projects\Perl\Lib';
#use Mylib;
use ntheory  qw/ is_prime / ;
use 5.30.0;

foreach my $i ( 2 .. 10000 ){
    my @test = split(//, $i);
    my $hz = has_zero(\@test);
    next if($hz == 1);
    my $len = length($i);
    if( is_prime($i)){
        my $ret = reduction_test($i);
        $len--;
        say $i;
        next if(($ret == -1) or ($len == 0));
        my $ret2 = reduction_test($ret);
        next if(($ret2 == -1) or ($len ==0));
        my $ret3 = reduction_test($ret2);
        next if(($ret3 == -1) or ($len == 0));
     }
}                                                            

sub reduction_test {
    my $n = shift;
    my $val = dropfirst($n);
    if(is_prime($val)){
        return($val);
    } else {
        return(-1);
    }
}

sub dropfirst {
	my $arg = shift;
    my $len = length( $arg ) - 1;
	# Return the arg if it is only one digit long
    if ( $len == 0 ) {
        return ( $arg );
    }
    else {
		# split into digits
        my @spl = split( //, $arg );
        # $value can be any regex. be safe
        splice(@spl, 0, 1);
        my $string = join( "", @spl );
        return ( $string );
    }
}

sub has_zero {
    my $arr = shift;
    my @arr = ();
    if ( grep( /0/, @$arr ) ) {
        return(1);
    } else {
        return(-1);
    }
}
