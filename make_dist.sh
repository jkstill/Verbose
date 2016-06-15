#!/bin/sh


cd ..

tar cvfz verbose/verbose_0.02.tgz \
 verbose/Makefile.PL \
 verbose/README \
 verbose/t/verbose.t \
 verbose/Changes \
 verbose/MANIFEST \
 verbose/lib/verbose.pm \
 verbose/make_dist.sh \
 verbose/Makefile \
 verbose/bin/verbose_demo.pl



