#!perl.exe
use strict;
use warnings;
use lib 'G:\Projects\Perl\Lib';
use Mylib;
use constant ENCRYPT => 1;
use constant DECRYPT => -1;
use strict;

# program by larryk of perlmonks
# with some additions of my own

my $txt = 'before you leave the house don’t forget to take your phone keys wallet mask and some form of covid nineteen vaccine record';
my $key = 'knopstechy';

$txt =~ s/[^a-z]//gi;

# print 'before   : ',$txt;
# print 'encrypted: ',encrypt( $txt, $key );

my $enc = encrypt($txt, $key);

# pad encrypted message out to 5, upper case
$enc = uc(padx($enc, 5));

my @output = unpack("(A5)*", $enc);
print("@output\n");

print 'after    : ',decrypt( encrypt( $txt, $key ), $key );


sub encrypt {
    my @txt = split '', shift;
    my @key = split '', shift;
    join '', map uc letter( ENCRYPT, $txt[$_], $key[$_%@key] ), 0..$#txt;
}

sub decrypt {
    my @txt = split '', shift;
    my @key = split '', shift;
    join '', map lc letter( DECRYPT, $txt[$_], $key[$_%@key] ), 0..$#txt;
}

sub letter {
    my ($direction,$cipherchar,$keychar) = @_;
    lc chr( 97 + (              (ord(lc $cipherchar) - 97)
                   + $direction*(ord(lc $keychar   ) - 97) ) % 26 );
}

