package Bencher::Scenario::DateTimeFormatISO8601Format::Startup;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

our $scenario = {
    summary => 'Benchmark startup of DateTime::Format::ISO8601::Format',
    participants => [
        {
            name => 'load',
            code_template => 'use DateTime::Format::ISO8601::Format',
        },
        {
            name => 'load+instantiate',
            code_template => 'use DateTime::Format::ISO8601::Format; my $f = DateTime::Format::ISO8601::Format->new',
        },
    ],
    code_startup => 1,
};

1;
# ABSTRACT:
