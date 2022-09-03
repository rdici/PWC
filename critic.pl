use Perl::Critic;
my $file = shift;
my $critic = Perl::Critic->new(-severity=>'harsh');
my @violations = $critic->critique($file);
print @violations;