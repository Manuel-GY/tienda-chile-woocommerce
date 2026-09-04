<?php
// Script para importar los 30 productos de ejemplo
// Vía WP-CLI
require_once( ABSPATH . 'wp-load.php' );

// Verificar que WooCommerce está activo
if ( ! class_exists( 'WC_Product' ) ) {
    echo "WooCommerce no está activo\n";
    exit(1);
}

$products = [
    // Categorías: Maquillaje(17): Labios(21) Ojos(22) Rostro(23) Uñas(24)
    //            Electrónica(18): Auriculares(25) Cables(26) Accesorios(27)
    //            Electro(19): Cocina(28) Limpieza(29) Pequeños(30)
    //            Otros(20): Accesorios(31) Descuentos(32)
    ['MAQ-001', 'Lápiz Labial Rojo', 5990, 21, 30, 'Lápiz labial de larga duración, color rojo intenso, hidratante.'],
    ['MAQ-002', 'Base Líquida', 7990, 23, 40, 'Base de maquillaje de cobertura media, acabado natural.'],
    ['MAQ-003', 'Máscara de Pestañas', 6990, 22, 35, 'Máscara de pestañas con volumen y alargamiento.'],
    ['MAQ-004', 'Paleta de Sombras', 12990, 22, 20, 'Paleta de 12 sombras con acabados mate y brillante.'],
    ['MAQ-005', 'Delineador Líquido', 5990, 22, 25, 'Delineador líquido de punta fina, a prueba de agua.'],
    ['MAQ-006', 'Rubor', 6990, 23, 30, 'Rubor en polvo de acabado natural.'],
    ['MAQ-007', 'Iluminador', 7990, 23, 25, 'Iluminador líquido de acabado dorado.'],
    ['MAQ-008', 'Esmalte de Uñas', 4990, 24, 50, 'Esmalte de uñas de larga duración.'],
    ['MAQ-009', 'Corrector', 5990, 23, 35, 'Corrector de ojeras de cobertura media.'],
    ['MAQ-010', 'Brocha para Polvos', 8990, 22, 20, 'Brocha grande para aplicar polvos sueltos.'],
    ['ELEC-001', 'Auriculares Inalámbricos', 24990, 25, 15, 'Auriculares Bluetooth inalámbricos con estuche.'],
    ['ELEC-002', 'Cargador USB-C', 9990, 26, 40, 'Cargador rápido USB-C de 20W.'],
    ['ELEC-003', 'Cable Lightning', 4990, 26, 60, 'Cable de carga Lightning de 1 metro.'],
    ['ELEC-004', 'Soporte Móvil', 6990, 27, 30, 'Soporte ajustable para celular y tablet.'],
    ['ELEC-005', 'Reloj Inteligente', 29990, 27, 10, 'Smartwatch con monitoreo de salud.'],
    ['ELEC-006', 'Cámara Web HD', 19990, 27, 15, 'Cámara web HD para videollamadas.'],
    ['ELEC-007', 'Parlante Bluetooth', 18990, 25, 20, 'Parlante Bluetooth portátil con bajo.'],
    ['ELEC-008', 'Mouse Inalámbrico', 8990, 27, 25, 'Mouse inalámbrico ergonómico.'],
    ['ELEC-009', 'Teclado Bluetooth', 14990, 27, 18, 'Teclado Bluetooth compacto.'],
    ['ELEC-010', 'Power Bank 10000mAh', 15990, 26, 22, 'Batería externa portátil de 10000mAh.'],
    ['ELE-001', 'Hervidor Eléctrico', 19990, 28, 12, 'Hervidor eléctrico de 1.5 litros de acero.'],
    ['ELE-002', 'Batidora Manual', 15990, 28, 10, 'Batidora eléctrica con 5 velocidades.'],
    ['ELE-003', 'Mini Aspiradora', 17990, 29, 8, 'Mini aspiradora recargable portátil.'],
    ['ELE-004', 'Cafetera de Goteo', 24990, 28, 6, 'Cafetera de goteo para 12 tazas.'],
    ['ELE-005', 'Licuadora Personal', 14990, 28, 14, 'Licuadora portátil para batidos.'],
    ['ELE-006', 'Plancha de Vapor', 12990, 29, 10, 'Plancha de vapor de 1500W con suela antiadherente.'],
    ['ELE-007', 'Tostadora', 17990, 28, 12, 'Tostadora eléctrica con 6 niveles de tostado.'],
    ['ELE-008', 'Ventilador de Escritorio', 9990, 30, 20, 'Ventilador de escritorio silencioso.'],
    ['ELE-009', 'Secador de Pelo', 21990, 30, 10, 'Secador de pelo de 1800W con difusor.'],
    ['ELE-010', 'Robot Aspirador', 59990, 29, 5, 'Robot aspirador inteligente con mapeo.'],
];

$created = 0;
$errors = [];
foreach ($products as $p) {
    list($sku, $name, $price, $cat, $stock, $desc) = $p;
    try {
        $product = new WC_Product_Simple();
        $product->set_name($name);
        $product->set_regular_price($price);
        $product->set_sku($sku);
        $product->set_manage_stock(true);
        $product->set_stock_quantity($stock);
        $product->set_stock_status('instock');
        $product->set_description($desc);
        $product->set_short_description($desc);
        $product->set_category_ids([$cat]);
        $product->save();
        $created++;
        echo "OK: $name ($sku)\n";
    } catch (Exception $e) {
        $errors[] = "$sku: " . $e->getMessage();
        echo "ERROR: $sku - " . $e->getMessage() . "\n";
    }
}
echo "\n==== RESUMEN ====\n";
echo "Creados: $created / " . count($products) . "\n";
if ($errors) { echo "Errores:\n" . implode("\n", $errors) . "\n"; }
if ($created > 0) { echo "NOTA: Se crearon $created. WooCommerce genera productos adicionales (atributos, variaciones) automáticamente.\n"; }
