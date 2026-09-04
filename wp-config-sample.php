<?php
/**
 * Configuración de WordPress para Tienda Chile
 * WooCommerce + Chile Ecommerce
 */

define( 'DB_NAME', 'local' );
define( 'DB_USER', 'root' );
define( 'DB_PASSWORD', 'root' );
define( 'DB_HOST', 'localhost' );
define( 'DB_CHARSET', 'utf8mb4' );
define( 'DB_COLLATE', '' );

/**
 * Configuración de WooCommerce Chile
 */
define( 'WOOCOMMERCE_DEFAULT_COUNTRY', 'CL' );
define( 'WOOCOMMERCE_CURRENCY', 'CLP' );

/**
 * Autenticación
 */
define( 'AUTH_KEY',         'pon-tu-clave-unica-aqui' );
define( 'SECURE_AUTH_KEY',  'pon-tu-clave-unica-aqui' );
define( 'LOGGED_IN_KEY',    'pon-tu-clave-unica-aqui' );
define( 'NONCE_KEY',        'pon-tu-clave-unica-aqui' );
define( 'AUTH_SALT',        'pon-tu-clave-unica-aqui' );
define( 'SECURE_AUTH_SALT', 'pon-tu-clave-unica-aqui' );
define( 'LOGGED_IN_SALT',   'pon-tu-clave-unica-aqui' );
define( 'NONCE_SALT',       'pon-tu-clave-unica-aqui' );

$table_prefix = 'wp_';

define( 'WP_DEBUG', false );
