<?php
/**
 * Tienda Chile - Skin "Marketplace" (estilo inspirado en Mercado Libre)
 *
 * Skin alternativo del mismo tema con toggle instantáneo via ?look=ml o cookie.
 * Conserva toda la lógica de e-commerce de Tienda Chile (RUT, checkout, pasarelas)
 * y solo cambia la piel visual. Estilo inspirado, NO clon de la marca.
 *
 * @package TiendaChile
 */

if ( ! defined( 'ABSPATH' ) ) {
	exit;
}

/**
 * Header completo estilo MarketPlace (amarillo + buscador grande + categorías).
 * Se inyecta como un bloque propio; el .site-header de Storefront se oculta vía CSS.
 */
function tc_ml_header() {
	if ( function_exists( 'is_checkout' ) && is_checkout() && ! is_wc_endpoint_url( 'order-received' ) ) {
		return;
	}

	$shop_url    = function_exists( 'wc_get_page_permalink' ) ? wc_get_page_permalink( 'shop' ) : home_url( '/tienda' );
	$cart_url    = function_exists( 'wc_get_page_permalink' ) ? wc_get_page_permalink( 'cart' ) : home_url( '/carrito' );
	$account_url = function_exists( 'wc_get_page_permalink' ) ? wc_get_page_permalink( 'myaccount' ) : home_url( '/mi-cuenta' );

	$cart_count    = ( function_exists( 'WC' ) && WC()->cart ) ? WC()->cart->get_cart_contents_count() : 0;
	$cart_subtotal = ( function_exists( 'WC' ) && WC()->cart ) ? WC()->cart->get_cart_subtotal() : 'CLP$0';

	$cat_maq  = nike_get_cat_url( 'maquillaje' );
	$cat_elec = nike_get_cat_url( 'electronica' );
	$cat_ele  = nike_get_cat_url( 'electrodomesticos' );

	$categories = get_terms( array(
		'taxonomy'   => 'product_cat',
		'parent'     => 0,
		'hide_empty' => true,
	) );
	?>
	<header class="tc-ml-header">
		<!-- Barra promocional superior estilo marketplace -->
		<div class="tc-ml-promo">
			<span class="tc-ml-promo-text">⚡ ENVÍO GRATIS desde CLP$50.000 a todo Chile &nbsp;|&nbsp; HASTA 6 CUOTAS CON WEBPAY &nbsp;|&nbsp; 🇨🇱 TIENDA CHILE OFICIAL</span>
		</div>

		<!-- Barra principal amarilla -->
		<div class="tc-ml-header-main">
			<div class="tc-ml-logo">
				<a href="<?php echo esc_url( home_url( '/' ) ); ?>" rel="home" aria-label="Tienda Chile - Inicio">
					<svg class="tc-ml-logo-mark" viewBox="0 0 34 34">
						<rect x="1" y="1" width="32" height="32" rx="9" fill="#18181B"/>
						<path d="M17 6L19.4 11.5H26L21.6 15.2L23.4 20.4L17 17L10.6 20.4L12.4 15.2L8 11.5H14.6L17 6Z" fill="#FFE600"/>
					</svg>
					<span class="tc-ml-logo-text">tienda<strong>chile</strong></span>
				</a>
			</div>

			<div class="tc-ml-search-wrap">
				<form role="search" method="get" class="tc-ml-search-form" action="<?php echo esc_url( home_url( '/' ) ); ?>">
					<svg class="tc-ml-search-icon" width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.2"><circle cx="11" cy="11" r="7"/><line x1="21" y1="21" x2="16.65" y2="16.65"/></svg>
					<input type="search" name="s" placeholder="Buscar productos de belleza, tecnología, electrodomésticos..." class="tc-ml-search-input" aria-label="Buscar productos" value="<?php echo get_search_query(); ?>" />
					<input type="hidden" name="post_type" value="product" />
					<button type="submit" class="tc-ml-search-btn">Buscar</button>
				</form>
			</div>

			<div class="tc-ml-header-actions">
				<a href="<?php echo esc_url( home_url( '/' ) ); ?>" class="tc-ml-action tc-ml-action-loc" title="Envíos a todo Chile">
					<svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M21 10c0 7-9 13-9 13s-9-6-9-13a9 9 0 0 1 18 0z"/><circle cx="12" cy="10" r="3"/></svg>
					<span><strong>Enviar a</strong><br/>Chile 🇨🇱</span>
				</a>
				<a href="<?php echo esc_url( $account_url ); ?>" class="tc-ml-action" title="Mi Cuenta">
					<svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"/><circle cx="12" cy="7" r="4"/></svg>
					<span><strong>Mi Cuenta</strong></span>
				</a>
				<a href="<?php echo esc_url( $cart_url ); ?>" class="tc-ml-action tc-ml-cart" title="Carrito de Compras">
					<svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><circle cx="9" cy="21" r="1"/><circle cx="20" cy="21" r="1"/><path d="M1 1h4l2.68 13.39a2 2 0 0 0 2 1.61h9.72a2 2 0 0 0 2-1.61L23 6H6"/></svg>
					<span><strong>Carrito</strong><br/><em><?php echo wp_kses_post( $cart_subtotal ); ?></em></span>
					<span class="tc-ml-cart-badge"><?php echo esc_html( $cart_count ); ?></span>
				</a>
			</div>
		</div>

		<!-- Barra de categorías -->
		<nav class="tc-ml-nav" aria-label="Categorías">
			<div class="tc-ml-nav-inner">
				<a class="tc-ml-nav-link tc-ml-nav-cats" href="<?php echo esc_url( home_url( '/' ) ); ?>">☰ Categorías</a>
				<a class="tc-ml-nav-link <?php echo is_front_page() ? 'tc-ml-active' : ''; ?>" href="<?php echo esc_url( home_url( '/' ) ); ?>">Inicio</a>
				<a class="tc-ml-nav-link <?php echo ( function_exists( 'is_shop' ) && is_shop() ) ? 'tc-ml-active' : ''; ?>" href="<?php echo esc_url( $shop_url ); ?>">Tienda</a>
				<?php if ( ! empty( $categories ) && ! is_wp_error( $categories ) ) : ?>
					<?php foreach ( $categories as $cat ) : ?>
						<?php
						$slug_lower = strtolower( $cat->slug );
						if ( strpos( $slug_lower, 'uncategorized' ) !== false || strpos( $slug_lower, 'sin-categoria' ) !== false ) {
							continue;
						}
						?>
						<a class="tc-ml-nav-link" href="<?php echo esc_url( get_term_link( $cat ) ); ?>"><?php echo esc_html( $cat->name ); ?></a>
					<?php endforeach; ?>
				<?php endif; ?>
				<span class="tc-ml-nav-extra">🛡 Compra Protegida &nbsp;|&nbsp; 🔄 Devolución gratis</span>
			</div>
		</nav>
	</header>
	<?php
}

/**
 * Sección de categorías en mosaico (home).
 */
function tc_ml_home_category_strip() {
	if ( ! ( is_front_page() || is_home() ) ) {
		return;
	}
	$theme_uri = get_stylesheet_directory_uri();
	$shop_url  = function_exists( 'wc_get_page_permalink' ) ? wc_get_page_permalink( 'shop' ) : home_url( '/tienda' );
	?>
	<section class="tc-ml-home-cats">
		<div class="tc-ml-cat-grid">
			<a href="<?php echo esc_url( nike_get_cat_url( 'belleza' ) ); ?>" class="tc-ml-cat-tile tc-ml-cat-beauty">
				<img src="<?php echo esc_url( $theme_uri . '/images/beauty.jpg' ); ?>" alt="Belleza" loading="lazy" />
				<span class="tc-ml-cat-label">💄 Belleza & Cuidado</span>
				<span class="tc-ml-cat-cta">Ver más ➔</span>
			</a>
			<a href="<?php echo esc_url( nike_get_cat_url( 'tecnologia' ) ); ?>" class="tc-ml-cat-tile tc-ml-cat-tech">
				<img src="<?php echo esc_url( $theme_uri . '/images/tech.jpg' ); ?>" alt="Tecnología" loading="lazy" />
				<span class="tc-ml-cat-label">⚡ Tecnología</span>
				<span class="tc-ml-cat-cta">Ver más ➔</span>
			</a>
			<a href="<?php echo esc_url( nike_get_cat_url( 'electrodomesticos' ) ); ?>" class="tc-ml-cat-tile tc-ml-cat-home">
				<img src="<?php echo esc_url( $theme_uri . '/images/hero_banner.jpg' ); ?>" alt="Electrodomésticos" loading="lazy" />
				<span class="tc-ml-cat-label">🏠 Electrodomésticos</span>
				<span class="tc-ml-cat-cta">Ver más ➔</span>
			</a>
			<a href="<?php echo esc_url( nike_get_cat_url( 'estilo-de-vida' ) ); ?>" class="tc-ml-cat-tile tc-ml-cat-lifestyle">
				<img src="<?php echo esc_url( $theme_uri . '/images/hero_banner.jpg' ); ?>" alt="Estilo de Vida" loading="lazy" />
				<span class="tc-ml-cat-label">💎 Estilo de Vida</span>
				<span class="tc-ml-cat-cta">Ver más ➔</span>
			</a>
		</div>

		<!-- Franja de beneficios estilo marketplace -->
		<div class="tc-ml-benefits">
			<a href="<?php echo esc_url( $shop_url ); ?>" class="tc-ml-benefit">
				<span class="tc-ml-benefit-icon">🚚</span>
				<span><strong>Envío gratis</strong><br/>desde CLP$50.000</span>
			</a>
			<a href="<?php echo esc_url( $shop_url ); ?>" class="tc-ml-benefit">
				<span class="tc-ml-benefit-icon">🏦</span>
				<span><strong>Webpay / CuentaRUT</strong><br/>Pago 100% seguro</span>
			</a>
			<a href="<?php echo esc_url( $shop_url ); ?>" class="tc-ml-benefit">
				<span class="tc-ml-benefit-icon">🔄</span>
				<span><strong>Devolución gratis</strong><br/>en 30 días (Ley 19.496)</span>
			</a>
			<a href="<?php echo esc_url( $shop_url ); ?>" class="tc-ml-benefit">
				<span class="tc-ml-benefit-icon">🛡</span>
				<span><strong>Garantía oficial</strong><br/>6 meses con boleta</span>
			</a>
		</div>
	</section>
	<?php
}

/**
 * Elementos de la tarjeta de producto (rating, precio grande, envío gratis) estilo marketplace.
 */
function tc_ml_product_card_elements() {
	global $product;
	$price_suffix = '';
	if ( $product ) {
		if ( $product->get_regular_price() && $product->get_sale_price() ) {
			$regular = (float) $product->get_regular_price();
			$sale    = (float) $product->get_sale_price();
			$discount = ( $regular > 0 && $sale < $regular ) ? round( ( ( $regular - $sale ) / $regular ) * 100 ) : 0;
			if ( $discount > 0 ) {
				$price_suffix = '<span class="tc-ml-discount">-' . intval( $discount ) . '%</span>';
			}
		}
	}
	?>
	<div class="tc-ml-card-meta">
		<span class="tc-ml-shipping-free">🚚 Envío gratis</span>
		<span class="tc-ml-stars">★★★★★ <em>5.0 (48)</em></span>
	</div>
	<?php if ( $price_suffix ) : ?>
		<?php echo $price_suffix; // phpcs:ignore WordPress.Security.EscapeOutput ?>
	<?php endif; ?>
	<?php
}

/**
 * Sección de productos destacados en la home (estilo marketplace).
 */
function tc_ml_home_products() {
	if ( ! ( is_front_page() || is_home() ) ) {
		return;
	}
	?>
	<section class="tc-ml-home-products">
		<div class="tc-ml-sectional-header">
			<h2>Más vendidos en Chile 🇨🇱</h2>
			<a href="<?php echo esc_url( function_exists( 'wc_get_page_permalink' ) ? wc_get_page_permalink( 'shop' ) : home_url( '/tienda' ) ); ?>" class="tc-ml-sectional-link">Ver todos ➔</a>
		</div>
		<?php echo do_shortcode( '[products limit="8" columns="4" orderby="popularity" order="DESC"]' ); ?>
	</section>
	<?php
}

/**
 * Footer oficial estilo marketplace.
 */
function tc_ml_footer() {
	$shop_url = function_exists( 'wc_get_page_permalink' ) ? wc_get_page_permalink( 'shop' ) : home_url( '/tienda' );
	?>
	<div class="tc-ml-footer">
		<div class="tc-ml-footer-promo">
			<div class="tc-ml-footer-promo-inner">
				<div class="tc-ml-newsletter">
					<span class="tc-ml-newsletter-badge">SUBSCRIBETE AL NEWSLETTER</span>
					<h3>Recibe <em>CLP$5.000 de descuento</em> en tu primera compra</h3>
					<p>Ofertas exclusivas y novedades antes que nadie, directo a tu correo.</p>
				</div>
				<form class="tc-ml-newsletter-form" onsubmit="event.preventDefault(); nikeSubscribeNewsletter(this);">
					<div class="tc-ml-newsletter-input-wrap">
						<input type="email" placeholder="Ingresa tu correo electrónico..." required class="tc-ml-newsletter-input" />
						<button type="submit" class="tc-ml-newsletter-btn">Suscribirme</button>
					</div>
				</form>
			</div>
		</div>

		<div class="tc-ml-footer-cols">
			<div class="tc-ml-footer-col">
				<h4>Tienda Chile</h4>
				<ul class="tc-ml-footer-menu">
					<li><a href="<?php echo esc_url( home_url( '/' ) ); ?>">Inicio</a></li>
					<li><a href="<?php echo esc_url( $shop_url ); ?>">Catálogo completo</a></li>
					<li><a href="javascript:void(0)" onclick="nikeOpenModal('privacy')">Política de privacidad</a></li>
					<li><a href="javascript:void(0)" onclick="nikeOpenModal('terms')">Términos y condiciones</a></li>
				</ul>
			</div>
			<div class="tc-ml-footer-col">
				<h4>Compra</h4>
				<ul class="tc-ml-footer-menu">
					<li><a href="<?php echo esc_url( nike_get_cat_url( 'belleza' ) ); ?>">Belleza & Cuidado</a></li>
					<li><a href="<?php echo esc_url( nike_get_cat_url( 'tecnologia' ) ); ?>">Tecnología</a></li>
					<li><a href="<?php echo esc_url( nike_get_cat_url( 'estilo-de-vida' ) ); ?>">Estilo de Vida</a></li>
					<li><a href="<?php echo esc_url( nike_get_cat_url( 'electrodomesticos' ) ); ?>">Electrodomésticos</a></li>
				</ul>
			</div>
			<div class="tc-ml-footer-col">
				<h4>Medios de pago</h4>
				<div class="tc-ml-pay-badges">
					<span>💳 Webpay Plus</span>
					<span>🏦 Transbank</span>
					<span>🏛 CuentaRUT</span>
					<span>📱 Mercado Pago</span>
				</div>
			</div>
			<div class="tc-ml-footer-col">
				<h4>Despacho</h4>
				<div class="tc-ml-pay-badges">
					<span>🚚 Chilexpress</span>
					<span>📦 Starken</span>
					<span>⚡ Blue Express</span>
				</div>
				<p class="tc-ml-footer-legal">© <?php echo esc_html( date( 'Y' ) ); ?> TIENDA CHILE OFICIAL • Todos los derechos reservados. Chile 🇨🇱</p>
			</div>
		</div>
	</div>
	<?php
}