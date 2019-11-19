use 5.008002;
use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
	NAME              => 'Verbose',
	VERSION_FROM      => 'lib/Verbose.pm', # finds $VERSION
	EXE_FILES			=> [
		qw{bin/verbose_demo.pl}
	],
	PREREQ_PM         => { 
		'Time::HiRes' => 1.0, 
		'POSIX' => 1.0,
		'Exporter' => 5.0,
		'Carp' => 1.0,
		'Data::Dumper' => 2.0
	}, # e.g., Module::Name => 1.1
	($] >= 5.005 
		?     ## Add these new keywords supported since 5.005
			(
				ABSTRACT  => 'Module to implement levels of informational and debugging output', # retrieving abstract from module is broken - hardcoded
				AUTHOR         => 'Jared Still <jkstill@gmail.com>') 
		: ()
	),
);


