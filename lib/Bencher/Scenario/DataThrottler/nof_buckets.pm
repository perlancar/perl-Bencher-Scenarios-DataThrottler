package Bencher::Scenario::DataThrottler::nof_buckets;

# AUTHORITY
# DATE
# DIST
# VERSION

use 5.010001;
use strict;
use warnings;

our $scenario = {
    summary => 'Find the optimum number of buckets',
    participants => [
        {
            name => 'Data::Throttler (Memory backend)',
            module => 'Data::Throttler',
            code_template => 'my $t = Data::Throttler->new(max_items=><max_items>, interval=><interval>, nof_buckets=><nof_buckets>); for (1..<inserts>) { $t->try_push(time => time - $_/<inserts>*<interval>) }',
        },
    ],
    datasets => [
        {name=>'max_items/inserts=1000, nof_buckets=3'  , args=>{max_items=>1000, nof_buckets=>3  , interval=>3600, inserts=>1000}},
        {name=>'max_items/inserts=1000, nof_buckets=10' , args=>{max_items=>1000, nof_buckets=>10 , interval=>3600, inserts=>1000}},
        {name=>'max_items/inserts=1000, nof_buckets=30' , args=>{max_items=>1000, nof_buckets=>30 , interval=>3600, inserts=>1000}},
        {name=>'max_items/inserts=1000, nof_buckets=100', args=>{max_items=>1000, nof_buckets=>100, interval=>3600, inserts=>1000}},
        {name=>'max_items/inserts=1000, nof_buckets=300', args=>{max_items=>1000, nof_buckets=>300, interval=>3600, inserts=>1000}},

        {name=>'max_items/inserts=10000, nof_buckets=3'   , args=>{max_items=>10000, nof_buckets=>3   , interval=>3600, inserts=>10000}},
        {name=>'max_items/inserts=10000, nof_buckets=10'  , args=>{max_items=>10000, nof_buckets=>10  , interval=>3600, inserts=>10000}},
        {name=>'max_items/inserts=10000, nof_buckets=30'  , args=>{max_items=>10000, nof_buckets=>30  , interval=>3600, inserts=>10000}},
        {name=>'max_items/inserts=10000, nof_buckets=100' , args=>{max_items=>10000, nof_buckets=>100 , interval=>3600, inserts=>10000}},
        {name=>'max_items/inserts=10000, nof_buckets=300' , args=>{max_items=>10000, nof_buckets=>300 , interval=>3600, inserts=>10000}},
        {name=>'max_items/inserts=10000, nof_buckets=1000', args=>{max_items=>10000, nof_buckets=>1000, interval=>3600, inserts=>10000}},
        {name=>'max_items/inserts=10000, nof_buckets=3000', args=>{max_items=>10000, nof_buckets=>3000, interval=>3600, inserts=>10000}},
    ],
};

1;
# ABSTRACT:

=head1 BENCHMARK NOTES

This does not look right; nof_buckets does not have effect?

=head1 SEE ALSO
