use strict;
use warnings;
use Test::More tests => 1;

BEGIN {
    eval { require Gantry::Plugins::Cache::FastMmap; };
    my $skip1 = ( $@ ) ? 1 : 0;

    eval { require Gantry::Plugins::Cache::Memcached; };
    my $skip2 = ( $@ ) ? 1 : 0;

    eval { require Gantry::Plugins::Cache::Storable; };
    my $skip3 = ( $@ ) ? 1 : 0;

    SKIP: {
        skip "Gantry::Plugins::Cache requires Gantry::Plugins::Cache::FastMmap", 2
                if $skip1;
                
        skip "Gantry::Plugins::Cache requires Gantry::Plugins::Cache::Memcached", 2
                if $skip2;

        skip "Gantry::Plugins::Cache requires Gantry::Plugins::Cache::Storable", 2
                if $skip3;

        use_ok( 'Gantry::Plugins::Cache' );        
    }
}
