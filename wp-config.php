<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'atcustomwebsites' );

/** Database username */
define( 'DB_USER', 'root' );

/** Database password */
define( 'DB_PASSWORD', '' );

/** Database hostname */
define( 'DB_HOST', 'localhost' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

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
define( 'AUTH_KEY',         'tc<sR_Pcv+j_NpM-40B$O1-@Qq6mSRRMz`f:L:a/#orX| ZUQ1#ex5Oy1gyzpIfn' );
define( 'SECURE_AUTH_KEY',  '7p&?G#ekQWEm`;vPjd%Egoye#Y#Gl+8YMKs+P?-%lh9!dAqnlTuc4VhdSIS]Ti5k' );
define( 'LOGGED_IN_KEY',    'iO&jlAh4 {GZ0aALx+VAu<>p-B;TM-H6YH`29DH9_e4Oq!38aY:Ih|xybi~)[N?^' );
define( 'NONCE_KEY',        'oO:.fcXk%#1E0p}(0wX$N02hSfvqwaP>YB@PA)qMItJ:mx3*:8:$6cQa..%1>D(|' );
define( 'AUTH_SALT',        '9Z;A?JQWGpXaR`4H vH#EAZ-<Rrv*(2^qQo/v6-Z/ac4Ol.ewM9mh9K}dZngtF__' );
define( 'SECURE_AUTH_SALT', 'sDlaU/.<f0I;XnTgmnk,(#IFL^K`Yr`gtf|7Sklre=)#I_>g;MMIW!KlE<-<F4tX' );
define( 'LOGGED_IN_SALT',   'l!oZ9]H+:7UN1$yToMD dBBZOzcu0iOk*B)O`PmRsRWSXO/Zo._ElBBP=4)F7g-G' );
define( 'NONCE_SALT',       'p3zBKLU^EI(L)ue`9:XfJyu}Tx:r48DOL}k|c 2Xm7q(`q#k.oRFFkb|5mHf[cJ&' );

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
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
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
