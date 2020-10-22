<?php

define( 'DB_NAME', 'wordpress' );
define( 'DB_USER', 'admin' );
define( 'DB_PASSWORD', 'admin' );
define( 'DB_HOST', 'mysql-service' );
define( 'DB_CHARSET', 'utf8' );
define( 'DB_COLLATE', '' );
define( 'FS_METHOD', 'direct' );

define('AUTH_KEY',         'YIR64VW`p-dM$RWM)mG5_)sRl#6+ALD/ P</Mw=Mg/@XZ`93-N+/g0++aFjF~7:O');
define('SECURE_AUTH_KEY',  'id/>B,8,m]VCdH|mI*CFl+IE]]|`08xT;5_fP^E9P0VB%/|w+--%Zq+X[JX)_%iQ');
define('LOGGED_IN_KEY',    '_*fL$IRpXER~Fd5hrQ^}DiTDPiKcnR5bgd%l;3thB:zQko]|u+#bQ;,zo?-j>Avt');
define('NONCE_KEY',        ')|$/|k z M:{uaWsmtWFH71*EYH^6dPrZ94k<<_;.Q7;{)DDrr`#+++j|,AI$6- ');
define('AUTH_SALT',        'QAtSi--5AN[@!%0>WI&xp}RzeWA1ZH.w/gwG0@9=jRfDko|J91nN&5b(,X|C:gs ');
define('SECURE_AUTH_SALT', '+m.^-Qi0#dlbNlT+L<3mZYaw;c~P|Rc2 0zvmuG}w&C67i`]KCRURve]+p#jll$K');
define('LOGGED_IN_SALT',   '4bu[`- p.i]<aS?$k0G?I4 ) aPx{Qi?br4BnJOYf|8CIoiDBSAE|^NFEMnJ4dE-');
define('NONCE_SALT',       'cvAq.T5l|4R9pu/T^:y(o_-Sh-T7NyyTf$[P$W_qW(i[1yj>`g&x*-HUJ`c|e!(/');

$table_prefix = 'wp_';

define( 'WP_DEBUG', false );

if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

require_once ABSPATH . 'wp-settings.php';
