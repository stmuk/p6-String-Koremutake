use v6;

BEGIN { @*INC.unshift( 'lib' ) }

use Test;
use String::Koremutake;

my $k = String::Koremutake.new;
is $k._numbers-to-koremutake([39,67,52,78,37]), "koremutake", "got koremutake" ;
is $k._koremutake-to-numbers( "koremutake"), [39,67,52,78,37],"got numbers" ;

