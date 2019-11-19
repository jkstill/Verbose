# Verbose version 0.01

The Verbose.pm module can be used to include informative statements
in your scripts that are only displayed when the level of verbosity
stated at runtime is >= the level of verbosity for the statement.

This can be useful both for debugging purposes during development
and informative runtime messages.

Consider the output from the demo script verbose_demo.pl.

With a verbosity of 1, only those statements in the script
that have a verbosity level of 1 will be displayed:

```bash

jkstill-27 > verbose_demo.pl -v 1
doing some work with @a
  ======= reference to @a - level 1 =========
  1
  2
  3
  ============================================
doing some work with %h
doing some work with with an anonymous hash
doing some work with with an anonymous array
```

Setting it to 2 will include more statements:

```
jkstill-27 > verbose_demo.pl -v 2
doing some work with @a
  ======= reference to @a - level 1 =========
  1
  2
  3
  ============================================
doing some work with %h
    ======= reference to %h - level 2 =========
    a: 1
    b: 2
    c: 3
    ============================================
doing some work with with an anonymous hash
doing some work with with an anonymous array
```

The two statements in the script that were displayed:

```perl
$d->print(1,'reference to @a', \@a);
$d->print(2,'reference to %h', \%h);
```


# INSTALLATION

To install this module type the following:

- perl Makefile.PL
- make
- make test
- make install

# DEPENDENCIES

This module requires these other modules and libraries:

  blah blah blah

COPYRIGHT AND LICENCE

Put the correct copyright and licence information here.

Copyright (C) 2009 by Jared Still

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself, either Perl version 5.8.2 or,
at your option, any later version of Perl 5 you may have available.


