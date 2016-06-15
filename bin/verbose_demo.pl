#!/home/oracle/perl/bin/perl -w

use lib '../lib';

use verbose;
use Getopt::Long;

my %optctl = ();

GetOptions(\%optctl,
	"v=i",
	"t!",
	"help",
);

usage() if defined($optctl{help});
my $useTimestamp = defined($optctl{t}) ? $optctl{t} : 0;
my $verbosity = defined($optctl{v}) ? $optctl{v} : 0;

my $d = verbose->new(
	{
		VERBOSITY=>$verbosity, 
		LABELS=>1, 
		TIMESTAMP=>$useTimestamp, 
		HANDLE=>*STDERR
	} 
);

my @a=(1,2,3);
my %h=(a=>1, b=>2, c=>3);
my $x=1;

#$d->print(@a);
#$d->print(%h);

print "print call with empty data\n";
$d->getlvl && $d->print(1,'label only - empty array', []);
$d->getlvl && $d->print(1,'label only - empty hash', {});

print "doing some work with \@a\n";
$d->getlvl && $d->print(1,'reference to @a', \@a);

print "doing some work with \%h\n";
$d->getlvl && $d->print(2,'reference to %h', \%h);

print "doing some work with with an anonymous hash\n";
$d->print(3,'anonymous hash ref', {x=>24, y=>25, z=>26});

print "doing some work with with an anonymous array\n";
$d->print(4,'anonymous array ref', [7,8,9]);


# turn off labels
print "no label\n";
$d->{LABELS}=0;
$d->print(2,'label will not appear', [7,8,9]);

$d->getlvl && $d->showself;

print "Disable verbose - next call will return without printing\n";
$d->{VERBOSITY}=0;
$d->getlvl && $d->showself;


sub usage {

	my $exitVal = shift;
	use File::Basename;
	my $basename = basename($0);
	print qq{
$basename

usage: $basename -v -t

   $basename -option1 parameter1 -option2 parameter2 ...

-v verbosity level - 1..N
-v timestamp - include timestamps 

examples here:

   $basename -v 3 -t
};

	exit eval { defined($exitVal) ? $exitVal : 0 };
}



