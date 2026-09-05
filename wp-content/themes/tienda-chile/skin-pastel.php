<?php
/**
 * Tienda Chile - Skin "Boutique Pastel" (estilo editorial/e-commerce de diseño)
 *
 * Tercer skin del tema con toggle instantáneo via ?look=pastel o cookie tc_look.
 * Conserva toda la lógica de e-commerce de Tienda Chile. Estilo propio (boutique),
 * no inspirado en ninguna marca registrada.
 *
 * @package TiendaChile
 */

if ( ! defined( 'ABSPATH' ) ) {
	exit;
}

/**
 * Header minimalista boutique: barra fina, wordmark centrado, nav horizontal.
 */
function tc_pastel_header() {
	if ( function_exists( 'is_checkout' ) && is_checkout() && ! is_wc_endpoint_url( 'order-received' ) ) {
		return;
	}

	$shop_url    = function_exists( 'wc_get_page_permalink' ) ? wc_get_page_permalink( 'shop' ) : home_url( '/tienda' );
	$cart_url    = function_exists( 'wc_get_page_permalink' ) ? wc_get_page_permalink( 'cart' ) : home_url( '/carrito' );
	$account_url = function_exists( 'wc_get_page_permalink' ) ? wc_get_page_permalink( 'myaccount' ) : home_url( '/mi-cuenta' );

	$cart_count    = ( function_exists( 'WC' ) && WC()->cart ) ? WC()->cart->get_cart_contents_count() : 0;
	$cat_maq       = nike_get_cat_url( 'maquillaje' );
	$cat_elec      = nike_get_cat_url( 'electronica' );
	$cat_ele       = nike_get_cat_url( 'electrodomesticos' );
	$cat_lifestyle = nike_get_cat_url( 'estilo-de-vida' );
	?>
	<header class="tc-pastel-header">
		<div class="tc-pastel-announce">
			<span>Encuentra tu ritual de belleza y tecnología · Envío gratis desde CLP$50.000 a todo Chile 🇨🇱</span>
		</div>

		<div class="tc-pastel-header-main">
			<div class="tc-pastel-brand">
				<a href="<?php echo esc_url( home_url( '/' ) ); ?>" rel="home" aria-label="Tienda Chile - Inicio">
					<span class="tc-pastel-brand-name">tienda <em>chile</em></span>
					<span class="tc-pastel-brand-tag">BELLEZA · TECNOLOGÍA · HOGAR</span>
				</a>
			</div>

			<nav class="tc-pastel-nav" aria-label="Navegación principal">
				<a class="<?php echo is_front_page() ? 'tc-pastel-active' : ''; ?>" href="<?php echo esc_url( home_url( '/' ) ); ?>">Inicio</a>
				<a class="<?php echo ( function_exists( 'is_shop' ) && is_shop() ) ? 'tc-pastel-active' : ''; ?>" href="<?php echo esc_url( $shop_url ); ?>">Colección</a>
				<a href="<?php echo esc_url( $cat_maq ); ?>">Belleza</a>
				<a href="<?php echo esc_url( $cat_elec ); ?>">Tecnología</a>
				<a href="<?php echo esc_url( $cat_ele ); ?>">Hogar</a>
				<a href="<?php echo esc_url( $cat_lifestyle ); ?>">Estilo de Vida</a>
			</nav>

			<div class="tc-pastel-actions">
				<a href="<?php echo esc_url( $account_url ); ?>" class="tc-pastel-action" aria-label="Mi Cuenta" title="Mi Cuenta">
					<svg width="19" height="19" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.6"><path d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"/><circle cx="12" cy="7" r="4"/></svg>
				</a>
				<a href="<?php echo esc_url( $cart_url ); ?>" class="tc-pastel-action tc-pastel-cart" aria-label="Carrito de compras" title="Carrito">
					<svg width="19" height="19" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.6"><circle cx="9" cy="21" r="1"/><circle cx="20" cy="21" r="1"/><path d="M1 1h4l2.68 13.39a2 2 0 0 0 2 1.61h9.72a2 2 0 0 0 2-1.61L23 6H6"/></svg>
					<?php if ( $cart_count > 0 ) : ?>
						<span class="tc-pastel-cart-count"><?php echo esc_html( $cart_count ); ?></span>
					<?php endif; ?>
				</a>
			</div>
		</div>
	</header>
	<?php
}

/**
 * Home boutique: hero editorial suave + categorías + favoritos.
 */
function tc_pastel_home() {
	if ( ! ( is_front_page() || is_home() ) ) {
		return;
	}
	$theme_uri = get_stylesheet_directory_uri();
	$shop_url  = function_exists( 'wc_get_page_permalink' ) ? wc_get_page_permalink( 'shop' ) : home_url( '/tienda' );
	?>
	<section class="tc-pastel-hero">
		<div class="tc-pastel-hero-inner">
			<div class="tc-pastel-hero-text">
				<span class="tc-pastel-eyebrow">Colección 2026 · Curada con calma</span>
				<h1>Rituales de belleza<br/>y <em>tecnología</em> para tu día</h1>
				<p>Una selección serena de productos cuidados para ti, con despacho a todo Chile y pago 100% seguro.</p>
				<div class="tc-pastel-hero-actions">
					<a class="tc-pastel-btn tc-pastel-btn-primary" href="<?php echo esc_url( $shop_url ); ?>">Descubrir la colección</a>
					<a class="tc-pastel-btn tc-pastel-btn-ghost" href="#tc-pastel-categorias">Ver categorías</a>
				</div>
			</div>
			<div class="tc-pastel-hero-visual">
				<div class="tc-pastel-hero-frame">
					<img src="<?php echo esc_url( $theme_uri . '/images/beauty.jpg' ); ?>" alt="Colección Tienda Chile" loading="eager" />
				</div>
				<span class="tc-pastel-hero-stamp">hecho<br/>con<br/>♡</span>
			</div>
		</div>
	</section>

	<section id="tc-pastel-categorias" class="tc-pastel-cats">
		<div class="tc-pastel-sectional">
			<span class="tc-pastel-eyebrow">Explora por interés</span>
			<h2>Categorías para ti</h2>
		</div>
		<div class="tc-pastel-cat-grid">
			<a class="tc-pastel-cat tc-pastel-cat-rose" href="<?php echo esc_url( nike_get_cat_url( 'belleza' ) ); ?>">
				<span class="tc-pastel-cat-icon">💄</span>
				<strong>Belleza</strong>
				<small>Outs de cuidado y maquillaje</small>
			</a>
			<a class="tc-pastel-cat tc-pastel-cat-sage" href="<?php echo esc_url( nike_get_cat_url( 'tecnologia' ) ); ?>">
				<span class="tc-pastel-cat-icon">⚡</span>
				<strong>Tecnología</strong>
				<small>Audio y gadgets para tu día</small>
			</a>
			<a class="tc-pastel-cat tc-pastel-cat-sand" href="<?php echo esc_url( nike_get_cat_url( 'electrodomesticos' ) ); ?>">
				<span class="tc-pastel-cat-icon">🏠</span>
				<strong>Hogar</strong>
				<small>Pequeñas ayudas para tu casa</small>
			</a>
			<a class="tc-pastel-cat tc-pastel-cat-lavender" href="<?php echo esc_url( nike_get_cat_url( 'estilo-de-vida' ) ); ?>">
				<span class="tc-pastel-cat-icon">💎</span>
				<strong>Estilo de Vida</strong>
				<small>Detalles que te hacen bien</small>
			</a>
		</div>
	</section>

	<section class="tc-pastel-favs">
		<div class="tc-pastel-sectional tc-pastel-sectional-row">
			<div>
				<span class="tc-pastel-eyebrow">Los favoritos</span>
				<h2>Productos que aman</h2>
			</div>
			<a class="tc-pastel-seeall" href="<?php echo esc_url( $shop_url ); ?>">Ver todo ➔</a>
		</div>
		<?php echo do_shortcode( '[products limit="8" columns="4" orderby="popularity" order="DESC"]' ); ?>
	</section>
	<?php
}

/**
 * Elementos de tarjeta boutique (pastel). Se añade después del precio.
 */
function tc_pastel_product_card_elements() {
	?>
	<div class="tc-pastel-card-meta">
		<span class="tc-pastel-card-new">Nuevo</span>
		<span class="tc-pastel-card-stars">★★★★★ <em>5.0</em></span>
	</div>
	<?php
}

/**
 * Footer boutique.
 */
function tc_pastel_footer() {
	$shop_url = function_exists( 'wc_get_page_permalink' ) ? wc_get_page_permalink( 'shop' ) : home_url( '/tienda' );
	?>
	<div class="tc-pastel-footer">
		<div class="tc-pastel-footer-newsletter">
			<div class="tc-pastel-footer-newsletter-inner">
				<div>
					<span class="tc-pastel-eyebrow">Newsletter</span>
					<h2>Recibe un 10% en tu primera compra</h2>
					<p class="tc-pastel-footer-sub">Notas de colección y novedades, una vez al mes. Sin ruido.</p>
				</div>
				<form class="tc-pastel-footer-form" onsubmit="event.preventDefault(); nikeSubscribeNewsletter(this);">
					<input type="email" placeholder="Tu correo electrónico" required class="tc-pastel-footer-input" />
					<button type="submit" class="tc-pastel-btn tc-pastel-btn-primary">Suscribirme</button>
				</form>
			</div>
		</div>

		<div class="tc-pastel-footer-cols">
			<div class="tc-pastel-footer-col">
				<h4>tienda chile</h4>
				<ul class="tc-pastel-footer-menu">
					<li><a href="<?php echo esc_url( home_url( '/' ) ); ?>">Inicio</a></li>
					<li><a href="<?php echo esc_url( $shop_url ); ?>">Colección</a></li>
					<li><a href="javascript:void(0)" onclick="nikeOpenModal('privacy')">Política de privacidad</a></li>
					<li><a href="javascript:void(0)" onclick="nikeOpenModal('terms')">Términos y condiciones</a></li>
				</ul>
			</div>
			<div class="tc-pastel-footer-col">
				<h4>Explora</h4>
				<ul class="tc-pastel-footer-menu">
					<li><a href="<?php echo esc_url( nike_get_cat_url( 'belleza' ) ); ?>">Belleza</a></li>
					<li><a href="<?php echo esc_url( nike_get_cat_url( 'tecnologia' ) ); ?>">Tecnología</a></li>
					<li><a href="<?php echo esc_url( nike_get_cat_url( 'electrodomesticos' ) ); ?>">Hogar</a></li>
					<li><a href="<?php echo esc_url( nike_get_cat_url( 'estilo-de-vida' ) ); ?>">Estilo de Vida</a></li>
				</ul>
			</div>
			<div class="tc-pastel-footer-col">
				<h4>Pagos seguros</h4>
				<div class="tc-pastel-footer-badges">
					<span>Webpay Plus</span>
					<span>Transbank</span>
					<span>CuentaRUT</span>
					<span>Mercado Pago</span>
				</div>
			</div>
			<div class="tc-pastel-footer-col">
				<h4>Despachos</h4>
				<div class="tc-pastel-footer-badges">
					<span>Chilexpress</span>
					<span>Starken</span>
					<span>Blue Express</span>
				</div>
				<p class="tc-pastel-footer-legal">© <?php echo esc_html( date( 'Y' ) ); ?> Tienda Chile · Todos los derechos reservados · Hecho en Chile 🇨🇱</p>
			</div>
		</div>
	</div>
	<?php
}