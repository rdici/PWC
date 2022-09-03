use Win32::API;

binmode(STDOUT, ":unix:utf8");

#Must set the console code page to UTF8
$SetConsoleOutputCP= new Win32::API( 'kernel32.dll', 'SetConsoleOutputCP', 'N','N' );
$SetConsoleOutputCP->Call(65001);

my @arr = (1250,1250,1500,160);
@arr = sort(@arr);
$line1="\x{2585}"."\x{2586}"."\x{2587}"."\x{2588}\n";
$line2="\x{2551}".(" "x15)."\x{2551}\n";
$line3="\x{255A}".("\x{2550}"x15)."\x{255D}";
$unicode_string=$line1;

print "THIS IS THE CORRECT EXAMPLE OUTPUT IN PURE PERL: \n";
print $unicode_string;