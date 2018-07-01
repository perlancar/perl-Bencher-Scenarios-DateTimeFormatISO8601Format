package Bencher::Scenario::DateTimeFormatISO8601Format::Formatting;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

use DateTime;

my $dt_float = DateTime->new(year => 2000, month => 12, day => 31, hour => 12, minute => 34, second => 56);
my $dt_utc   = DateTime->new(year => 2000, month => 12, day => 31, hour => 12, minute => 34, second => 56, time_zone => 'UTC');
my $dt_jkt   = DateTime->new(year => 2000, month => 12, day => 31, hour => 12, minute => 34, second => 56, time_zone => 'Asia/Jakarta');

our $scenario = {
    summary => 'Benchmark formatting with DateTime::Format::ISO8601::Format',
    participants => [
        {
            name => 'format_date',
            fcall_template => 'DateTime::Format::ISO8601::Format->new->format_date(<dt>)',
            tags => ['format_date'],
        },
        {
            name => 'format_time',
            fcall_template => 'DateTime::Format::ISO8601::Format->new->format_time(<dt>)',
            tags => ['format_time'],
        },
        {
            name => 'format_datetime',
            fcall_template => 'DateTime::Format::ISO8601::Format->new->format_datetime(<dt>)',
            tags => ['format_datetime'],
        },
    ],
    datasets => [
        {args => {'dt@' => [$dt_float, $dt_utc, $dt_jkt]}},
    ],
};

1;
# ABSTRACT:
