#!perl.exe
use strict;
use warnings;
use Net::MW::API;
my $mw = Net::MW::API->new(dict => "collegiate", word => "tic", key => "mykey"    );
my $xml = $mw->raw_xml;  # a string
my $dom = $mw->dom; # XML::LibXML::Document
my @entries = $mw->entries(); # @entries is list of XML::LibXML::Element
my $audio_uri = $mw->audio_url;  # ex. http://media.merriam-webster.com/soundc11/t/test0001.wav