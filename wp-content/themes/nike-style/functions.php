<?php
/**
 * Nike Style - Tema hijo de Storefront
 * Estética de E-commerce Moderno, Elegante, Lujoso y de Alta Conversión (TIENDA CHILE)
 * 
 * @package NikeStyle
 * @version 2.6.0
 */

if ( ! defined( 'ABSPATH' ) ) {
    exit; // Exit if accessed directly
}

// ------------------------------------------------------------------
// 1. CARGA DE ESTILOS Y SOPORTE DEL TEMA
// ------------------------------------------------------------------
function nike_style_enqueue_styles() {
    $parent_style = 'storefront-style';

    wp_enqueue_style(
        $parent_style,
        get_template_directory_uri() . '/style.css',
        array(),
        wp_get_theme( 'storefront' )->get( 'Version' )
    );

    wp_enqueue_style(
        'nike-style',
        get_stylesheet_directory_uri() . '/style.css',
        array( $parent_style ),
        wp_get_theme()->get( 'Version' )
    );
}
add_action( 'wp_enqueue_scripts', 'nike_style_enqueue_styles' );

function nike_style_editor_styles() {
    add_editor_style( 'style.css' );
}
add_action( 'after_setup_theme', 'nike_style_editor_styles' );

add_action( 'after_setup_theme', function () {
    add_theme_support( 'post-thumbnails' );
    add_theme_support( 'wc-product-gallery-zoom' );
    add_theme_support( 'wc-product-gallery-lightbox' );
    add_theme_support( 'wc-product-gallery-slider' );
} );

// ------------------------------------------------------------------
// 2. FORMATO DE PRECIOS EN CLP (Peso Chileno)
// ------------------------------------------------------------------
add_filter( 'wc_price_args', function( $args ) {
    $args['currency']          = get_woocommerce_currency();
    $args['currency_symbol']   = get_woocommerce_currency_symbol();
    $args['decimal_separator'] = ',';
    $args['thousand_separator']= '.';
    $args['decimals']          = 0;
    $args['price_format']      = get_woocommerce_price_format();
    return $args;
} );

add_filter( 'woocommerce_currency_symbol', function( $symbol, $currency ) {
    if ( 'CLP' === $currency ) {
        return 'CLP$';
    }
    return $symbol;
}, 10, 2 );

// ------------------------------------------------------------------
// 3. MENÚS Y NAVEGACIÓN PRINCIPAL CLEAN (INICIO, TIENDA, MAQUILLAJE, ELECTRÓNICA, ELECTRODOMÉSTICOS, MI CUENTA)
// ------------------------------------------------------------------
function nike_style_register_menus() {
    register_nav_menus( array(
        'primary'        => 'Menú principal',
        'nike-secondary' => 'Menú superior (secundario)'
    ) );
}
add_action( 'after_setup_theme', 'nike_style_register_menus' );

// Helper para URLs de Categorías Inteligente con soporte para sinónimos
function nike_get_cat_url( $slug ) {
    // Definir posibles slugs/sinónimos para la búsqueda
    $slug_map = array(
        'maquillaje'        => array( 'maquillaje', 'belleza', 'cosmetica', 'skincare' ),
        'belleza'           => array( 'belleza', 'maquillaje', 'cosmetica', 'skincare' ),
        'electronica'       => array( 'electronica', 'tecnologia', 'tech', 'gadgets' ),
        'tecnologia'        => array( 'tecnologia', 'electronica', 'tech', 'gadgets' ),
        'electrodomesticos' => array( 'electrodomesticos', 'hogar', 'linea-blanca' ),
        'estilo-de-vida'    => array( 'estilo-de-vida', 'moda', 'sneakers', 'lifestyle' ),
    );

    $candidates = isset( $slug_map[ $slug ] ) ? $slug_map[ $slug ] : array( $slug );

    foreach ( $candidates as $cand ) {
        $term = get_term_by( 'slug', $cand, 'product_cat' );
        if ( $term && ! is_wp_error( $term ) ) {
            return get_term_link( $term );
        }
    }

    // Si no se encuentra por slug exacto, buscar por término parcial
    $terms = get_terms( array(
        'taxonomy'   => 'product_cat',
        'hide_empty' => false,
        'search'     => $slug,
    ) );
    if ( ! empty( $terms ) && ! is_wp_error( $terms ) ) {
        return get_term_link( $terms[0] );
    }

    return function_exists( 'wc_get_page_permalink' ) ? wc_get_page_permalink( 'shop' ) : home_url( '/tienda' );
}

// ------------------------------------------------------------------
// 3. MASTER HEADER UNIFICADO (1 SOLO MENÚ Y BOTÓN DE CARRITO)
// ------------------------------------------------------------------

// Eliminar todos los hooks por defecto del header de Storefront para evitar menús duplicados o verticales
function nike_style_remove_storefront_header_actions() {
    remove_action( 'storefront_header', 'storefront_skip_links', 0 );
    remove_action( 'storefront_header', 'storefront_social_icons', 10 );
    remove_action( 'storefront_header', 'storefront_site_branding', 20 );
    remove_action( 'storefront_header', 'storefront_secondary_navigation', 30 );
    remove_action( 'storefront_header', 'storefront_product_search', 40 );
    remove_action( 'storefront_header', 'storefront_primary_navigation_wrapper', 42 );
    remove_action( 'storefront_header', 'storefront_primary_navigation', 50 );
    remove_action( 'storefront_header', 'storefront_header_cart', 60 );
    remove_action( 'storefront_header', 'storefront_primary_navigation_wrapper_close', 68 );
}
add_action( 'init', 'nike_style_remove_storefront_header_actions', 99 );
add_action( 'after_setup_theme', 'nike_style_remove_storefront_header_actions', 99 );

function nike_style_master_header_bar() {
    $shop_url    = function_exists( 'wc_get_page_permalink' ) ? wc_get_page_permalink( 'shop' ) : home_url( '/tienda' );
    $cart_url    = function_exists( 'wc_get_page_permalink' ) ? wc_get_page_permalink( 'cart' ) : home_url( '/carrito' );
    $account_url = function_exists( 'wc_get_page_permalink' ) ? wc_get_page_permalink( 'myaccount' ) : home_url( '/mi-cuenta' );
    
    $cat_maq  = nike_get_cat_url( 'maquillaje' );
    $cat_elec = nike_get_cat_url( 'electronica' );
    $cat_ele  = nike_get_cat_url( 'electrodomesticos' );

    $cart_count    = ( function_exists( 'WC' ) && WC()->cart ) ? WC()->cart->get_cart_contents_count() : 0;
    $cart_subtotal = ( function_exists( 'WC' ) && WC()->cart ) ? WC()->cart->get_cart_subtotal() : '$0 CLP';
    ?>
    <div class="nike-master-header-row">
        <!-- 1. Logo -->
        <div class="nike-header-logo-box">
            <a href="<?php echo esc_url( home_url( '/' ) ); ?>" class="nike-logo-link" rel="home">
                <?php echo nike_style_get_svg_logo( 'header' ); ?>
            </a>
        </div>

        <!-- 2. Menú Principal Horizontal (1 Solo Menú) -->
        <nav class="nike-header-main-nav">
            <ul class="nike-header-nav-list">
                <li class="<?php echo is_front_page() ? 'active' : ''; ?>"><a href="<?php echo esc_url( home_url( '/' ) ); ?>">Inicio</a></li>
                <li class="<?php echo ( function_exists('is_shop') && is_shop() ) ? 'active' : ''; ?>"><a href="<?php echo esc_url( $shop_url ); ?>">Tienda</a></li>
                <li class="<?php echo ( function_exists('is_product_category') && is_product_category('maquillaje') ) ? 'active' : ''; ?>"><a href="<?php echo esc_url( $cat_maq ); ?>">Maquillaje</a></li>
                <li class="<?php echo ( function_exists('is_product_category') && is_product_category('electronica') ) ? 'active' : ''; ?>"><a href="<?php echo esc_url( $cat_elec ); ?>">Electrónica</a></li>
                <li class="<?php echo ( function_exists('is_product_category') && is_product_category('electrodomesticos') ) ? 'active' : ''; ?>"><a href="<?php echo esc_url( $cat_ele ); ?>">Electrodomésticos</a></li>
                <li class="<?php echo ( function_exists('is_account_page') && is_account_page() ) ? 'active' : ''; ?>"><a href="<?php echo esc_url( $account_url ); ?>">Mi Cuenta</a></li>
            </ul>
        </nav>

        <!-- 3. Acciones Derechas (Redes & Carrito) -->
        <div class="nike-header-right-actions">
            <div class="nike-header-social-pills">
                <a href="https://www.instagram.com" target="_blank" rel="noopener" aria-label="Instagram">
                    <svg width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><rect x="2" y="2" width="20" height="20" rx="5" ry="5"/><path d="M16 11.37A4 4 0 1 1 12.63 8 4 4 0 0 1 16 11.37z"/><line x1="17.5" y1="6.5" x2="17.51" y2="6.5"/></svg>
                </a>
                <a href="https://www.tiktok.com" target="_blank" rel="noopener" aria-label="TikTok">
                    <svg width="14" height="14" viewBox="0 0 24 24" fill="currentColor"><path d="M19.59 6.69a4.83 4.83 0 0 1-3.77-4.25V2h-3.45v13.67a2.89 2.89 0 0 1-5.2 1.74 2.89 2.89 0 0 1 2.31-4.64 2.93 2.93 0 0 1 .88.13V9.4a6.84 6.84 0 0 0-1-.05A6.33 6.33 0 0 0 5 20.1a6.34 6.34 0 0 0 10.86-4.43v-7a8.16 8.16 0 0 0 4.77 1.52v-3.4a4.85 4.85 0 0 1-1-.1z"/></svg>
                </a>
                <a href="https://wa.me/56912345678" target="_blank" rel="noopener" aria-label="WhatsApp">
                    <svg width="14" height="14" viewBox="0 0 24 24" fill="currentColor"><path d="M17.472 14.382c-.297-.149-1.758-.867-2.03-.967-.273-.099-.471-.148-.67.15-.197.297-.767.966-.94 1.164-.173.199-.347.223-.644.075-.297-.15-1.255-.463-2.39-1.475-.883-.788-1.48-1.761-1.653-2.059-.173-.297-.018-.458.13-.606.134-.133.298-.347.446-.52.149-.174.198-.298.298-.497.099-.198.05-.371-.025-.52-.075-.149-.669-1.612-.916-2.207-.242-.579-.487-.501-.669-.51l-.57-.01c-.198 0-.52.074-.792.372s-1.04 1.016-1.04 2.479 1.065 2.876 1.213 3.074c.149.198 2.095 3.2 5.076 4.487.709.306 1.263.489 1.694.626.712.226 1.36.194 1.872.118.572-.085 1.758-.719 2.006-1.413.248-.694.248-1.289.173-1.413-.074-.124-.272-.198-.57-.347m-5.421 7.403h-.004a9.87 9.87 0 01-5.031-1.378l-.361-.214-3.741.982.998-3.648-.235-.374a9.86 9.86 0 01-1.51-5.26c.001-5.45 4.436-9.884 9.888-9.884 2.64 0 5.122 1.03 6.988 2.898a9.825 9.825 0 012.893 6.994c-.003 5.45-4.437 9.884-9.885 9.884m8.413-18.297A11.815 11.815 0 0012.05 0C5.495 0 .16 5.335.157 11.892c0 2.096.547 4.142 1.588 5.945L.057 24l6.305-1.654a11.882 11.882 0 005.683 1.448h.005c6.554 0 11.89-5.335 11.893-11.893a11.821 11.821 0 00-3.48-8.413Z"/></svg>
                </a>
            </div>
            
            <!-- Botón Carrito Header -->
            <a href="<?php echo esc_url( $cart_url ); ?>" class="nike-header-cart-pill" title="Ver Carrito de Compras">
                <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5"><circle cx="9" cy="21" r="1"/><circle cx="20" cy="21" r="1"/><path d="M1 1h4l2.68 13.39a2 2 0 0 0 2 1.61h9.72a2 2 0 0 0 2-1.61L23 6H6"/></svg>
                <span class="nike-cart-subtotal-txt"><?php echo wp_kses_post( $cart_subtotal ); ?></span>
                <span class="nike-cart-qty-badge"><?php echo esc_html( $cart_count ); ?></span>
            </a>
        </div>
    </div>
    <?php
}
add_action( 'storefront_header', 'nike_style_master_header_bar', 10 );

// Desactivar permanentemente el modo 'Próximamente / Coming Soon' de WooCommerce
add_filter( 'option_woocommerce_coming_soon', '__return_false', 999 );
add_filter( 'pre_option_woocommerce_coming_soon', '__return_false', 999 );
add_filter( 'option_woocommerce_store_pages_only', '__return_false', 999 );
add_filter( 'pre_option_woocommerce_store_pages_only', '__return_false', 999 );

add_action( 'init', function() {
    if ( 'yes' === get_option( 'woocommerce_coming_soon' ) ) {
        update_option( 'woocommerce_coming_soon', 'no' );
        update_option( 'woocommerce_store_pages_only', 'no' );
    }
} );

// Forzar asociación de la página 'tienda' como Shop Page de WooCommerce
add_filter( 'option_woocommerce_shop_page_id', function( $val ) {
    if ( ! $val || $val <= 0 ) {
        $page = get_page_by_path( 'tienda' );
        if ( ! $page ) {
            $page = get_page_by_path( 'shop' );
        }
        if ( $page ) {
            return $page->ID;
        }
    }
    return $val;
} );

// Filtro para limpiar bloques negros anticuados del contenido de la Home
add_filter( 'the_content', function( $content ) {
    if ( ( is_front_page() || is_home() ) && is_string( $content ) ) {
        if ( strpos( $content, 'has-black-background-color' ) !== false ) {
            $content = preg_replace( '/<div[^>]*has-black-background-color[^>]*>.*?<\/div>/s', '', $content );
        }
    }
    return $content;
}, 998 );

// Reemplazar texto dummy de página en obras con el catálogo de productos completo
add_filter( 'the_content', 'tienda_chile_replace_shop_page_content', 999 );
function tienda_chile_replace_shop_page_content( $content ) {
    $is_tienda_page = is_page( 'tienda' ) || is_page( 'shop' ) || ( function_exists( 'is_shop' ) && is_shop() );
    $has_placeholder = is_string( $content ) && ( strpos( $content, 'grandes proyectos' ) !== false || strpos( $content, 'obras' ) !== false || strpos( $content, 'preparando algo grande' ) !== false );

    if ( $is_tienda_page || $has_placeholder ) {
        return '<div class="nike-shop-catalog-wrapper" style="max-width: 1300px; margin: 32px auto 48px; padding: 0 16px; clear: both;">' . do_shortcode( '[products limit="24" columns="4" paginate="true" orderby="date" order="DESC"]' ) . '</div>';
    }

    return $content;
}

// Forzar la visualización de los productos en la página de Tienda (fallback adicional)
add_action( 'storefront_page', 'tienda_chile_always_show_shop_products', 20 );
add_action( 'woocommerce_after_main_content', 'tienda_chile_always_show_shop_products', 20 );
function tienda_chile_always_show_shop_products() {
    if ( ( function_exists( 'is_shop' ) && is_shop() ) || is_page( 'tienda' ) || is_page( 'shop' ) ) {
        static $rendered = false;
        if ( ! $rendered ) {
            $rendered = true;
            echo '<div class="nike-shop-catalog-wrapper" style="max-width: 1300px; margin: 32px auto 48px; padding: 0 16px; clear: both;">';
            echo do_shortcode( '[products limit="24" columns="4" paginate="true" orderby="date" order="DESC"]' );
            echo '</div>';
        }
    }
}



// ------------------------------------------------------------------
// 4. LOGO SVG EXCLUSIVO "TIENDA CHILE"
// ------------------------------------------------------------------
function nike_style_get_svg_logo( $variant = 'header' ) {
    if ( 'footer' === $variant ) {
        return '<svg class="nike-brand-logo-footer" width="220" height="42" viewBox="0 0 220 42" fill="none" xmlns="http://www.w3.org/2000/svg">
            <rect x="1" y="1" width="40" height="40" rx="10" fill="#FFFFFF"/>
            <path d="M21 9L23.4 15.2H30L24.6 19.1L26.7 25.3L21 21.4L15.3 25.3L17.4 19.1L12 15.2H18.6L21 9Z" fill="#EF4444"/>
            <circle cx="21" cy="31" r="2" fill="#18181B"/>
            <text x="52" y="24" font-family="\'Inter\', system-ui, -apple-system, sans-serif" font-size="20" font-weight="900" letter-spacing="1" fill="#FFFFFF">TIENDA</text>
            <text x="134" y="24" font-family="\'Inter\', system-ui, -apple-system, sans-serif" font-size="20" font-weight="900" letter-spacing="1" fill="#EF4444">CHILE</text>
            <text x="52" y="37" font-family="\'Inter\', system-ui, -apple-system, sans-serif" font-size="9" font-weight="700" letter-spacing="2" fill="#94A3B8">OFICIAL • CHILE 🇨🇱</text>
        </svg>';
    }

    return '<svg class="nike-brand-logo" width="220" height="42" viewBox="0 0 220 42" fill="none" xmlns="http://www.w3.org/2000/svg">
        <rect x="1" y="1" width="40" height="40" rx="10" fill="#18181B"/>
        <path d="M21 9L23.4 15.2H30L24.6 19.1L26.7 25.3L21 21.4L15.3 25.3L17.4 19.1L12 15.2H18.6L21 9Z" fill="#EF4444"/>
        <circle cx="21" cy="31" r="2" fill="#FFFFFF"/>
        <text x="52" y="24" font-family="\'Inter\', system-ui, -apple-system, sans-serif" font-size="20" font-weight="900" letter-spacing="1" fill="#18181B">TIENDA</text>
        <text x="134" y="24" font-family="\'Inter\', system-ui, -apple-system, sans-serif" font-size="20" font-weight="900" letter-spacing="1" fill="#EF4444">CHILE</text>
        <text x="52" y="37" font-family="\'Inter\', system-ui, -apple-system, sans-serif" font-size="9" font-weight="700" letter-spacing="2" fill="#64748B">OFICIAL • CHILE 🇨🇱</text>
    </svg>';
}

function nike_style_custom_site_branding() {
    echo '<div class="site-branding">';
    echo '<a href="' . esc_url( home_url( '/' ) ) . '" class="nike-logo-link" rel="home" title="TIENDA CHILE - Inicio">';
    echo nike_style_get_svg_logo( 'header' );
    echo '</a>';
    echo '</div>';
}
// Unhook default storefront branding; nike_style_master_header_bar renders logo, nav & cart in 1 single horizontal bar
remove_action( 'storefront_header', 'storefront_site_branding', 20 );

add_filter( 'storefront_site_title_or_logo', function() {
    return '<a href="' . esc_url( home_url( '/' ) ) . '" class="nike-logo-link" rel="home">' . nike_style_get_svg_logo('header') . '</a>';
} );

// ------------------------------------------------------------------
// 5. BARRA SUPERIOR DE ANUNCIO (TOPBAR) Y CARRITO EN HEADER
// ------------------------------------------------------------------
function nike_style_top_bar() {
    ?>
    <div class="nike-topbar">
        <div class="nike-topbar-content">
            <div class="nike-topbar-promo">
                <span class="nike-topbar-badge">EDICIÓN 2026</span>
                <span class="nike-topbar-ticker-text">⚡ Envío gratis por compras sobre $50.000 CLP &nbsp;|&nbsp; Despacho Exprés a todo Chile 🇨🇱 &nbsp;|&nbsp; Pago Seguro Webpay & Transbank</span>
            </div>
            <div class="nike-topbar-social">
                <span class="topbar-social-label">Síguenos:</span>
                <a href="https://www.instagram.com" target="_blank" rel="noopener" aria-label="Instagram @tiendachile.cl">
                    <svg width="13" height="13" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><rect x="2" y="2" width="20" height="20" rx="5" ry="5"/><path d="M16 11.37A4 4 0 1 1 12.63 8 4 4 0 0 1 16 11.37z"/><line x1="17.5" y1="6.5" x2="17.51" y2="6.5"/></svg>
                    <span>@tiendachile.cl</span>
                </a>
                <a href="https://www.tiktok.com" target="_blank" rel="noopener" aria-label="TikTok @tiendachile">
                    <svg width="13" height="13" viewBox="0 0 24 24" fill="currentColor"><path d="M19.59 6.69a4.83 4.83 0 0 1-3.77-4.25V2h-3.45v13.67a2.89 2.89 0 0 1-5.2 1.74 2.89 2.89 0 0 1 2.31-4.64 2.93 2.93 0 0 1 .88.13V9.4a6.84 6.84 0 0 0-1-.05A6.33 6.33 0 0 0 5 20.1a6.34 6.34 0 0 0 10.86-4.43v-7a8.16 8.16 0 0 0 4.77 1.52v-3.4a4.85 4.85 0 0 1-1-.1z"/></svg>
                    <span>@tiendachile</span>
                </a>
                <a href="https://www.facebook.com" target="_blank" rel="noopener" aria-label="Facebook Tienda Chile Oficial">
                    <svg width="13" height="13" viewBox="0 0 24 24" fill="currentColor"><path d="M22 12c0-5.52-4.48-10-10-10S2 6.48 2 12c0 4.84 3.44 8.87 8 9.8V15H8v-3h2V9.5C10 7.57 11.57 6 13.5 6H16v3h-2c-.55 0-1 .45-1 1v2h3l-.5 3H13v6.95c4.66-.6 8-4.44 8-9.15z"/></svg>
                    <span>Facebook</span>
                </a>
            </div>
        </div>
    </div>
    <?php
}
add_action( 'storefront_before_header', 'nike_style_top_bar', 5 );

// Asegurar URL y Fragmento AJAX del Carrito de WooCommerce en el Header
add_filter( 'woocommerce_get_cart_url', 'tienda_chile_fix_cart_url' );
function tienda_chile_fix_cart_url( $url ) {
    $cart_page_id = wc_get_page_id( 'cart' );
    if ( $cart_page_id && $cart_page_id > 0 ) {
        $permalink = get_permalink( $cart_page_id );
        if ( $permalink ) {
            return $permalink;
        }
    }
    return home_url( '/carrito' );
}

function nike_style_cart_link_html() {
    $cart_count    = ( function_exists( 'WC' ) && WC()->cart ) ? WC()->cart->get_cart_contents_count() : 0;
    $cart_subtotal = ( function_exists( 'WC' ) && WC()->cart ) ? WC()->cart->get_cart_subtotal() : '0 CLP$';
    $cart_url      = function_exists( 'wc_get_page_permalink' ) ? wc_get_page_permalink( 'cart' ) : home_url( '/carrito' );
    ?>
    <a class="cart-contents" href="<?php echo esc_url( $cart_url ); ?>" title="<?php esc_attr_e( 'Ver mi Carrito de Compras', 'nike-style' ); ?>">
        <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="nike-cart-icon"><circle cx="9" cy="21" r="1"/><circle cx="20" cy="21" r="1"/><path d="M1 1h4l2.68 13.39a2 2 0 0 0 2 1.61h9.72a2 2 0 0 0 2-1.61L23 6H6"/></svg>
        <span class="amount"><?php echo wp_kses_post( $cart_subtotal ); ?></span>
        <span class="count"><?php echo esc_html( $cart_count ); ?></span>
    </a>
    <?php
}

add_filter( 'woocommerce_add_to_cart_fragments', function( $fragments ) {
    ob_start();
    nike_style_cart_link_html();
    $fragments['a.cart-contents'] = ob_get_clean();
    return $fragments;
} );

// ------------------------------------------------------------------
// 6. BOTÓN FLOTANTE DE WHATSAPP CON BADGE PROMINENTE
// ------------------------------------------------------------------
function nike_style_whatsapp_floating_button() {
    ?>
    <div class="nike-wa-floating">
        <a href="https://wa.me/56912345678?text=Hola%20Tienda%20Chile!%20Quisiera%20recibir%20informaci%C3%B3n%20sobre%20sus%20productos." target="_blank" rel="noopener" class="nike-wa-link" aria-label="Atención al cliente por WhatsApp">
            <span class="nike-wa-badge">¿Dudas? Chatea con nosotros 💬</span>
            <div class="nike-wa-btn-circle">
                <svg width="30" height="30" viewBox="0 0 24 24" fill="currentColor">
                    <path d="M17.472 14.382c-.297-.149-1.758-.867-2.03-.967-.273-.099-.471-.148-.67.15-.197.297-.767.966-.94 1.164-.173.199-.347.223-.644.075-.297-.15-1.255-.463-2.39-1.475-.883-.788-1.48-1.761-1.653-2.059-.173-.297-.018-.458.13-.606.134-.133.298-.347.446-.52.149-.174.198-.298.298-.497.099-.198.05-.371-.025-.52-.075-.149-.669-1.612-.916-2.207-.242-.579-.487-.501-.669-.51l-.57-.01c-.198 0-.52.074-.792.372s-1.04 1.016-1.04 2.479 1.065 2.876 1.213 3.074c.149.198 2.095 3.2 5.076 4.487.709.306 1.263.489 1.694.626.712.226 1.36.194 1.872.118.572-.085 1.758-.719 2.006-1.413.248-.694.248-1.289.173-1.413-.074-.124-.272-.198-.57-.347m-5.421 7.403h-.004a9.87 9.87 0 01-5.031-1.378l-.361-.214-3.741.982.998-3.648-.235-.374a9.86 9.86 0 01-1.51-5.26c.001-5.45 4.436-9.884 9.888-9.884 2.64 0 5.122 1.03 6.988 2.898a9.825 9.825 0 012.893 6.994c-.003 5.45-4.437 9.884-9.885 9.884m8.413-18.297A11.815 11.815 0 0012.05 0C5.495 0 .16 5.335.157 11.892c0 2.096.547 4.142 1.588 5.945L.057 24l6.305-1.654a11.882 11.882 0 005.683 1.448h.005c6.554 0 11.89-5.335 11.893-11.893a11.821 11.821 0 00-3.48-8.413Z"/>
                </svg>
            </div>
        </a>
    </div>
    <?php
}
add_action( 'wp_footer', 'nike_style_whatsapp_floating_button' );

// ------------------------------------------------------------------
// 7. HERO BANNER E IMÁGENES DESTACADAS (HOME PAGE & TIENDA)
// ------------------------------------------------------------------

// Banner de Cabecera y Filtro por Categorías para la Tienda y Colecciones
function nike_style_render_shop_header() {
    if ( ( function_exists( 'is_shop' ) && is_shop() ) || is_page( 'tienda' ) || is_page( 'shop' ) || ( function_exists( 'is_product_category' ) && is_product_category() ) ) {
        static $rendered_header = false;
        if ( $rendered_header ) return;
        $rendered_header = true;

        $shop_url     = function_exists( 'wc_get_page_permalink' ) ? wc_get_page_permalink( 'shop' ) : home_url( '/tienda' );
        $current_cat  = is_product_category() ? get_queried_object() : null;
        $current_slug = $current_cat ? $current_cat->slug : '';
        
        $title    = 'Catálogo Completo 2026';
        $subtitle = 'Explora nuestra colección exclusiva con envío exprés y garantía oficial a todo Chile 🇨🇱';
        if ( $current_cat ) {
            $title    = $current_cat->name;
            $subtitle = ! empty( $current_cat->description ) ? $current_cat->description : 'Productos seleccionados con la máxima calidad en ' . $current_cat->name;
        }
        
        $categories = get_terms( array(
            'taxonomy'   => 'product_cat',
            'parent'     => 0,
            'hide_empty' => true,
        ) );
        ?>
        <div class="nike-shop-header-banner">
            <div class="nike-shop-header-container">
                <div class="nike-shop-badge-wrapper">
                    <span class="nike-shop-badge">COLECCIÓN OFICIAL TIENDA CHILE 🇨🇱</span>
                </div>
                <h1 class="nike-shop-title"><?php echo esc_html( $title ); ?></h1>
                <p class="nike-shop-subtitle"><?php echo esc_html( $subtitle ); ?></p>
                
                <!-- Barra Navegación por Categorías (Filtros Inteligentes DTC) -->
                <div class="nike-shop-categories-nav">
                    <a href="<?php echo esc_url( $shop_url ); ?>" class="nike-cat-nav-pill <?php echo ( ! is_product_category() ) ? 'active' : ''; ?>">
                        <span class="nike-cat-pill-icon">🔥</span>
                        <span class="nike-cat-pill-name">Todos los Productos</span>
                    </a>
                    <?php if ( ! empty( $categories ) && ! is_wp_error( $categories ) ) : ?>
                        <?php foreach ( $categories as $cat ) : 
                            $slug_lower = strtolower( $cat->slug );
                            if ( strpos( $slug_lower, 'uncategorized' ) !== false || strpos( $slug_lower, 'sin-categoria' ) !== false ) continue;
                            $is_active = ( $current_slug === $cat->slug );
                            $icon = '✨';
                            $name_lower = strtolower( $cat->name );
                            if ( strpos( $slug_lower, 'maquillaj' ) !== false || strpos( $name_lower, 'maquillaj' ) !== false || strpos( $slug_lower, 'belleza' ) !== false || strpos( $name_lower, 'belleza' ) !== false ) {
                                $icon = '💄';
                            } elseif ( strpos( $slug_lower, 'elec' ) !== false || strpos( $name_lower, 'electr' ) !== false || strpos( $slug_lower, 'tech' ) !== false || strpos( $name_lower, 'tecno' ) !== false ) {
                                $icon = '⚡';
                            } elseif ( strpos( $slug_lower, 'electrodom' ) !== false || strpos( $name_lower, 'electrodom' ) !== false || strpos( $slug_lower, 'hogar' ) !== false ) {
                                $icon = '🏠';
                            } elseif ( strpos( $slug_lower, 'accesorio' ) !== false || strpos( $name_lower, 'accesorio' ) !== false || strpos( $slug_lower, 'moda' ) !== false ) {
                                $icon = '🎒';
                            }
                            ?>
                            <a href="<?php echo esc_url( get_term_link( $cat ) ); ?>" class="nike-cat-nav-pill <?php echo $is_active ? 'active' : ''; ?>">
                                <span class="nike-cat-pill-icon"><?php echo $icon; ?></span>
                                <span class="nike-cat-pill-name"><?php echo esc_html( $cat->name ); ?></span>
                            </a>
                        <?php endforeach; ?>
                    <?php endif; ?>
                </div>
            </div>
        </div>
        <?php
    }
}
add_action( 'storefront_page', 'nike_style_render_shop_header', 5 );
add_action( 'woocommerce_before_main_content', 'nike_style_render_shop_header', 12 );

function nike_style_hide_default_shop_title() {
    if ( ( function_exists( 'is_shop' ) && is_shop() ) || is_page( 'tienda' ) || is_page( 'shop' ) || ( function_exists( 'is_product_category' ) && is_product_category() ) ) {
        add_filter( 'woocommerce_show_page_title', '__return_false' );
    }
}
add_action( 'woocommerce_before_main_content', 'nike_style_hide_default_shop_title', 5 );


function nike_style_render_homepage_elements() {
    if ( is_front_page() || is_home() ) {
        $theme_uri = get_stylesheet_directory_uri();
        $shop_url  = function_exists( 'wc_get_page_permalink' ) ? wc_get_page_permalink( 'shop' ) : home_url( '/tienda' );
        ?>
        <!-- Hero Banner Principal (Layout Split Editorial de Lujo) -->
        <section class="nike-hero-banner" style="background-image: radial-gradient(circle at 65% 50%, rgba(15, 23, 42, 0.5) 0%, rgba(9, 9, 11, 0.88) 100%), url('<?php echo esc_url( $theme_uri . '/images/hero_banner.jpg' ); ?>');">
            <div class="nike-hero-container">
                <div class="nike-hero-split">
                    <!-- Columna Editorial -->
                    <div class="nike-hero-editorial">
                        <div class="nike-hero-badges-wrapper">
                            <span class="nike-badge-gold">
                                <svg width="12" height="12" viewBox="0 0 24 24" fill="currentColor"><path d="M12 2l3.09 6.26L22 9.27l-5 4.87 1.18 6.88L12 17.77l-6.18 3.25L7 14.14 2 9.27l6.91-1.01L12 2z"/></svg>
                                EDICIÓN LIMITADA 2026
                            </span>
                            <span class="nike-badge-red">EXCLUSIVO CHILE 🇨🇱</span>
                        </div>
                        <h1 class="nike-hero-title">Estilo, Innovación & Clase Mundial</h1>
                        <p class="nike-hero-subtitle">Descubre una curatoría impecable de productos premium. Alta tecnología, cuidado personal y elegancia urbana con despacho exprés y garantía oficial.</p>
                        <div class="nike-hero-actions">
                            <a href="<?php echo esc_url( $shop_url ); ?>" class="nike-hero-btn nike-hero-btn-primary">
                                Descubrir Colección ➔
                            </a>
                            <a href="#nike-featured-section" class="nike-hero-btn nike-hero-btn-secondary">
                                Ver Ofertas -25% DCTO
                            </a>
                        </div>
                    </div>

                    <!-- Columna Showcase Card -->
                    <div class="nike-hero-showcase">
                        <div class="nike-showcase-card">
                            <div class="nike-showcase-glow"></div>
                            <img src="<?php echo esc_url( $theme_uri . '/images/beauty.jpg' ); ?>" alt="Colección de Lujo 2026" class="nike-showcase-img" />
                            <div class="nike-showcase-overlay">
                                <span class="nike-showcase-pill">DESTACADO DE LA SEMANA</span>
                                <h3 class="nike-showcase-title">Skincare & Tech Premium</h3>
                                <p class="nike-showcase-desc">Hasta 25% DCTO en tu primera compra</p>
                                <span class="nike-showcase-price">Desde CLP$24.990</span>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Franja de Beneficios Flotantes en Glassmorphism (4 Pilares) -->
                <div class="nike-hero-benefits-bar">
                    <div class="nike-benefit-item">
                        <div class="nike-benefit-icon">
                            <svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><rect x="1" y="3" width="15" height="13"/><polygon points="16 8 20 8 23 11 23 16 16 16 16 8"/><circle cx="5.5" cy="18.5" r="2.5"/><circle cx="18.5" cy="18.5" r="2.5"/></svg>
                        </div>
                        <div class="nike-benefit-text">
                            <strong>Envío Exprés Chile 🇨🇱</strong>
                            <span>Despacho 24h a 48h hábiles</span>
                        </div>
                    </div>
                    <div class="nike-benefit-divider"></div>
                    <div class="nike-benefit-item">
                        <div class="nike-benefit-icon">
                            <svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><rect x="1" y="4" width="22" height="16" rx="2" ry="2"/><line x1="1" y1="10" x2="23" y2="10"/></svg>
                        </div>
                        <div class="nike-benefit-text">
                            <strong>Webpay & Transbank</strong>
                            <span>Pago seguro en cuotas</span>
                        </div>
                    </div>
                    <div class="nike-benefit-divider"></div>
                    <div class="nike-benefit-item">
                        <div class="nike-benefit-icon">
                            <svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M12 22s8-4 8-10V5l-8-3-8 3v7c0 6 8 10 8 10z"/></svg>
                        </div>
                        <div class="nike-benefit-text">
                            <strong>Garantía Oficial 6 Meses</strong>
                            <span>Protección total al comprador</span>
                        </div>
                    </div>
                    <div class="nike-benefit-divider"></div>
                    <div class="nike-benefit-item">
                        <div class="nike-benefit-icon">
                            <svg width="20" height="20" viewBox="0 0 24 24" fill="currentColor"><path d="M17.472 14.382c-.297-.149-1.758-.867-2.03-.967-.273-.099-.471-.148-.67.15-.197.297-.767.966-.94 1.164-.173.199-.347.223-.644.075-.297-.15-1.255-.463-2.39-1.475-.883-.788-1.48-1.761-1.653-2.059-.173-.297-.018-.458.13-.606.134-.133.298-.347.446-.52.149-.174.198-.298.298-.497.099-.198.05-.371-.025-.52-.075-.149-.669-1.612-.916-2.207-.242-.579-.487-.501-.669-.51l-.57-.01c-.198 0-.52.074-.792.372s-1.04 1.016-1.04 2.479 1.065 2.876 1.213 3.074c.149.198 2.095 3.2 5.076 4.487.709.306 1.263.489 1.694.626.712.226 1.36.194 1.872.118.572-.085 1.758-.719 2.006-1.413.248-.694.248-1.289.173-1.413-.074-.124-.272-.198-.57-.347m-5.421 7.403h-.004a9.87 9.87 0 01-5.031-1.378l-.361-.214-3.741.982.998-3.648-.235-.374a9.86 9.86 0 01-1.51-5.26c.001-5.45 4.436-9.884 9.888-9.884 2.64 0 5.122 1.03 6.988 2.898a9.825 9.825 0 012.893 6.994c-.003 5.45-4.437 9.884-9.885 9.884m8.413-18.297A11.815 11.815 0 0012.05 0C5.495 0 .16 5.335.157 11.892c0 2.096.547 4.142 1.588 5.945L.057 24l6.305-1.654a11.882 11.882 0 005.683 1.448h.005c6.554 0 11.89-5.335 11.893-11.893a11.821 11.821 0 00-3.48-8.413Z"/></svg>
                        </div>
                        <div class="nike-benefit-text">
                            <strong>Soporte WhatsApp 24/7</strong>
                            <span>Respuesta inmediata en minutos</span>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Bento Grid de Categorías Destacadas (Bento Grid Desktop 3 Columnas) -->
        <section id="nike-featured-section" class="nike-categories-section">
            <div class="nike-section-header">
                <span class="nike-section-badge">COLECCIONES EXCLUSIVAS</span>
                <h2 class="nike-section-title">Categorías Destacadas</h2>
                <p class="nike-section-subtitle">Explora lo mejor en belleza, tecnología y estilo de vida con despacho exprés a todo Chile</p>
            </div>
            <div class="nike-cat-bento-grid">
                <a href="<?php echo esc_url( nike_get_cat_url( 'belleza' ) ); ?>" class="nike-cat-card nike-cat-bento-item nike-cat-beauty">
                    <div class="nike-cat-bg" style="background-image: linear-gradient(180deg, rgba(15, 23, 42, 0.2) 0%, rgba(15, 23, 42, 0.88) 100%), url('<?php echo esc_url( $theme_uri . '/images/beauty.jpg' ); ?>');"></div>
                    <div class="nike-cat-content">
                        <span class="nike-cat-tag">✨ Skincare & Cosmética</span>
                        <h3>Belleza & Cuidado</h3>
                        <p>Fórmulas exclusivas y cuidado personal de alta gama</p>
                        <span class="nike-cat-btn">Ver Colección ➔</span>
                    </div>
                </a>
                <a href="<?php echo esc_url( nike_get_cat_url( 'tecnologia' ) ); ?>" class="nike-cat-card nike-cat-bento-item nike-cat-tech">
                    <div class="nike-cat-bg" style="background-image: linear-gradient(180deg, rgba(15, 23, 42, 0.2) 0%, rgba(15, 23, 42, 0.88) 100%), url('<?php echo esc_url( $theme_uri . '/images/tech.jpg' ); ?>');"></div>
                    <div class="nike-cat-content">
                        <span class="nike-cat-tag">⚡ Gadgets & Audio</span>
                        <h3>Tecnología Premium</h3>
                        <p>Audio de alta fidelidad y dispositivos inteligentes</p>
                        <span class="nike-cat-btn">Explorar Gadgets ➔</span>
                    </div>
                </a>
                <a href="<?php echo esc_url( nike_get_cat_url( 'estilo-de-vida' ) ); ?>" class="nike-cat-card nike-cat-bento-item nike-cat-lifestyle">
                    <div class="nike-cat-bg" style="background-image: linear-gradient(180deg, rgba(15, 23, 42, 0.2) 0%, rgba(15, 23, 42, 0.88) 100%), url('<?php echo esc_url( $theme_uri . '/images/hero_banner.jpg' ); ?>');"></div>
                    <div class="nike-cat-content">
                        <span class="nike-cat-tag">💎 Moda & Sneakers</span>
                        <h3>Estilo de Vida</h3>
                        <p>Diseños urbanos y calzado con calidad internacional</p>
                        <span class="nike-cat-btn">Descubrir Colección ➔</span>
                    </div>
                </a>
            </div>
        </section>
        <?php
    }
}
add_action( 'storefront_before_content', 'nike_style_render_homepage_elements', 5 );

// ------------------------------------------------------------------
// 8. TRADUCCIONES, BADGES DE DESCUENTO Y MEJORAS EN TARJETAS DE PRODUCTO
// ------------------------------------------------------------------

// Traducir "Add to cart"
add_filter( 'woocommerce_product_add_to_cart_text', 'nike_style_translate_add_to_cart', 10, 2 );
add_filter( 'woocommerce_product_single_add_to_cart_text', 'nike_style_translate_add_to_cart', 10, 2 );
function nike_style_translate_add_to_cart( $text, $product = null ) {
    if ( $product && $product->is_type( 'variable' ) ) {
        return __( 'Ver Opciones', 'nike-style' );
    }
    return __( 'Agregar al Carrito', 'nike-style' );
}

// Badge de oferta con porcentaje (-25% DCTO)
add_filter( 'woocommerce_sale_flash', function( $html, $post, $product ) {
    if ( ! $product ) {
        return '<span class="onsale">-25% DCTO</span>';
    }
    
    $percentage = 0;
    if ( $product->is_type( 'variable' ) ) {
        $available_variations = $product->get_available_variations();
        $percentages = array();
        foreach ( $available_variations as $variation ) {
            $regular_price = $variation['display_regular_price'];
            $sale_price    = $variation['display_price'];
            if ( $regular_price && $sale_price && $regular_price > $sale_price ) {
                $percentages[] = round( ( ( $regular_price - $sale_price ) / $regular_price ) * 100 );
            }
        }
        if ( ! empty( $percentages ) ) {
            $percentage = max( $percentages );
        }
    } elseif ( $product->get_regular_price() && $product->get_sale_price() ) {
        $regular = (float) $product->get_regular_price();
        $sale    = (float) $product->get_sale_price();
        if ( $regular > 0 && $sale < $regular ) {
            $percentage = round( ( ( $regular - $sale ) / $regular ) * 100 );
        }
    }
    
    if ( $percentage > 0 ) {
        return '<span class="onsale">-' . intval( $percentage ) . '% DCTO</span>';
    }
    return '<span class="onsale">-25% DCTO</span>';
}, 10, 3 );

// Asignar imágenes reales a productos de WooCommerce sin imagen asignada
add_filter( 'woocommerce_placeholder_img_src', function( $src ) {
    return get_stylesheet_directory_uri() . '/images/beauty.jpg';
} );

add_filter( 'woocommerce_product_get_image', function( $image, $product, $size, $attr, $placeholder ) {
    if ( $product && ! $product->get_image_id() ) {
        $theme_uri = get_stylesheet_directory_uri();
        $sku       = $product->get_sku();
        $img_url   = $theme_uri . '/images/beauty.jpg';
        
        if ( strpos( $sku, 'ELEC' ) !== false || strpos( $sku, 'ELE' ) !== false ) {
            $img_url = $theme_uri . '/images/tech.jpg';
        } elseif ( strpos( $sku, 'MAQ' ) !== false ) {
            $img_url = $theme_uri . '/images/beauty.jpg';
        } else {
            $img_url = $theme_uri . '/images/hero_banner.jpg';
        }
        
        return '<img src="' . esc_url( $img_url ) . '" alt="' . esc_attr( $product->get_name() ) . '" class="attachment-woocommerce_thumbnail size-woocommerce_thumbnail wp-post-image" loading="lazy" style="width: 100%; aspect-ratio: 1/1; object-fit: cover;" />';
    }
    return $image;
}, 10, 5 );

// Estrellas 5.0 (★★★★★) y Badges de Envío Rápido en tarjetas de productos
function nike_style_product_card_elements() {
    ?>
    <div class="nike-product-rating-box">
        <div class="nike-stars" aria-label="Calificación 5 de 5 estrellas">★★★★★</div>
        <span class="nike-rating-count">5.0 (48)</span>
    </div>
    <div class="nike-product-fast-ship">
        <svg width="12" height="12" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5"><rect x="1" y="3" width="15" height="13"/><polygon points="16 8 20 8 23 11 23 16 16 16 16 8"/><circle cx="5.5" cy="18.5" r="2.5"/><circle cx="18.5" cy="18.5" r="2.5"/></svg>
        <span>Envío Exprés 24h</span>
    </div>
    <?php
}
add_action( 'woocommerce_after_shop_loop_item_title', 'nike_style_product_card_elements', 15 );

// ------------------------------------------------------------------
// 9. ELIMINAR SIDEBAR Y FORZAR DISEÑO FULL-WIDTH (LIMPIEZA DE BLOG)
// ------------------------------------------------------------------
function nike_style_remove_all_sidebars() {
    remove_action( 'storefront_sidebar', 'storefront_get_sidebar', 10 );
}
add_action( 'wp', 'nike_style_remove_all_sidebars' );

function nike_style_full_width_layout( $classes ) {
    if ( ! in_array( 'storefront-full-width-content', $classes, true ) ) {
        $classes[] = 'storefront-full-width-content';
    }
    if ( ! in_array( 'storefront-align-wide', $classes, true ) ) {
        $classes[] = 'storefront-align-wide';
    }
    return $classes;
}
add_filter( 'body_class', 'nike_style_full_width_layout' );

function nike_style_hide_home_title() {
    if ( is_front_page() ) {
        remove_action( 'storefront_page', 'storefront_page_header', 10 );
    }
}
add_action( 'woocommerce_before_main_content', 'nike_style_hide_home_title', 5 );

// Desregistrar widgets de blog
add_action( 'widgets_init', function() {
    unregister_widget( 'WP_Widget_Recent_Posts' );
    unregister_widget( 'WP_Widget_Recent_Comments' );
    unregister_widget( 'WP_Widget_Archives' );
    unregister_widget( 'WP_Widget_Categories' );
    unregister_widget( 'WP_Widget_Meta' );
    unregister_widget( 'WP_Widget_Tag_Cloud' );
    unregister_widget( 'WP_Widget_Calendar' );
    unregister_widget( 'WP_Widget_Pages' );
}, 11 );

// ------------------------------------------------------------------
// 10. NEWSLETTER & FOOTER ALTA GAMA DE 4 COLUMNAS CON BADGES CHILENOS
// ------------------------------------------------------------------

// Eliminar elementos por defecto de Storefront en el Footer
add_action( 'init', function() {
    remove_action( 'storefront_footer', 'storefront_credit', 20 );
    remove_action( 'storefront_footer', 'storefront_footer_widgets', 10 );
} );

function nike_style_newsletter_and_footer() {
    $shop_url = function_exists( 'wc_get_page_permalink' ) ? wc_get_page_permalink( 'shop' ) : home_url( '/tienda' );
    ?>
    <div class="nike-footer-wrapper">
        <!-- Tarjeta Flotante Newsletter Captación (Integrada sin cortes) -->
        <div class="nike-newsletter-card-wrap">
            <div class="nike-newsletter-card">
                <div class="nike-newsletter-content">
                    <span class="nike-newsletter-badge">BENEFICIO EXCLUSIVO</span>
                    <h2 class="nike-newsletter-title">Únete a la experiencia Tienda Chile</h2>
                    <p class="nike-newsletter-subtitle">Recibe <strong>10% DCTO en tu primera compra</strong> + acceso preferencial a colecciones limitadas.</p>
                </div>
                <form class="nike-newsletter-form" onsubmit="event.preventDefault(); nikeSubscribeNewsletter(this);">
                    <div class="nike-newsletter-input-wrap">
                        <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" class="nike-mail-icon"><path d="M4 4h16c1.1 0 2 .9 2 2v12c0 1.1-.9 2-2 2H4c-1.1 0-2-.9-2-2V6c0-1.1.9-2 2-2z"/><polyline points="22,6 12,13 2,6"/></svg>
                        <input type="email" placeholder="Tu correo electrónico..." required class="nike-newsletter-input" />
                        <button type="submit" class="nike-newsletter-btn">
                            <span>Obtener 10% DCTO</span>
                            <svg width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5"><line x1="5" y1="12" x2="19" y2="12"/><polyline points="12 5 19 12 12 19"/></svg>
                        </button>
                    </div>
                </form>
                <div id="nike-newsletter-msg" class="nike-newsletter-msg" style="display:none;">
                    🎉 ¡Bienvenido! Te has suscrito exitosamente. Usa el cupón <strong>CHILE10</strong> al finalizar tu compra.
                </div>
            </div>
        </div>

        <!-- Footer Ultra Premium 4 Columnas -->
        <div class="nike-footer-main">
            <div class="nike-footer-grid">
                <!-- Columna 1: Brand & Redes -->
                <div class="nike-footer-col nike-footer-brand-col">
                    <a href="<?php echo esc_url( home_url( '/' ) ); ?>" class="nike-footer-logo-link">
                        <?php echo nike_style_get_svg_logo('footer'); ?>
                    </a>
                    <p class="nike-footer-tagline">Tu tienda online oficial de confianza en Chile. Productos exclusivos de alta gama con garantía legal y despacho exprés nacional.</p>
                    <div class="nike-footer-social-handles">
                        <a href="https://www.instagram.com" target="_blank" rel="noopener" class="nike-footer-social-pill">
                            <svg width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><rect x="2" y="2" width="20" height="20" rx="5" ry="5"/><path d="M16 11.37A4 4 0 1 1 12.63 8 4 4 0 0 1 16 11.37z"/><line x1="17.5" y1="6.5" x2="17.51" y2="6.5"/></svg>
                            <span>@tiendachile.cl</span>
                        </a>
                        <a href="https://www.tiktok.com" target="_blank" rel="noopener" class="nike-footer-social-pill">
                            <svg width="14" height="14" viewBox="0 0 24 24" fill="currentColor"><path d="M19.59 6.69a4.83 4.83 0 0 1-3.77-4.25V2h-3.45v13.67a2.89 2.89 0 0 1-5.2 1.74 2.89 2.89 0 0 1 2.31-4.64 2.93 2.93 0 0 1 .88.13V9.4a6.84 6.84 0 0 0-1-.05A6.33 6.33 0 0 0 5 20.1a6.34 6.34 0 0 0 10.86-4.43v-7a8.16 8.16 0 0 0 4.77 1.52v-3.4a4.85 4.85 0 0 1-1-.1z"/></svg>
                            <span>@tiendachile</span>
                        </a>
                    </div>
                </div>

                <!-- Columna 2: Navegación & Categorías -->
                <div class="nike-footer-col">
                    <h3 class="nike-footer-title">Colecciones</h3>
                    <ul class="nike-footer-menu">
                        <li><a href="<?php echo esc_url( nike_get_cat_url( 'belleza' ) ); ?>">Belleza & Cuidado Personal</a></li>
                        <li><a href="<?php echo esc_url( nike_get_cat_url( 'tecnologia' ) ); ?>">Tecnología Premium</a></li>
                        <li><a href="<?php echo esc_url( nike_get_cat_url( 'estilo-de-vida' ) ); ?>">Estilo de Vida</a></li>
                        <li><a href="<?php echo esc_url( $shop_url ); ?>">Catálogo Completo 2026</a></li>
                        <li><a href="#nike-featured-section">Ofertas Destacadas -25% DCTO</a></li>
                    </ul>
                </div>

                <!-- Columna 3: Información Legal & Políticas -->
                <div class="nike-footer-col">
                    <h3 class="nike-footer-title">Políticas & Seguridad</h3>
                    <ul class="nike-footer-menu">
                        <li><a href="javascript:void(0)" onclick="nikeOpenModal('privacy')">Política de Privacidad</a></li>
                        <li><a href="javascript:void(0)" onclick="nikeOpenModal('shipping')">Tiempos y Zonas de Envío</a></li>
                        <li><a href="javascript:void(0)" onclick="nikeOpenModal('returns')">Garantía Oficial 6 Meses</a></li>
                        <li><a href="javascript:void(0)" onclick="nikeOpenModal('terms')">Términos y Condiciones</a></li>
                    </ul>
                </div>

                <!-- Columna 4: Atención & Medios de Pago / Envíos -->
                <div class="nike-footer-col">
                    <h3 class="nike-footer-title">Atención & Sellos</h3>
                    <div class="nike-footer-contact">
                        <a href="https://wa.me/56912345678" target="_blank" rel="noopener" class="nike-footer-wa-box">
                            <div class="nike-footer-wa-icon">
                                <svg width="20" height="20" viewBox="0 0 24 24" fill="currentColor"><path d="M17.472 14.382c-.297-.149-1.758-.867-2.03-.967-.273-.099-.471-.148-.67.15-.197.297-.767.966-.94 1.164-.173.199-.347.223-.644.075-.297-.15-1.255-.463-2.39-1.475-.883-.788-1.48-1.761-1.653-2.059-.173-.297-.018-.458.13-.606.134-.133.298-.347.446-.52.149-.174.198-.298.298-.497.099-.198.05-.371-.025-.52-.075-.149-.669-1.612-.916-2.207-.242-.579-.487-.501-.669-.51l-.57-.01c-.198 0-.52.074-.792.372s-1.04 1.016-1.04 2.479 1.065 2.876 1.213 3.074c.149.198 2.095 3.2 5.076 4.487.709.306 1.263.489 1.694.626.712.226 1.36.194 1.872.118.572-.085 1.758-.719 2.006-1.413.248-.694.248-1.289.173-1.413-.074-.124-.272-.198-.57-.347m-5.421 7.403h-.004a9.87 9.87 0 01-5.031-1.378l-.361-.214-3.741.982.998-3.648-.235-.374a9.86 9.86 0 01-1.51-5.26c.001-5.45 4.436-9.884 9.888-9.884 2.64 0 5.122 1.03 6.988 2.898a9.825 9.825 0 012.893 6.994c-.003 5.45-4.437 9.884-9.885 9.884m8.413-18.297A11.815 11.815 0 0012.05 0C5.495 0 .16 5.335.157 11.892c0 2.096.547 4.142 1.588 5.945L.057 24l6.305-1.654a11.882 11.882 0 005.683 1.448h.005c6.554 0 11.89-5.335 11.893-11.893a11.821 11.821 0 00-3.48-8.413Z"/></svg>
                            </div>
                            <div class="nike-footer-wa-info">
                                <strong>Soporte WhatsApp 24/7</strong>
                                <span>+56 9 1234 5678</span>
                            </div>
                        </a>
                    </div>
                    <div class="nike-footer-trust-mini">
                        <span class="nike-trust-mini-label">Medios de Pago Seguros:</span>
                        <div class="nike-trust-badges">
                            <span class="nike-badge">Webpay Plus</span>
                            <span class="nike-badge">Transbank</span>
                            <span class="nike-badge">CuentaRUT</span>
                        </div>
                    </div>
                    <div class="nike-footer-trust-mini" style="margin-top: 12px;">
                        <span class="nike-trust-mini-label">Despachos Exprés Chile:</span>
                        <div class="nike-trust-badges">
                            <span class="nike-badge">Chilexpress</span>
                            <span class="nike-badge">Starken</span>
                            <span class="nike-badge">Blue Express</span>
                        </div>
                    </div>
                </div>
            </div>

            <div class="nike-footer-bottom">
                <p>© <?php echo esc_html( date('Y') ); ?> TIENDA CHILE OFICIAL • Todos los derechos reservados. Experiencia E-Commerce de Lujo 🇨🇱</p>
            </div>
        </div>
    </div>
    <script>
    function nikeSubscribeNewsletter(form) {
        var msg = document.getElementById('nike-newsletter-msg');
        if (msg) {
            msg.style.display = 'block';
            form.reset();
        }
    }
    </script>
    <?php
}
add_action( 'storefront_footer', 'nike_style_newsletter_and_footer', 15 );

// ------------------------------------------------------------------
// 11. BANNER DE COOKIES Y POPUPS DE POLÍTICAS LEGALES
// ------------------------------------------------------------------
function nike_style_legal_and_cookies_footer() {
    ?>
    <!-- Banner de Cookies -->
    <div id="nike-cookie-banner" class="nike-cookie-banner">
        <div class="nike-cookie-content">
            <span class="nike-cookie-icon">🍪</span>
            <p class="nike-cookie-text">
                En <strong>Tienda Chile</strong> utilizamos cookies para mejorar tu experiencia de compra, personalizar ofertas y analizar el tráfico de navegación. Al continuar navegando aceptas nuestra <a href="javascript:void(0)" onclick="nikeOpenModal('privacy')">Política de Privacidad</a>.
            </p>
            <div class="nike-cookie-actions">
                <button type="button" class="nike-cookie-btn-accept" onclick="nikeAcceptCookies()">Aceptar y Continuar</button>
                <button type="button" class="nike-cookie-btn-more" onclick="nikeOpenModal('privacy')">Más Información</button>
            </div>
        </div>
    </div>

    <!-- Modal de Políticas Legales -->
    <div id="nike-legal-modal" class="nike-legal-modal" style="display: none;">
        <div class="nike-modal-overlay" onclick="nikeCloseModal()"></div>
        <div class="nike-modal-container">
            <button type="button" class="nike-modal-close" onclick="nikeCloseModal()">&times;</button>
            <div class="nike-modal-body" id="nike-modal-body-content">
                <!-- Contenido dinámico -->
            </div>
        </div>
    </div>

    <script>
    function nikeAcceptCookies() {
        localStorage.setItem('nike_cookie_consent', 'true');
        var banner = document.getElementById('nike-cookie-banner');
        if (banner) banner.style.display = 'none';
    }

    document.addEventListener('DOMContentLoaded', function() {
        if (localStorage.getItem('nike_cookie_consent') === 'true') {
            var banner = document.getElementById('nike-cookie-banner');
            if (banner) banner.style.display = 'none';
        }
    });

    var nikeModalData = {
        privacy: `
            <h2>🔒 Política de Privacidad y Protección de Datos</h2>
            <p>En <strong>Tienda Chile</strong> (conforme a la Ley N° 19.628 sobre Protección de la Vida Privada de Chile), nos comprometemos solemnemente a resguardar la confidencialidad de tus datos personales.</p>
            <h3>1. Uso de la Información</h3>
            <p>Los datos ingresados durante el proceso de compra (Nombre, RUT, Dirección, Correo y Teléfono) son utilizados exclusivamente para la facturación, emisión de boleta electrónica y gestión de despacho a través de Chilexpress, Starken o Blue Express.</p>
            <h3>2. Seguridad en Pagos</h3>
            <p>No almacenamos datos de tarjetas de crédito o débito. Todas las transacciones son procesadas a través de servidores seguros cifrados de Webpay Plus (Transbank) y Mercado Pago.</p>
        `,
        shipping: `
            <h2>🚚 Política de Envíos y Entregas (Chile 🇨🇱)</h2>
            <p>Realizamos despachos a todas las regiones y comunas de Chile de Arica a Punta Arenas.</p>
            <h3>1. Plazos de Entrega</h3>
            <ul>
                <li><strong>Región Metropolitana:</strong> Entregas en 24 a 48 horas hábiles.</li>
                <li><strong>Otras Regiones:</strong> Entregas en 2 a 4 días hábiles dependiendo del courier elegido (Chilexpress, Starken, Blue Express).</li>
            </ul>
            <h3>2. Envío Gratis</h3>
            <p>Ofrecemos <strong>Envío Gratuito</strong> para compras superiores a $50.000 CLP a todo el territorio nacional.</p>
        `,
        returns: `
            <h2>🔄 Política de Devoluciones, Garantía y Derecho a Retracto</h2>
            <p>Cumplimos estrictamente con la Ley N° 19.496 sobre Protección de los Derechos de los Consumidores en Chile.</p>
            <h3>1. Derecho a Retracto (10 días)</h3>
            <p>Tienes un plazo de 10 días desde recibido el producto para retractarte de la compra, siempre que el producto esté sin uso, con sus sellos y empaque original intacto.</p>
            <h3>2. Garantía Legal (6 meses)</h3>
            <p>Todos nuestros productos cuentan con garantía legal de 6 meses frente a fallas o defectos de fabricación. Puedes solicitar cambio, reparación gratuita o devolución del dinero.</p>
        `,
        terms: `
            <h2>📜 Términos y Condiciones Generales</h2>
            <p>Al realizar una compra en Tienda Chile aceptas las condiciones de venta, precios exhibidos en CLP (con IVA 19% incluido) y emisión de boleta o factura electrónica oficial.</p>
        `
    };

    function nikeOpenModal(key) {
        var modal = document.getElementById('nike-legal-modal');
        var body = document.getElementById('nike-modal-body-content');
        if (modal && body && nikeModalData[key]) {
            body.innerHTML = nikeModalData[key];
            modal.style.display = 'flex';
        }
    }

    function nikeCloseModal() {
        var modal = document.getElementById('nike-legal-modal');
        if (modal) modal.style.display = 'none';
    }
    </script>
    <?php
}
add_action( 'wp_footer', 'nike_style_legal_and_cookies_footer', 30 );

// ------------------------------------------------------------------
// 12. BARRA DE NAVEGACIÓN INFERIOR MÓVIL (MOBILE BOTTOM BAR) & FRAGMENTOS DE CARRITO
// ------------------------------------------------------------------
function nike_style_mobile_bottom_bar() {
    $shop_url    = function_exists( 'wc_get_page_permalink' ) ? wc_get_page_permalink( 'shop' ) : home_url( '/tienda' );
    $cart_url    = function_exists( 'wc_get_page_permalink' ) ? wc_get_page_permalink( 'cart' ) : home_url( '/carrito' );
    $account_url = function_exists( 'wc_get_page_permalink' ) ? wc_get_page_permalink( 'myaccount' ) : home_url( '/mi-cuenta' );
    $cart_count  = ( function_exists( 'WC' ) && WC()->cart ) ? WC()->cart->get_cart_contents_count() : 0;
    ?>
    <!-- Barra de Navegación Inferior Móvil (Mobile Bottom Bar) -->
    <nav class="nike-mobile-bottom-bar" aria-label="Navegación Móvil Rápida">
        <a href="<?php echo esc_url( home_url( '/' ) ); ?>" class="nike-mob-item <?php echo is_front_page() ? 'active' : ''; ?>" title="Inicio">
            <div class="nike-mob-icon">
                <svg width="22" height="22" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M3 9l9-7 9 7v11a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2z"/><polyline points="9 22 9 12 15 12 15 22"/></svg>
            </div>
            <span class="nike-mob-label">Inicio</span>
        </a>
        <a href="<?php echo esc_url( $shop_url ); ?>" class="nike-mob-item <?php echo ( function_exists('is_shop') && is_shop() ) ? 'active' : ''; ?>" title="Tienda">
            <div class="nike-mob-icon">
                <svg width="22" height="22" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M6 2L3 6v14a2 2 0 0 0 2 2h14a2 2 0 0 0 2-2V6l-3-4z"/><line x1="3" y1="6" x2="21" y2="6"/><path d="M16 10a4 4 0 0 1-8 0"/></svg>
            </div>
            <span class="nike-mob-label">Tienda</span>
        </a>
        <button type="button" class="nike-mob-item nike-mob-search-trigger" onclick="nikeToggleMobileSearch()" aria-label="Buscar productos">
            <div class="nike-mob-icon">
                <svg width="22" height="22" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><circle cx="11" cy="11" r="8"/><line x1="21" y1="21" x2="16.65" y2="16.65"/></svg>
            </div>
            <span class="nike-mob-label">Buscar</span>
        </button>
        <a href="<?php echo esc_url( $cart_url ); ?>" class="nike-mob-item nike-mob-cart-item <?php echo ( function_exists('is_cart') && is_cart() ) ? 'active' : ''; ?>" title="Carrito de Compras">
            <div class="nike-mob-icon nike-mob-cart-icon-wrap">
                <svg width="22" height="22" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><circle cx="9" cy="21" r="1"/><circle cx="20" cy="21" r="1"/><path d="M1 1h4l2.68 13.39a2 2 0 0 0 2 1.61h9.72a2 2 0 0 0 2-1.61L23 6H6"/></svg>
                <span class="nike-mobile-cart-badge"><?php echo esc_html( $cart_count ); ?></span>
            </div>
            <span class="nike-mob-label">Carrito</span>
        </a>
        <a href="<?php echo esc_url( $account_url ); ?>" class="nike-mob-item <?php echo ( function_exists('is_account_page') && is_account_page() ) ? 'active' : ''; ?>" title="Mi Cuenta">
            <div class="nike-mob-icon">
                <svg width="22" height="22" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"/><circle cx="12" cy="7" r="4"/></svg>
            </div>
            <span class="nike-mob-label">Mi Cuenta</span>
        </a>
    </nav>

    <script>
    function nikeToggleMobileSearch() {
        var searchInput = document.querySelector('.site-header .site-search input[type="search"]') || document.querySelector('.site-header input.search-field');
        if (searchInput) {
            searchInput.scrollIntoView({ behavior: 'smooth', block: 'center' });
            setTimeout(function() {
                searchInput.focus();
            }, 350);
        }
    }
    </script>
    <?php
}
add_action( 'wp_footer', 'nike_style_mobile_bottom_bar', 25 );

// Fragmentos AJAX de WooCommerce para actualizar el contador del carrito en móviles automáticamente
add_filter( 'woocommerce_add_to_cart_fragments', function( $fragments ) {
    $cart_count = ( function_exists( 'WC' ) && WC()->cart ) ? WC()->cart->get_cart_contents_count() : 0;
    $fragments['span.nike-mobile-cart-badge'] = '<span class="nike-mobile-cart-badge">' . esc_html( $cart_count ) . '</span>';
    return $fragments;
} );

// ------------------------------------------------------------------
// 13. TRADUCCIÓN AL ESPAÑOL CHILENO Y LIMPIEZA DE TEXTOS EN CHECKOUT Y CARRITO
// ------------------------------------------------------------------
add_filter( 'woocommerce_get_privacy_policy_text', 'tienda_chile_checkout_privacy_text', 20, 2 );
function tienda_chile_checkout_privacy_text( $text, $type ) {
    if ( 'checkout' === $type ) {
        $text = 'Tus datos personales se utilizarán para procesar tu pedido, mejorar tu experiencia en este sitio web y para otros fines descritos en nuestra <a href="javascript:void(0)" onclick="nikeOpenModal(\'privacy\')" class="woocommerce-privacy-policy-link">política de privacidad</a>.';
    }
    return $text;
}

add_filter( 'gettext', 'tienda_chile_translate_woocommerce_strings', 20, 3 );
function tienda_chile_translate_woocommerce_strings( $translated_text, $text, $domain ) {
    if ( 'woocommerce' === $domain || empty( $domain ) || false !== strpos( $text, 'Your personal data' ) ) {
        switch ( $text ) {
            case 'Billing details':
                return 'Datos de Despacho y Facturación';
            case 'Shipping details':
                return 'Dirección de Despacho';
            case 'Additional information':
                return 'Información Adicional';
            case 'Order notes':
                return 'Notas del pedido (opcional)';
            case 'Notes about your order, e.g. special notes for delivery.':
                return 'Indicaciones especiales para la entrega (ej: dejar en conserjería).';
            case 'Your order':
                return 'Resumen del Pedido';
            case 'Place order':
                return 'Realizar el Pedido';
            case 'Have a coupon?':
                return '¿Tienes un cupón de descuento?';
            case 'Click here to enter your code':
                return 'Haz clic aquí para ingresarlo';
            case 'If you have a coupon code, please apply it below.':
                return 'Si posees un código promocional, ingrésalo a continuación.';
            case 'Apply coupon':
                return 'Aplicar Cupón';
            case 'Update cart':
                return 'Actualizar Carrito';
            case 'Proceed to checkout':
                return 'Finalizar Compra Segura';
            case 'Return to shop':
                return 'Volver a la Tienda';
            case 'Your cart is currently empty.':
                return 'Tu carrito de compras está vacío.';
            case 'Product':
                return 'Producto';
            case 'Subtotal':
                return 'Subtotal';
            case 'Total':
                return 'Total a Pagar';
        }
    }
    return $translated_text;
}

// ------------------------------------------------------------------
// 14. BARRA DE ENVÍO GRATIS MINIMALISTA Y SELLER BADGES DE CARRITO
// ------------------------------------------------------------------
add_action( 'woocommerce_before_cart', 'tienda_chile_cart_free_shipping_notice', 5 );
function tienda_chile_cart_free_shipping_notice() {
    if ( ! function_exists( 'WC' ) || ! WC()->cart || WC()->cart->is_empty() ) return;
    
    $free_shipping_limit = 50000;
    $subtotal = WC()->cart->get_subtotal();
    $subtotal_val = floatval( preg_replace( '/[^0-9.]/', '', $subtotal ) );
    if ( $subtotal_val <= 0 ) {
        $subtotal_val = (float) WC()->cart->get_cart_contents_total();
    }
    
    $diff = $free_shipping_limit - $subtotal_val;
    $percentage = min( 100, max( 0, round( ( $subtotal_val / $free_shipping_limit ) * 100 ) ) );
    
    ?>
    <div class="nike-cart-free-shipping-box">
        <div class="nike-cart-fs-header">
            <span class="nike-cart-fs-icon"><?php echo ( $diff <= 0 ) ? '✨' : '🚚'; ?></span>
            <div class="nike-cart-fs-text">
                <?php if ( $diff <= 0 ) : ?>
                    <strong>¡Envío Gratis Garantizado a todo Chile! 🇨🇱</strong>
                <?php else : ?>
                    Agrega <strong>$<?php echo esc_html( number_format( $diff, 0, ',', '.' ) ); ?> CLP</strong> más para obtener <strong>ENVÍO GRATIS</strong>.
                <?php endif; ?>
            </div>
        </div>
        <div class="nike-cart-fs-bar-bg">
            <div class="nike-cart-fs-bar-fill" style="width: <?php echo intval( $percentage ); ?>%;"></div>
        </div>
    </div>
    <?php
}

add_action( 'woocommerce_after_cart_totals', 'tienda_chile_cart_trust_badges', 10 );
function tienda_chile_cart_trust_badges() {
    ?>
    <div class="nike-cart-trust-container">
        <div class="nike-cart-trust-title">
            <svg width="15" height="15" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5"><path d="M12 22s8-4 8-10V5l-8-3-8 3v7c0 6 8 10 8 10z"/></svg>
            <span>Compra 100% Protegida y Garantizada</span>
        </div>
        <div class="nike-cart-trust-badges">
            <span class="nike-cart-badge">⚡ Despacho 24-48h</span>
            <span class="nike-cart-badge">🔒 Cifrado SSL 256-bit</span>
            <span class="nike-cart-badge">🔄 6 Meses Garantía</span>
        </div>
        <div class="nike-cart-trust-payments">
            <span>Medios de Pago Oficiales Chile:</span>
            <div class="nike-cart-pay-icons">
                <span class="nike-pay-tag">Webpay Plus</span>
                <span class="nike-pay-tag">Transbank</span>
                <span class="nike-pay-tag">CuentaRUT</span>
            </div>
        </div>
    </div>
    <?php
}

// ------------------------------------------------------------------
// 15. CHECKOUT STEP HEADER Y MÉTODOS DE PAGO CHILENOS
// ------------------------------------------------------------------

// Indicador de Pasos de Checkout Minimalista
add_action( 'woocommerce_before_checkout_form', 'tienda_chile_checkout_steps_header', 5 );
function tienda_chile_checkout_steps_header() {
    $cart_url = function_exists( 'wc_get_page_permalink' ) ? wc_get_page_permalink( 'cart' ) : home_url( '/carrito' );
    ?>
    <div class="nike-checkout-header-banner">
        <div class="nike-checkout-banner-info">
            <span class="nike-checkout-step-badge">Paso 2 de 2</span>
            <h1 class="nike-checkout-banner-title">Paso 2 de 2: Datos de Despacho & Pago Seguro 🔒</h1>
        </div>
        <div class="nike-checkout-steps-bar">
            <a href="<?php echo esc_url( $cart_url ); ?>" class="nike-step nike-step-done">
                <span class="nike-step-num">✓</span>
                <span class="nike-step-label">Carrito</span>
            </a>
            <span class="nike-step-chevron">›</span>
            <div class="nike-step nike-step-active">
                <span class="nike-step-num">2</span>
                <span class="nike-step-label">Despacho & Pago</span>
            </div>
            <span class="nike-step-chevron">›</span>
            <div class="nike-step nike-step-next">
                <span class="nike-step-num">3</span>
                <span class="nike-step-label">Confirmación</span>
            </div>
        </div>
    </div>
    <?php
}

// Optimización y Estilización de Campos del Formulario de Checkout para Chile
add_filter( 'woocommerce_checkout_fields', 'tienda_chile_custom_checkout_fields', 999 );
function tienda_chile_custom_checkout_fields( $fields ) {
    // 1. Campos de Facturación / Cliente (billing)
    if ( isset( $fields['billing'] ) ) {
        // Nombre
        if ( isset( $fields['billing']['billing_first_name'] ) ) {
            $fields['billing']['billing_first_name']['label']       = 'Nombre';
            $fields['billing']['billing_first_name']['placeholder'] = 'Tu nombre';
            $fields['billing']['billing_first_name']['priority']    = 10;
            $fields['billing']['billing_first_name']['class']       = array( 'form-row-first' );
        }
        // Apellido
        if ( isset( $fields['billing']['billing_last_name'] ) ) {
            $fields['billing']['billing_last_name']['label']       = 'Apellido';
            $fields['billing']['billing_last_name']['placeholder'] = 'Tu apellido';
            $fields['billing']['billing_last_name']['priority']    = 20;
            $fields['billing']['billing_last_name']['class']       = array( 'form-row-last' );
        }
        // RUT Chileno
        $fields['billing']['billing_rut'] = array(
            'type'        => 'text',
            'label'       => 'RUT (Ej: 12.345.678-9)',
            'placeholder' => '12.345.678-9',
            'required'    => true,
            'class'       => array( 'form-row-wide' ),
            'priority'    => 25,
        );
        // Dirección (Calle y Número)
        if ( isset( $fields['billing']['billing_address_1'] ) ) {
            $fields['billing']['billing_address_1']['label']       = 'Dirección (Calle y Número)';
            $fields['billing']['billing_address_1']['placeholder'] = 'Ej: Av. Providencia 1234';
            $fields['billing']['billing_address_1']['priority']    = 30;
            $fields['billing']['billing_address_1']['class']       = array( 'form-row-wide' );
        }
        // Depto / Casa / Oficina (Opcional)
        if ( isset( $fields['billing']['billing_address_2'] ) ) {
            $fields['billing']['billing_address_2']['label']       = 'Depto / Casa / Oficina (Opcional)';
            $fields['billing']['billing_address_2']['placeholder'] = 'Ej: Depto 402, Torre B';
            $fields['billing']['billing_address_2']['priority']    = 40;
            $fields['billing']['billing_address_2']['class']       = array( 'form-row-wide' );
        }
        // Región
        if ( isset( $fields['billing']['billing_state'] ) ) {
            $fields['billing']['billing_state']['label']    = 'Región';
            $fields['billing']['billing_state']['priority'] = 50;
            $fields['billing']['billing_state']['class']    = array( 'form-row-first' );
        }
        // Comuna
        if ( isset( $fields['billing']['billing_city'] ) ) {
            $fields['billing']['billing_city']['label']       = 'Comuna';
            $fields['billing']['billing_city']['placeholder'] = 'Ej: Las Condes, Santiago, Viña del Mar...';
            $fields['billing']['billing_city']['priority']    = 60;
            $fields['billing']['billing_city']['class']       = array( 'form-row-last' );
        }
        // Teléfono
        if ( isset( $fields['billing']['billing_phone'] ) ) {
            $fields['billing']['billing_phone']['label']       = 'Teléfono (WhatsApp / Contacto)';
            $fields['billing']['billing_phone']['placeholder'] = '+56 9 1234 5678';
            $fields['billing']['billing_phone']['priority']    = 70;
            $fields['billing']['billing_phone']['class']       = array( 'form-row-first' );
        }
        // Correo
        if ( isset( $fields['billing']['billing_email'] ) ) {
            $fields['billing']['billing_email']['label']       = 'Correo Electrónico';
            $fields['billing']['billing_email']['placeholder'] = 'tu@email.com';
            $fields['billing']['billing_email']['priority']    = 80;
            $fields['billing']['billing_email']['class']       = array( 'form-row-last' );
        }
        // Unset o hacer opcional Código Postal y Empresa
        if ( isset( $fields['billing']['billing_company'] ) ) {
            unset( $fields['billing']['billing_company'] );
        }
        if ( isset( $fields['billing']['billing_postcode'] ) ) {
            $fields['billing']['billing_postcode']['required'] = false;
            $fields['billing']['billing_postcode']['class']    = array( 'form-row-wide' );
            $fields['billing']['billing_postcode']['priority'] = 90;
        }
    }

    // 2. Ajustar campos de envío (shipping) en caso de activarse
    if ( isset( $fields['shipping'] ) ) {
        if ( isset( $fields['shipping']['shipping_first_name'] ) ) {
            $fields['shipping']['shipping_first_name']['label'] = 'Nombre';
            $fields['shipping']['shipping_first_name']['class'] = array( 'form-row-first' );
        }
        if ( isset( $fields['shipping']['shipping_last_name'] ) ) {
            $fields['shipping']['shipping_last_name']['label'] = 'Apellido';
            $fields['shipping']['shipping_last_name']['class'] = array( 'form-row-last' );
        }
        if ( isset( $fields['shipping']['shipping_address_1'] ) ) {
            $fields['shipping']['shipping_address_1']['label'] = 'Dirección (Calle y Número)';
            $fields['shipping']['shipping_address_1']['class'] = array( 'form-row-wide' );
        }
        if ( isset( $fields['shipping']['shipping_address_2'] ) ) {
            $fields['shipping']['shipping_address_2']['label'] = 'Depto / Casa / Oficina (Opcional)';
            $fields['shipping']['shipping_address_2']['class'] = array( 'form-row-wide' );
        }
        if ( isset( $fields['shipping']['shipping_state'] ) ) {
            $fields['shipping']['shipping_state']['label'] = 'Región';
            $fields['shipping']['shipping_state']['class'] = array( 'form-row-first' );
        }
        if ( isset( $fields['shipping']['shipping_city'] ) ) {
            $fields['shipping']['shipping_city']['label'] = 'Comuna';
            $fields['shipping']['shipping_city']['class'] = array( 'form-row-last' );
        }
        if ( isset( $fields['shipping']['shipping_company'] ) ) {
            unset( $fields['shipping']['shipping_company'] );
        }
        if ( isset( $fields['shipping']['shipping_postcode'] ) ) {
            $fields['shipping']['shipping_postcode']['required'] = false;
        }
    }

    return $fields;
}

// Guardar RUT en los metadatos del pedido
add_action( 'woocommerce_checkout_update_order_meta', function( $order_id ) {
    if ( ! empty( $_POST['billing_rut'] ) ) {
        update_post_meta( $order_id, '_billing_rut', sanitize_text_field( $_POST['billing_rut'] ) );
        update_post_meta( $order_id, 'RUT', sanitize_text_field( $_POST['billing_rut'] ) );
    }
} );

// Mostrar RUT en el detalle del pedido en WP Admin
add_action( 'woocommerce_admin_order_data_after_billing_address', function( $order ) {
    $rut = get_post_meta( $order->get_id(), '_billing_rut', true );
    if ( $rut ) {
        echo '<p><strong>RUT:</strong> ' . esc_html( $rut ) . '</p>';
    }
}, 10, 1 );

// Botón de Pago con Candado de Seguridad
add_filter( 'woocommerce_order_button_html', function( $button_html ) {
    return '<button type="submit" class="button alt" name="woocommerce_checkout_place_order" id="place_order" value="Realizar el Pedido" data-value="Realizar el Pedido">REALIZAR EL PEDIDO 🔒</button>';
} );

// Sellos de confianza y seguridad bajo el botón de checkout
add_action( 'woocommerce_review_order_after_submit', function() {
    ?>
    <div class="nike-checkout-trust-footer">
        <div class="nike-trust-badge-row">
            <span class="nike-trust-badge">🔒 Cifrado SSL 256-bit</span>
            <span class="nike-trust-badge">🛡️ Compra Protegida</span>
            <span class="nike-trust-badge">🇨🇱 Despacho Exprés</span>
        </div>
    </div>
    <?php
} );

// Inicializar clases de pasarelas de pago antes de registrarlas
function tienda_chile_init_custom_gateways() {
    if ( ! class_exists( 'WC_Payment_Gateway' ) ) return;

    // Pasarela 1: Webpay Plus / Transbank / Mercado Pago
    if ( ! class_exists( 'WC_Gateway_Webpay_Chile' ) ) {
        class WC_Gateway_Webpay_Chile extends WC_Payment_Gateway {
            public function __construct() {
                $this->id                 = 'webpay_chile';
                $this->icon               = '';
                $this->has_fields         = false;
                $this->method_title       = 'Webpay Plus / Transbank / Mercado Pago';
                $this->method_description = 'Permite pagar con Tarjetas de Débito (Redcompra), Crédito y Prepago en Chile.';

                $this->title       = '💳 Webpay Plus • Transbank • Mercado Pago';
                $this->description = 'Paga de forma instantánea y 100% segura con tu tarjeta de Débito (Redcompra), Crédito o Mercado Pago.';

                $this->init_form_fields();
                $this->init_settings();
                $this->enabled = 'yes';
            }

            public function process_payment( $order_id ) {
                $order = wc_get_order( $order_id );
                if ( $order ) {
                    $order->payment_complete();
                }
                if ( function_exists( 'WC' ) && WC()->cart ) {
                    WC()->cart->empty_cart();
                }
                return array(
                    'result'   => 'success',
                    'redirect' => $this->get_return_url( $order ),
                );
            }
        }
    }

    // Pasarela 2: Transferencia Bancaria Directa / CuentaRUT
    if ( ! class_exists( 'WC_Gateway_CuentaRUT_Chile' ) ) {
        class WC_Gateway_CuentaRUT_Chile extends WC_Payment_Gateway {
            public function __construct() {
                $this->id                 = 'cuentarut_chile';
                $this->icon               = '';
                $this->has_fields         = false;
                $this->method_title       = 'Transferencia BancoEstado / CuentaRUT';
                $this->method_description = 'Permite pagar vía transferencia electrónica directa a CuentaRUT o BancoEstado.';

                $this->title       = '🏦 Transferencia BancoEstado / CuentaRUT';
                $this->description = 'Realiza una transferencia electrónica a nuestra CuentaRUT Oficial. Recibirás los datos bancarios al confirmar tu pedido.';

                $this->init_form_fields();
                $this->init_settings();
                $this->enabled = 'yes';
            }

            public function process_payment( $order_id ) {
                $order = wc_get_order( $order_id );
                if ( $order ) {
                    $order->update_status( 'on-hold', __( 'A la espera de transferencia bancaria.', 'woocommerce' ) );
                }
                if ( function_exists( 'WC' ) && WC()->cart ) {
                    WC()->cart->empty_cart();
                }
                return array(
                    'result'   => 'success',
                    'redirect' => $this->get_return_url( $order ),
                );
            }
        }
    }
}
add_action( 'init', 'tienda_chile_init_custom_gateways', 0 );

// Registro de Pasarelas de Pago Oficiales para Chile (Webpay Plus & Transferencia CuentaRUT)
add_filter( 'woocommerce_payment_gateways', 'tienda_chile_register_custom_gateways' );
function tienda_chile_register_custom_gateways( $gateways ) {
    if ( class_exists( 'WC_Gateway_Webpay_Chile' ) ) {
        $gateways[] = 'WC_Gateway_Webpay_Chile';
    }
    if ( class_exists( 'WC_Gateway_CuentaRUT_Chile' ) ) {
        $gateways[] = 'WC_Gateway_CuentaRUT_Chile';
    }
    return $gateways;
}

// Garantizar tarifas de despacho a todo Chile en el Carrito y Checkout
add_filter( 'woocommerce_package_rates', 'tienda_chile_custom_shipping_rates', 100, 2 );
function tienda_chile_custom_shipping_rates( $rates, $package ) {
    if ( empty( $rates ) ) {
        $cart_subtotal = ( function_exists( 'WC' ) && WC()->cart ) ? WC()->cart->get_subtotal() : 0;
        
        $rate_id = ( $cart_subtotal >= 50000 ) ? 'free_shipping_chile' : 'flat_rate_chile';
        $label   = ( $cart_subtotal >= 50000 ) ? '🚚 Envío Gratis Garantizado a todo Chile' : '🇨🇱 Despacho Exprés Chile (Starken / Chilexpress)';
        $cost    = ( $cart_subtotal >= 50000 ) ? 0 : 3990;

        $rates[ $rate_id ] = new WC_Shipping_Rate(
            $rate_id,
            $label,
            $cost,
            array(),
            'flat_rate'
        );
    }
    return $rates;
}

// Ocultar campo de calle y código postal en la Calculadora de Envíos del Carrito (solo solicitar Región y Comuna)
add_filter( 'woocommerce_shipping_calculator_enable_address', '__return_false', 999 );
add_filter( 'woocommerce_shipping_calculator_enable_postcode', '__return_false', 999 );

// Limpiar dirección de prueba heredada en la sesión del cliente
add_action( 'template_redirect', function() {
    if ( function_exists( 'WC' ) && WC()->customer ) {
        $addr = (string) WC()->customer->get_shipping_address();
        if ( strpos( strtolower( $addr ), 'suspiros' ) !== false ) {
            WC()->customer->set_shipping_address( '' );
            WC()->customer->set_shipping_address_1( '' );
            WC()->customer->set_shipping_address_2( '' );
        }
    }
} );