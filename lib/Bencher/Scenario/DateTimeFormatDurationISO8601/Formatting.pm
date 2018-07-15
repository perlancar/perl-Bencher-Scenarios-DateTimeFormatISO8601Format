package Bencher::Scenario::DateTimeFormatDurationISO8601::Formatting;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

use DateTime::Duration;

my $dur1 = DateTime::Duration->new(years => 1, months => 2, days => 3, hours => 4, minutes => 5, seconds => 6, nanoseconds => 700_000_000);

our $scenario = {
    summary => 'Benchmark formatting with DateTime::Format::Duration::ISO8601',
    participants => [
        {
            name => 'format_duration',
            fcall_template => 'DateTime::Format::Duration::ISO8601->new->format_duration(<dur>)',
        },
    ],
    datasets => [
        {args => {'dur@' => [$dur1]}},
    ],
};

1;
# ABSTRACT:
