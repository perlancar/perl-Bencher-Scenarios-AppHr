package Bencher::Scenario::AppHr::Completion;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

use Bencher::ScenarioUtil::Completion qw(make_completion_participant);

our $scenario = {
    summary => 'Benchmark completion response time, to monitor regression',
    modules => {
        'App::hr' => 0,
    },
    participants => [
        make_completion_participant(
            name=>'optname_common_help',
            cmdline=>"_hr --hel^",
        ),
        make_completion_participant(
            name=>'optname_common_version',
            cmdline=>"_hr --vers^",
        ),
        make_completion_participant(
            name=>'optname_random_color',
            cmdline=>"_hr --random^",
        ),
        make_completion_participant(
            name=>'optval_height',
            cmdline=>"_hr --height ^",
        ),
    ],
};

1;
# ABSTRACT:
