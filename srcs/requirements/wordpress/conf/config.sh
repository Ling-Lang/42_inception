!bin/sh
if [ ! -f "/var/www/wp-config.php" ]; then
cat << EOF > /var/www/wp-config.php
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
define( 'DB_NAME', '${DB_NAME}' );

/** Database username */
define( 'DB_USER', '${DB_USER}' );

/** Database password */
define( 'DB_PASSWORD', '${DB_PASS}' );

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
define('AUTH_KEY',         'MbzlZJ7HQY{=UiA[yE7+V#^*<H9}2dn[Fu{&AA Z4Q-Ly]nSILz-N{O?#0_Eo4}8');
define('SECURE_AUTH_KEY',  '^{MD^(z@I4l<+0I(k.+EG$HMKL|Gz-v6gc{Y?`aCGa4&]yhvtXAr9!L.=u$`5D/}');
define('LOGGED_IN_KEY',    'OV:jA,|aM]aEPLI_)XG$Q3:J#?{#]brl]3Aqd4Y8;{dnn+6iT8+8/g[QR~qX|(:M');
define('NONCE_KEY',        '^q2zsqxZBHT0B@f`?^A-!-qd?Je|>%].syIuH_:c_.m5;]cM.#tWCHl`E]Bhp-o ');
define('AUTH_SALT',        'FUfncrHRnqu+*X!&Pkx +6} @#ub>} I>V-^@96+VPO0q;jzs^k6;Tdi>!OU=.&{');
define('SECURE_AUTH_SALT', 'ncBz][A70s%|6MEn9qu+{Jy!BQf1#*sTS9(|%!?-3<^6_+Sw.QA$8oV]b~1+ fiS');
define('LOGGED_IN_SALT',   'W;#@w:|n[B4G?w.9o<wHpq-wAi1-& YrmB[oF(J)&+)X8]O^_z=,_lS*oDG-6JPS');
define('NONCE_SALT',       'a1FE8RZ#*}z&0D./kj34*G6x?10^:68 tcmx8/aHo``M)]P_h/=]Z9V>$Z(i}+>C');
/**#@-*/

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

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
EOF
fi
