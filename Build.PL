use strict;
use Module::Build;

print( '*' x 80, "\n" );
print( "Gantry::Plugins::Cache\n" );
print( '*' x 80, "\n" );

my $build = Module::Build->new(
    license            => 'perl',
	dist_author        => 'Kevin L. Esteb <kesteb@wsipc.org>',
	dist_abstract      => 'A Plugin for initializing cache processing',
    module_name        => 'Gantry::Plugins::Cache',
    requires           => {
        'Gantry'                    => '3.52',
        'Storable'                  => 0,
        'Cache::FastMmap'           => 0,
        'Cache::Memcached'          => 0,
    },
    build_requires      => {
        'Test::More'          => 0,
        'Test::Exception'     => 0,
    },
    create_makefile_pl  => 'passthrough',
    script_files        => [ glob('bin/*') ],
    test_files          => [
        't/*.t',
    ],
);

$build->create_build_script;

