package Bencher::Scenario::DateTimeFormatDurationISO8601::Parsing;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

our $scenario = {
    summary => 'Benchmark parsing with DateTime::Format::Duration::ISO8601',
    participants => [
        {
            name => 'parse_duration',
            fcall_template => 'DateTime::Format::Duration::ISO8601->parse_duration(<str>)',
        },
    ],
    datasets => [
        {args => {'str@' => ['P1Y', 'PT1S', 'P1Y2M3DT4H5M6.7S']}},
    ],
};

1;
# ABSTRACT:
