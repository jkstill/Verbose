#!/bin/sh


cd ..

tar cvfz Verbose/Verbose_0.02.tgz \
 Verbose/Makefile.PL \
 Verbose/README.md \
 Verbose/t/verbose.t \
 Verbose/Changes \
 Verbose/MANIFEST \
 Verbose/lib/Verbose.pm \
 Verbose/make_dist.sh \
 Verbose/Makefile \
 Verbose/bin/verbose_demo.pl



