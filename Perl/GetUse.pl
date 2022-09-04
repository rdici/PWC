#!perl.exe
use strict;
use warnings;
use Carp;
use List::MoreUtils qw(uniq);
use Symbol qw/gensym/;
use feature qw/say/;

my @output;
my $F = gensym();

opendir my $dir, "G:\\Projects\\Perl\\Challenges" or croak "Cannot open directory: $!";
my @files = readdir $dir;
closedir $dir;

foreach my $file (@files){
  chomp $file;
  if( $file =~ /\.pl/gx){
    open ( $F, "<", "$file" ) || croak "can't open file $!";
    my @lines = <$F>;
    close ($F);
    foreach my $line (@lines) {
      chomp $line;
      next if (($line =~ "use strict") or ($line =~ "use warnings"));
      next if (($line =~ "use lib ")   or ($line =~ "use 5."));
      
      if ($line =~ /^use /gx) { 
        $line =~ s/;//gx;
        push(@output, "$line:$file\n");
      }
    }
  }
}

@output = sort @output;
say @output;
1;