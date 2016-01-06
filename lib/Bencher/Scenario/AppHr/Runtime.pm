package Bencher::Scenario::AppHr::Runtime;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

our $scenario = {
    summary => 'Benchmark runtime, to monitor regression',
    modules => {
        'App::hr' => 0,
    },
    participants => [
        {
            name => 'version',
            summary => 'Run `hr --version`',
            code=>sub {
                my $out = `hr --version`;
                die "Bactick failed: $?" if $?;
                $out;
            },
        },
        {
            name=>'help',
            summary => 'Run `hr --help`',
            code=>sub {
                my $out = `hr --help`;
                die "Bactick failed: $?" if $?;
                $out;
            },
        },
        {
            name=>'default',
            summary => 'Run `hr` which prints a single uncolored bar',
            code=>sub {
                my $out = `hr`;
                die "Bactick failed: $?" if $?;
                $out;
            },
        },
        {
            name=>'random',
            summary => 'Run `hr -r` which prints a random-colored, random-pattern bar',
            code=>sub {
                my $out = `hr -r`;
                die "Bactick failed: $?" if $?;
                $out;
            },
        },
    ],
};

1;
# ABSTRACT:
