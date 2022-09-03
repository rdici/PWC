#!perl.exe
use IPC::MPS;
 
my $vpid = spawn {
       receive {
               msg ping => sub {
                       my ($from, $i) = @_;
                       print "Ping ", $i, " from $from\n";
                       snd($from, "pong", $i);
               };
       };
};
 
snd($vpid, "ping", 1);
receive {
       msg pong => sub {
               my ($from, $i) = @_;
               print "Pong $i from $from\n";
               if ($i < 3) {
                       snd($from, "ping", $i + 1);
               } else {
                       exit;
               }
       };
};