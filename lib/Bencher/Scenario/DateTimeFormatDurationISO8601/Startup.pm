package Bencher::Scenario::DateTimeFormatDurationISO8601::Startup;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

our $scenario = {
    summary => 'Benchmark startup of DateTime::Format::Duration::ISO8601',
    participants => [
        {
            name => 'load',
            code_template => 'use DateTime::Format::Duration::ISO8601',
        },
        {
            name => 'load+instantiate',
            code_template => 'use DateTime::Format::Duration::ISO8601; my $f = DateTime::Format::Duration::ISO8601->new',
        },
    ],
    code_startup => 1,
};

1;
# ABSTRACT:
