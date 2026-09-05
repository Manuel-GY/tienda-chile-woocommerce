<?php
/**
 * Importar imÃ¡genes reales (libres) para los 30 productos de Tienda Chile.
 *
 * Descarga una foto por SKU desde Unsplash Source (fotos reales libres de uso) y
 * registra el attachment como miniatura (_thumbnail_id) del producto.
 *
 * USO:  php importar-imagenes-productos.php
 *
 * @package TiendaChile
 */

if ( PHP_SAPI !== 'cli' ) {
	exit( 'CLI only' );
}

$_SERVER['HTTP_HOST']       = '127.0.0.1:10004';
$_SERVER['SERVER_NAME']     = '127.0.0.1';
$_SERVER['SERVER_PORT']     = '80';
$_SERVER['REMOTE_ADDR']     = '127.0.0.1';
$_SERVER['REQUEST_URI']     = '/';
$_SERVER['HTTP_USER_AGENT'] = 'TiendaChile-Importer/1.0';

define( 'WP_USE_THEMES', false );

require __DIR__ . '/wp-load.php';

require_once ABSPATH . 'wp-admin/includes/file.php';
require_once ABSPATH . 'wp-admin/includes/media.php';
require_once ABSPATH . 'wp-admin/includes/image.php';

// El entorno de red local tiene un certificado intermedio propio: desactivar
// verificación SSL únicamente para las descargas de imágenes remotas.
add_filter( 'http_request_args', function( $args, $url ) {
	if ( strpos( $url, 'loremflickr.com' ) !== false || strpos( $url, 'picsum.photos' ) !== false ) {
		$args['sslverify'] = false;
	}
	return $args;
}, 10, 2 );

$force = in_array( '--force', $argv, true );

$map = array(
	'MAQ-001' => 'lipstick',
	'MAQ-002' => 'foundation',
	'MAQ-003' => 'mascara',
	'MAQ-004' => 'eyeshadow',
	'MAQ-005' => 'eyeliner',
	'MAQ-006' => 'blush',
	'MAQ-007' => 'highlighter',
	'MAQ-008' => 'nailpolish',
	'MAQ-009' => 'concealer',
	'MAQ-010' => 'makeup-brush',
	'ELEC-001' => 'headphones',
	'ELEC-002' => 'charger',
	'ELEC-003' => 'cable-lightning',
	'ELEC-004' => 'phone-stand',
	'ELEC-005' => 'smartwatch',
	'ELEC-006' => 'webcam',
	'ELEC-007' => 'speaker',
	'ELEC-008' => 'computer-mouse',
	'ELEC-009' => 'keyboard',
	'ELEC-010' => 'powerbank',
	'ELE-001' => 'kettle',
	'ELE-002' => 'mixer-kitchen',
	'ELE-003' => 'vacuum-cleaner',
	'ELE-004' => 'coffee-maker',
	'ELE-005' => 'blender',
	'ELE-006' => 'clothes-iron',
	'ELE-007' => 'toaster',
	'ELE-008' => 'desk-fan',
	'ELE-009' => 'hairdryer',
	'ELE-010' => 'robot-vacuum',
);

$report = array();

foreach ( $map as $sku => $seed ) {
	$product_id = wc_get_product_id_by_sku( $sku );

	if ( ! $product_id ) {
		$report[] = "SKIP\t$sku\tNO PRODUCTO";
		continue;
	}

	// Con --force: borrar la miniatura actual (evita huérfanos y re-asigna).
	if ( $force ) {
		$existing = get_post_thumbnail_id( $product_id );
		if ( $existing ) {
			delete_post_thumbnail( $product_id );
			wp_delete_attachment( $existing, true );
		}
	}

	// Comprobar si ya tiene miniatura.
	if ( get_post_thumbnail_id( $product_id ) ) {
		$report[] = "SKIP\t$sku\t($product_id)\tYA TIENE IMAGEN";
		continue;
	}

	$url = 'https://picsum.photos/seed/' . rawurlencode( $seed ) . '/600/600.jpg';

	$src = media_sideload_image( $url, $product_id, null, 'id' );

	if ( is_wp_error( $src ) ) {
		$report[] = "ERROR\t$sku\t($product_id)\t" . $src->get_error_message();
		continue;
	}

	$attached = set_post_thumbnail( $product_id, $src );

	$report[] = 'OK' . "\t" . $sku . "\t($product_id)\t" . ( $attached ? 'thumbnail: ' . get_the_title( $src ) : 'FALLO AL ASIGNAR' );
}

echo "\n=== RESULTADO IMPORTACIÃ“N IMÃGENES TIENDA CHILE ===\n\n";
echo implode( "\n", $report ) . "\n\n";
$ok = 0; $err = 0;
foreach ( $report as $line ) {
	if ( strpos( $line, "\tOK\t" ) !== false ) { $ok++; }
	if ( strpos( $line, 'ERROR' ) !== false ) { $err++; }
}
echo "OK: $ok  |  ERROR: $err\n";