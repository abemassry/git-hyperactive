#!/usr/bin/env perl

for (my $i=0; $i < 7000; $i++) {
  if ($i % 2) {
    unlink "file.txt";
    qx{echo "1" > file.txt};
    qx{git commit -am 'make it a 1'};
  } else {
    unlink "file.txt";
    qx{echo "0" > file.txt};
    qx{git commit -am 'make it a 0'};
  }
}

