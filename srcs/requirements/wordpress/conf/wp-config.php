<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the website, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/documentation/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wordpress' );
/** Database username */
define( 'DB_USER', 'wpuser' );

/** Database password */
define( 'DB_PASSWORD', '' );

/** Database hostname */
define( 'DB_HOST', 'mariadb' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */

define('AUTH_KEY',         '2uE$#E0Lg i>l(fX3h ,x5k)Y.t}rwD%2$-4Fj/h_;yni.h.|QeKf!?!yqtG[+NE');
define('SECURE_AUTH_KEY',  '383q^Q{B9xJ:bM>xXNpdfZ~>YX/M%2 <2e:--J[&CZG#y:uNaM[D4G#[9]Sy-7|9');
define('LOGGED_IN_KEY',    'N:e+xxAM+@D$]`1xkeh(0%l-agqh+G+Pk-5#?W1X4K[/eb8qLVaDK;B(.wc%F{hL');
define('NONCE_KEY',        'Qi|(Qlb:#cSjwi[],to hUx0t-!WKH-|VRXW%O!C`WpDU)lh@k2kz/?Vj&p6U~<v');
define('AUTH_SALT',        '+|vVoaN DAo$h|]0sm1-d?Ej9*s|w+]jb?fvc-BT>LO%M37-i!Pc,6 %+5:FN0Mb');
define('SECURE_AUTH_SALT', '[3oAHyO&Ihyid(#w(V^-b95Nxv+yv=iNapYVI^MH`O}xj3gyl|_``(Ab{dWsi(w2');
define('LOGGED_IN_SALT',   'E!7I~2}f<ELBu-Un5NLuaLWgK[6|8m=S@OJll+2>|,Y<R|J>ag/@jcdPOo.v(7?Q');
define('NONCE_SALT',       '5_E[q&))z(nXv4GQI ple}RKXTPaO|+.tr)G.-x+<GPE0MKP%pq>,kC32 .BLI5J');

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/documentation/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* Add any custom values between this line and the "stop editing" line. */

define('FS_METHOD','direct');


/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
