#perl.exe

open(FH,'points.txt');
while (<FH>) {
  chomp;
  print("\'");
  print($_);
  print("\',");
}
close(FH);






