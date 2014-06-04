use v6;

BEGIN { @*INC.unshift( 'lib' ) }

use Test;
use String::Koremutake;

my $k = String::Koremutake.new;

is $k._numbers-to-koremutake([39,67,52,78,37]), "koremutake", "got koremutake" ;

is $k._koremutake-to-numbers( "koremutake"), [39,67,52,78,37],"got numbers" ;

is $k.integer-to-koremutake(0), 'ba','got ba';
is $k.integer-to-koremutake(65535), 'botretre', 'got botretre';
is $k.integer-to-koremutake(10610353957), 'koremutake', 'got koremutake';

is $k.koremutake-to-integer('ko'), 39, 'got 39';
is $k.koremutake-to-integer('beba'), 128, 'got 128';
is $k.koremutake-to-integer('biba'), 256, "got 256";


# vi: filetype=perl6:
