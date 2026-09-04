<?php
/**
 * Nike Style - Tema hijo de Storefront
 * Estética de E-commerce Moderno, Elegante, Lujoso y de Alta Conversión (TIENDA CHILE)
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
// 3. MENÚS Y NAVEGACIÓN
// ------------------------------------------------------------------
function nike_style_register_menus() {
    register_nav_menus( array(
        'primary'        => 'Menú principal',
        'nike-secondary' => 'Menú superior (secundario)'
    ) );
}
add_action( 'after_setup_theme', 'nike_style_register_menus' );

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
remove_action( 'storefront_header', 'storefront_site_branding', 20 );
add_action( 'storefront_header', 'nike_style_custom_site_branding', 20 );

add_filter( 'storefront_site_title_or_logo', function() {
    return '<a href="' . esc_url( home_url( '/' ) ) . '" class="nike-logo-link" rel="home">' . nike_style_get_svg_logo('header') . '</a>';
} );

// ------------------------------------------------------------------
// 5. BARRA SUPERIOR DE ANUNCIO (TOPBAR) CON REDES SOCIALES
// ------------------------------------------------------------------
function nike_style_top_bar() {
    ?>
    <div class="nike-topbar">
        <div class="nike-topbar-content">
            <div class="nike-topbar-promo">
                <span class="nike-topbar-badge">OFERTAS DE HOY</span>
                <span>⚡ Envío gratis por compras sobre $50.000 CLP &nbsp;|&nbsp; Despacho a todo Chile 🇨🇱</span>
            </div>
            <div class="nike-topbar-social">
                <span class="topbar-social-label">Síguenos:</span>
                <a href="https://www.instagram.com" target="_blank" rel="noopener" aria-label="Instagram @tiendachile.cl">
                    <svg width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><rect x="2" y="2" width="20" height="20" rx="5" ry="5"/><path d="M16 11.37A4 4 0 1 1 12.63 8 4 4 0 0 1 16 11.37z"/><line x1="17.5" y1="6.5" x2="17.51" y2="6.5"/></svg>
                    <span>@tiendachile.cl</span>
                </a>
                <a href="https://www.tiktok.com" target="_blank" rel="noopener" aria-label="TikTok @tiendachile">
                    <svg width="14" height="14" viewBox="0 0 24 24" fill="currentColor"><path d="M19.59 6.69a4.83 4.83 0 0 1-3.77-4.25V2h-3.45v13.67a2.89 2.89 0 0 1-5.2 1.74 2.89 2.89 0 0 1 2.31-4.64 2.93 2.93 0 0 1 .88.13V9.4a6.84 6.84 0 0 0-1-.05A6.33 6.33 0 0 0 5 20.1a6.34 6.34 0 0 0 10.86-4.43v-7a8.16 8.16 0 0 0 4.77 1.52v-3.4a4.85 4.85 0 0 1-1-.1z"/></svg>
                    <span>@tiendachile</span>
                </a>
                <a href="https://www.facebook.com" target="_blank" rel="noopener" aria-label="Facebook Tienda Chile Oficial">
                    <svg width="14" height="14" viewBox="0 0 24 24" fill="currentColor"><path d="M22 12c0-5.52-4.48-10-10-10S2 6.48 2 12c0 4.84 3.44 8.87 8 9.8V15H8v-3h2V9.5C10 7.57 11.57 6 13.5 6H16v3h-2c-.55 0-1 .45-1 1v2h3l-.5 3H13v6.95c4.66-.6 8-4.44 8-9.15z"/></svg>
                    <span>Tienda Chile Oficial</span>
                </a>
            </div>
        </div>
    </div>
    <?php
}
add_action( 'storefront_before_header', 'nike_style_top_bar', 5 );

// Redes Sociales en el Header
function nike_style_social_header() {
    ?>
    <div class="nike-social-icons">
        <a href="https://www.instagram.com" target="_blank" rel="noopener" aria-label="Instagram @tiendachile.cl" class="nike-social" title="Instagram @tiendachile.cl">
            <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><rect x="2" y="2" width="20" height="20" rx="5" ry="5"/><path d="M16 11.37A4 4 0 1 1 12.63 8 4 4 0 0 1 16 11.37z"/><line x1="17.5" y1="6.5" x2="17.51" y2="6.5"/></svg>
        </a>
        <a href="https://www.tiktok.com" target="_blank" rel="noopener" aria-label="TikTok @tiendachile" class="nike-social" title="TikTok @tiendachile">
            <svg width="16" height="16" viewBox="0 0 24 24" fill="currentColor"><path d="M19.59 6.69a4.83 4.83 0 0 1-3.77-4.25V2h-3.45v13.67a2.89 2.89 0 0 1-5.2 1.74 2.89 2.89 0 0 1 2.31-4.64 2.93 2.93 0 0 1 .88.13V9.4a6.84 6.84 0 0 0-1-.05A6.33 6.33 0 0 0 5 20.1a6.34 6.34 0 0 0 10.86-4.43v-7a8.16 8.16 0 0 0 4.77 1.52v-3.4a4.85 4.85 0 0 1-1-.1z"/></svg>
        </a>
        <a href="https://www.facebook.com" target="_blank" rel="noopener" aria-label="Facebook Tienda Chile Oficial" class="nike-social" title="Facebook Tienda Chile Oficial">
            <svg width="16" height="16" viewBox="0 0 24 24" fill="currentColor"><path d="M22 12c0-5.52-4.48-10-10-10S2 6.48 2 12c0 4.84 3.44 8.87 8 9.8V15H8v-3h2V9.5C10 7.57 11.57 6 13.5 6H16v3h-2c-.55 0-1 .45-1 1v2h3l-.5 3H13v6.95c4.66-.6 8-4.44 8-9.15z"/></svg>
        </a>
        <a href="https://wa.me/56912345678" target="_blank" rel="noopener" aria-label="WhatsApp +56 9 1234 5678" class="nike-social nike-social-wa" title="Atención a Clientes WhatsApp (+56 9 1234 5678)">
            <svg width="16" height="16" viewBox="0 0 24 24" fill="currentColor"><path d="M17.472 14.382c-.297-.149-1.758-.867-2.03-.967-.273-.099-.471-.148-.67.15-.197.297-.767.966-.94 1.164-.173.199-.347.223-.644.075-.297-.15-1.255-.463-2.39-1.475-.883-.788-1.48-1.761-1.653-2.059-.173-.297-.018-.458.13-.606.134-.133.298-.347.446-.52.149-.174.198-.298.298-.497.099-.198.05-.371-.025-.52-.075-.149-.669-1.612-.916-2.207-.242-.579-.487-.501-.669-.51l-.57-.01c-.198 0-.52.074-.792.372s-1.04 1.016-1.04 2.479 1.065 2.876 1.213 3.074c.149.198 2.095 3.2 5.076 4.487.709.306 1.263.489 1.694.626.712.226 1.36.194 1.872.118.572-.085 1.758-.719 2.006-1.413.248-.694.248-1.289.173-1.413-.074-.124-.272-.198-.57-.347m-5.421 7.403h-.004a9.87 9.87 0 01-5.031-1.378l-.361-.214-3.741.982.998-3.648-.235-.374a9.86 9.86 0 01-1.51-5.26c.001-5.45 4.436-9.884 9.888-9.884 2.64 0 5.122 1.03 6.988 2.898a9.825 9.825 0 012.893 6.994c-.003 5.45-4.437 9.884-9.885 9.884m8.413-18.297A11.815 11.815 0 0012.05 0C5.495 0 .16 5.335.157 11.892c0 2.096.547 4.142 1.588 5.945L.057 24l6.305-1.654a11.882 11.882 0 005.683 1.448h.005c6.554 0 11.89-5.335 11.893-11.893a11.821 11.821 0 00-3.48-8.413Z"/></svg>
        </a>
    </div>
    <?php
}
add_action( 'storefront_header', 'nike_style_social_header', 60 );

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
// 7. HERO BANNER E IMÁGENES DESTACADAS (HOME PAGE)
// ------------------------------------------------------------------
function nike_get_cat_url( $slug ) {
    $term = get_term_by( 'slug', $slug, 'product_cat' );
    if ( $term && ! is_wp_error( $term ) ) {
        return get_term_link( $term );
    }
    return function_exists( 'wc_get_page_permalink' ) ? wc_get_page_permalink( 'shop' ) : home_url('/tienda');
}

function nike_style_render_homepage_elements() {
    if ( is_front_page() || is_home() ) {
        $theme_uri = get_stylesheet_directory_uri();
        $shop_url  = function_exists( 'wc_get_page_permalink' ) ? wc_get_page_permalink( 'shop' ) : home_url('/tienda');
        ?>
        <!-- Hero Banner Principal -->
        <section class="nike-hero-banner" style="background-image: linear-gradient(180deg, rgba(15, 23, 42, 0.65) 0%, rgba(15, 23, 42, 0.85) 100%), url('<?php echo esc_url( $theme_uri . '/images/hero_banner.jpg' ); ?>');">
            <div class="nike-hero-content">
                <span class="nike-hero-tag">⚡ COLECCIÓN 2026 | TIENDA CHILE</span>
                <h1 class="nike-hero-title">Estilo, Innovación & Clase Mundial</h1>
                <p class="nike-hero-subtitle">Descubre productos seleccionados de alta gama con despacho rápido a todo Chile y garantía oficial.</p>
                <div class="nike-hero-actions">
                    <a href="<?php echo esc_url( $shop_url ); ?>" class="nike-hero-btn nike-hero-btn-primary">Descubrir Colección ➔</a>
                    <a href="#nike-featured-section" class="nike-hero-btn nike-hero-btn-secondary">Ver Ofertas -25% DCTO</a>
                </div>
                <div class="nike-hero-highlights">
                    <div class="nike-highlight-item">
                        <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><rect x="1" y="3" width="15" height="13"/><polygon points="16 8 20 8 23 11 23 16 16 16 16 8"/><circle cx="5.5" cy="18.5" r="2.5"/><circle cx="18.5" cy="18.5" r="2.5"/></svg>
                        <span>Envío Exprés Chile 🇨🇱</span>
                    </div>
                    <div class="nike-highlight-item">
                        <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M12 22s8-4 8-10V5l-8-3-8 3v7c0 6 8 10 8 10z"/></svg>
                        <span>Webpay & Transbank</span>
                    </div>
                    <div class="nike-highlight-item">
                        <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M22 11.08V12a10 10 0 1 1-5.93-9.14"/><polyline points="22 4 12 14.01 9 11.01"/></svg>
                        <span>Garantía Oficial 100%</span>
                    </div>
                </div>
            </div>
        </section>

        <!-- Tarjetas de Categorías Destacadas -->
        <section id="nike-featured-section" class="nike-categories-section">
            <div class="nike-section-header">
                <span class="nike-section-badge">CATEGORÍAS DE LUJO</span>
                <h2 class="nike-section-title">Colecciones Destacadas</h2>
                <p class="nike-section-subtitle">Explora lo mejor en belleza, tecnología y moda con envío garantizado</p>
            </div>
            <div class="nike-cat-grid">
                <a href="<?php echo esc_url( nike_get_cat_url( 'belleza' ) ); ?>" class="nike-cat-card nike-cat-beauty" style="background-image: linear-gradient(180deg, rgba(15, 23, 42, 0.45) 0%, rgba(15, 23, 42, 0.85) 100%), url('<?php echo esc_url( $theme_uri . '/images/beauty.jpg' ); ?>');">
                    <div class="nike-cat-content">
                        <span class="nike-cat-tag">Skincare & Cosmética</span>
                        <h3>Belleza & Cuidado</h3>
                        <p>Fórmulas exclusivas y cuidado personal premium</p>
                        <span class="nike-cat-btn">Ver Productos ➔</span>
                    </div>
                </a>
                <a href="<?php echo esc_url( nike_get_cat_url( 'tecnologia' ) ); ?>" class="nike-cat-card nike-cat-tech" style="background-image: linear-gradient(180deg, rgba(15, 23, 42, 0.45) 0%, rgba(15, 23, 42, 0.85) 100%), url('<?php echo esc_url( $theme_uri . '/images/tech.jpg' ); ?>');">
                    <div class="nike-cat-content">
                        <span class="nike-cat-tag">Gadgets & Audio</span>
                        <h3>Tecnología Premium</h3>
                        <p>Audio de alta fidelidad y accesorios de vanguardia</p>
                        <span class="nike-cat-btn">Explorar Gadgets ➔</span>
                    </div>
                </a>
                <a href="<?php echo esc_url( nike_get_cat_url( 'estilo-de-vida' ) ); ?>" class="nike-cat-card nike-cat-lifestyle" style="background-image: linear-gradient(180deg, rgba(15, 23, 42, 0.45) 0%, rgba(15, 23, 42, 0.85) 100%), url('<?php echo esc_url( $theme_uri . '/images/hero_banner.jpg' ); ?>');">
                    <div class="nike-cat-content">
                        <span class="nike-cat-tag">Moda & Sneakers</span>
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
    return __( 'Agregar al Carrito 🛒', 'nike-style' );
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
        return '<span class="onsale">-' . $percentage . '% DCTO</span>';
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
        <span>Despacho 24h • Todo Chile 🇨🇱</span>
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
// 10. FOOTER CHILENO ESTRUCTURADO CON REDES SOCIALES & BADGES DE CONFIANZA
// ------------------------------------------------------------------
function nike_style_footer_trust_badges() {
    ?>
    <div class="nike-footer-branding-col">
        <a href="<?php echo esc_url( home_url( '/' ) ); ?>" class="nike-footer-logo-link">
            <?php echo nike_style_get_svg_logo('footer'); ?>
        </a>
        <p class="nike-footer-tagline">Tu tienda online oficial de confianza en Chile. Productos exclusivos con garantía y despacho rápido a todo el país.</p>
        <div class="nike-footer-social-handles">
            <a href="https://www.instagram.com" target="_blank" rel="noopener" class="nike-footer-social-link">
                <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><rect x="2" y="2" width="20" height="20" rx="5" ry="5"/><path d="M16 11.37A4 4 0 1 1 12.63 8 4 4 0 0 1 16 11.37z"/><line x1="17.5" y1="6.5" x2="17.51" y2="6.5"/></svg>
                <span>Instagram: @tiendachile.cl</span>
            </a>
            <a href="https://www.tiktok.com" target="_blank" rel="noopener" class="nike-footer-social-link">
                <svg width="16" height="16" viewBox="0 0 24 24" fill="currentColor"><path d="M19.59 6.69a4.83 4.83 0 0 1-3.77-4.25V2h-3.45v13.67a2.89 2.89 0 0 1-5.2 1.74 2.89 2.89 0 0 1 2.31-4.64 2.93 2.93 0 0 1 .88.13V9.4a6.84 6.84 0 0 0-1-.05A6.33 6.33 0 0 0 5 20.1a6.34 6.34 0 0 0 10.86-4.43v-7a8.16 8.16 0 0 0 4.77 1.52v-3.4a4.85 4.85 0 0 1-1-.1z"/></svg>
                <span>TikTok: @tiendachile</span>
            </a>
            <a href="https://www.facebook.com" target="_blank" rel="noopener" class="nike-footer-social-link">
                <svg width="16" height="16" viewBox="0 0 24 24" fill="currentColor"><path d="M22 12c0-5.52-4.48-10-10-10S2 6.48 2 12c0 4.84 3.44 8.87 8 9.8V15H8v-3h2V9.5C10 7.57 11.57 6 13.5 6H16v3h-2c-.55 0-1 .45-1 1v2h3l-.5 3H13v6.95c4.66-.6 8-4.44 8-9.15z"/></svg>
                <span>Facebook: Tienda Chile Oficial</span>
            </a>
            <a href="https://wa.me/56912345678" target="_blank" rel="noopener" class="nike-footer-social-link nike-footer-wa">
                <svg width="16" height="16" viewBox="0 0 24 24" fill="currentColor"><path d="M17.472 14.382c-.297-.149-1.758-.867-2.03-.967-.273-.099-.471-.148-.67.15-.197.297-.767.966-.94 1.164-.173.199-.347.223-.644.075-.297-.15-1.255-.463-2.39-1.475-.883-.788-1.48-1.761-1.653-2.059-.173-.297-.018-.458.13-.606.134-.133.298-.347.446-.52.149-.174.198-.298.298-.497.099-.198.05-.371-.025-.52-.075-.149-.669-1.612-.916-2.207-.242-.579-.487-.501-.669-.51l-.57-.01c-.198 0-.52.074-.792.372s-1.04 1.016-1.04 2.479 1.065 2.876 1.213 3.074c.149.198 2.095 3.2 5.076 4.487.709.306 1.263.489 1.694.626.712.226 1.36.194 1.872.118.572-.085 1.758-.719 2.006-1.413.248-.694.248-1.289.173-1.413-.074-.124-.272-.198-.57-.347m-5.421 7.403h-.004a9.87 9.87 0 01-5.031-1.378l-.361-.214-3.741.982.998-3.648-.235-.374a9.86 9.86 0 01-1.51-5.26c.001-5.45 4.436-9.884 9.888-9.884 2.64 0 5.122 1.03 6.988 2.898a9.825 9.825 0 012.893 6.994c-.003 5.45-4.437 9.884-9.885 9.884m8.413-18.297A11.815 11.815 0 0012.05 0C5.495 0 .16 5.335.157 11.892c0 2.096.547 4.142 1.588 5.945L.057 24l6.305-1.654a11.882 11.882 0 005.683 1.448h.005c6.554 0 11.89-5.335 11.893-11.893a11.821 11.821 0 00-3.48-8.413Z"/></svg>
                <span>WhatsApp: +56 9 1234 5678</span>
            </a>
        </div>
    </div>

    <!-- Columna de Políticas Legales -->
    <div class="nike-footer-legal-col">
        <h3 class="nike-footer-legal-title">Información Legal & Políticas</h3>
        <ul class="nike-footer-legal-links">
            <li><a href="javascript:void(0)" onclick="nikeOpenModal('privacy')">🔒 Política de Privacidad</a></li>
            <li><a href="javascript:void(0)" onclick="nikeOpenModal('shipping')">🚚 Política de Envíos y Entregas</a></li>
            <li><a href="javascript:void(0)" onclick="nikeOpenModal('returns')">🔄 Garantía y Devoluciones</a></li>
            <li><a href="javascript:void(0)" onclick="nikeOpenModal('terms')">📜 Términos y Condiciones</a></li>
        </ul>
    </div>

    <div class="nike-footer-trust">
        <!-- Medios de Pago -->
        <div class="nike-trust-group">
            <span class="nike-trust-label">Medios de Pago Seguros:</span>
            <div class="nike-trust-badges">
                <span class="nike-badge nike-badge-webpay"><svg width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M12 22s8-4 8-10V5l-8-3-8 3v7c0 6 8 10 8 10z"/></svg> Webpay Plus</span>
                <span class="nike-badge nike-badge-tbk"><svg width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><rect x="1" y="4" width="22" height="16" rx="2" ry="2"/><line x1="1" y1="10" x2="23" y2="10"/></svg> Transbank</span>
                <span class="nike-badge nike-badge-mp"><svg width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M21 12V7H5a2 2 0 0 1 0-4h14v4"/><path d="M3 5v14a2 2 0 0 0 2 2h16v-5"/><path d="M18 12a2 2 0 0 0 0 4h4v-4z"/></svg> Mercado Pago</span>
                <span class="nike-badge nike-badge-crut"><svg width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><rect x="2" y="5" width="20" height="14" rx="2"/><path d="M2 10h20"/></svg> CuentaRUT</span>
            </div>
        </div>

        <!-- Despachos -->
        <div class="nike-trust-group">
            <span class="nike-trust-label">Despachos a todo Chile 🇨🇱:</span>
            <div class="nike-trust-badges">
                <span class="nike-badge nike-badge-shipping"><svg width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><rect x="1" y="3" width="15" height="13"/><polygon points="16 8 20 8 23 11 23 16 16 16 16 8"/><circle cx="5.5" cy="18.5" r="2.5"/><circle cx="18.5" cy="18.5" r="2.5"/></svg> Chilexpress</span>
                <span class="nike-badge nike-badge-shipping"><svg width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><rect x="1" y="3" width="15" height="13"/><polygon points="16 8 20 8 23 11 23 16 16 16 16 8"/><circle cx="5.5" cy="18.5" r="2.5"/><circle cx="18.5" cy="18.5" r="2.5"/></svg> Starken</span>
                <span class="nike-badge nike-badge-shipping"><svg width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><rect x="1" y="3" width="15" height="13"/><polygon points="16 8 20 8 23 11 23 16 16 16 16 8"/><circle cx="5.5" cy="18.5" r="2.5"/><circle cx="18.5" cy="18.5" r="2.5"/></svg> Blue Express</span>
            </div>
        </div>
    </div>
    <?php
}
add_action( 'storefront_footer', 'nike_style_footer_trust_badges', 15 );

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