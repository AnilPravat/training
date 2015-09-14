use v6;

use lib 'lib';
use Test;

my @dependencies = qw{
    URI
    Pod::To::HTML
    LWP::Simple
    Algorithm::Soundex
    DBIish
    File::Temp
    HTTP::Easy
};

plan @dependencies.elems;

my @missing-deps;
for @dependencies -> $dep {
    my $use-able = use-ok $dep, "$dep able to be use-d ok";
    @missing-deps.push($dep) if not $use-able;
}

die "Please install the required dependencies:\n", @missing-deps.join("\n")
    if @missing-deps;

# vim: expandtab shiftwidth=4 ft=perl6
