#!/urs/bin/perl -w

use strict;
use List::Util qw/sum/;
use feature qw/say/;

my @instructions;
my $signal = 0;
my $x = 1;
my $cycle = 1;

push @instructions, split(/\s+/) while <DATA>;

foreach (@instructions) {
    my $c = ($cycle - 1) % 40;

    print abs($x - $c) <= 1 ? "#" : " ";
    print "\n" unless $cycle % 40;

    $x += $_ if $_ =~ m/-?[0-9]+/;
    $cycle++;
    $signal += $cycle * $x if $cycle % 40 == 20;
}

say $signal;

__DATA__
addx 1
noop
addx 2
addx 5
addx 3
noop
addx -1
addx 5
noop
noop
addx 5
noop
addx 3
noop
addx 6
addx -4
noop
noop
addx 5
noop
addx -32
addx 35
addx 5
addx -31
addx 7
addx -13
addx 2
addx 2
addx 5
addx 6
addx -5
addx 2
addx 5
addx 2
addx 2
addx -17
addx 18
addx 5
addx 2
addx -30
addx 31
addx 2
addx 2
addx -32
addx -1
addx 10
addx -8
noop
noop
addx 6
addx 16
noop
addx -11
addx 3
addx -2
addx 3
noop
addx 6
noop
addx -2
noop
addx 7
addx 3
addx -2
addx 4
addx -20
noop
addx -14
addx -2
addx 6
addx 2
addx 3
noop
addx 2
addx -1
addx 4
noop
addx 5
noop
addx 2
addx 3
addx -2
addx 3
noop
addx 4
noop
addx 5
noop
addx 2
addx -24
addx -15
addx 17
addx -10
addx 2
addx -5
addx 6
noop
addx 3
addx 2
addx 2
noop
addx 3
addx 2
addx 5
addx -2
addx 3
addx 2
addx 2
addx 5
addx 2
addx -18
addx -19
noop
addx 1
addx 2
addx 5
addx 3
noop
noop
noop
noop
addx 2
addx 5
addx 2
addx 3
noop
addx -8
addx 11
noop
noop
addx 2
addx 5
addx 2
addx 3
noop
addx -34
noop
