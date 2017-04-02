#!/usr/bin/env perl
`echo @{[$_%2]} > file.txt && git commit -am 'make it @{[$_%2]}'` foreach 0..7000;
