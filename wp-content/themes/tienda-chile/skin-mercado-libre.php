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
 * Header completo estilo Marketplace (amarillo + buscador grande + categorías).
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

	$categories = get_terms( array(
		'taxonomy'   => 'product_cat',
		'parent'     => 0,
		'hide_empty' => true,
	) );
	?>
	<header class="tc-ml-header">
		<!-- Barra promocional superior -->
		<div class="tc-ml-promo">
			<span class="tc-ml-promo-text">
				<svg class="tc-ml-promo-icon" width="14" height="14" viewBox="0 0 24 24" fill="currentColor"><polygon points="13 2 3 14 12 14 11 22 21 10 12 10 13 2"/></svg>
				ENVÍO GRATIS desde CLP$50.000 a todo Chile
				<span class="tc-ml-promo-sep">|</span>
				HASTA 6 CUOTAS CON WEBPAY
				<span class="tc-ml-promo-sep">|</span>
				TIENDA CHILE OFICIAL
			</span>
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
					<svg class="tc-ml-search-input-icon" width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.2"><circle cx="11" cy="11" r="7"/><line x1="21" y1="21" x2="16.65" y2="16.65"/></svg>
					<input type="search" name="s" placeholder="Buscar productos de belleza, tecnología, electrodomésticos..." class="tc-ml-search-input" aria-label="Buscar productos" value="<?php echo get_search_query(); ?>" />
					<input type="hidden" name="post_type" value="product" />
					<button type="submit" class="tc-ml-search-btn">Buscar</button>
				</form>
			</div>

			<div class="tc-ml-header-actions">
				<a href="<?php echo esc_url( home_url( '/' ) ); ?>" class="tc-ml-action tc-ml-action-loc" title="Envíos a todo Chile">
					<svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M21 10c0 7-9 13-9 13s-9-6-9-13a9 9 0 0 1 18 0z"/><circle cx="12" cy="10" r="3"/></svg>
					<span><strong>Enviar a</strong><br/>Chile</span>
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
				<a class="tc-ml-nav-link tc-ml-nav-cats" href="<?php echo esc_url( home_url( '/' ) ); ?>">
					<svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.2"><line x1="3" y1="6" x2="21" y2="6"/><line x1="3" y1="12" x2="21" y2="12"/><line x1="3" y1="18" x2="21" y2="18"/></svg>
					<span>Categorías</span>
				</a>
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
				<span class="tc-ml-nav-extra">
					<svg width="13" height="13" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M12 22s8-4 8-10V5l-8-3-8 3v7c0 6 8 10 8 10z"/></svg>
					Compra Protegida
					<span class="tc-ml-promo-sep">|</span>
					<svg width="13" height="13" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><polyline points="1 4 1 10 7 10"/><path d="M3.51 15a9 9 0 1 0 2.13-9.36L1 10"/></svg>
					Devolución gratis
				</span>
			</div>
		</nav>
	</header>
	<?php
}

/**
 * Hero slider de la home (css-only con dots).
 */
function tc_ml_hero_slider() {
	if ( ! ( is_front_page() || is_home() ) ) {
		return;
	}
	$theme_uri = get_stylesheet_directory_uri();
	$slides    = array(
		array(
			'img'    => 'beauty.jpg',
			'badge'  => 'Belleza & Cuidado',
			'title'  => 'Realza tu belleza natural',
			'sub'    => 'Hasta 40% OFF en outs de maquillaje y skincare.',
			'cta'    => 'Ver ofertas de belleza',
			'link'   => nike_get_cat_url( 'belleza' ),
		),
		array(
			'img'    => 'tech.jpg',
			'badge'  => 'Tecnología',
			'title'  => 'Audio y gadgets al mejor precio',
			'sub'    => 'Hasta 6 cuotas sin interés con Webpay Plus.',
			'cta'    => 'Explorar tecnología',
			'link'   => nike_get_cat_url( 'tecnologia' ),
		),
		array(
			'img'    => 'hero_banner.jpg',
			'badge'  => 'Electrodomésticos & Hogar',
			'title'  => 'Electrodomésticos para tu casa',
			'sub'    => 'Envío gratis desde CLP$50.000 a todo Chile.',
			'cta'    => 'Ver hogar',
			'link'   => nike_get_cat_url( 'electrodomesticos' ),
		),
	);
	?>
	<section class="tc-ml-hero" aria-label="Ofertas destacadas">
		<div class="tc-ml-hero-track">
			<?php foreach ( $slides as $i => $slide ) : ?>
				<div class="tc-ml-hero-slide<?php echo 0 === $i ? ' is-active' : ''; ?>" style="background-image: linear-gradient(90deg, rgba(0,0,0,.72) 0%, rgba(0,0,0,.25) 55%, rgba(0,0,0,.05) 100%), url('<?php echo esc_url( $theme_uri . '/images/' . $slide['img'] ); ?>');">
					<div class="tc-ml-hero-caption">
						<span class="tc-ml-hero-badge"><?php echo esc_html( $slide['badge'] ); ?></span>
						<h2><?php echo esc_html( $slide['title'] ); ?></h2>
						<p><?php echo esc_html( $slide['sub'] ); ?></p>
						<a class="tc-ml-hero-cta" href="<?php echo esc_url( $slide['link'] ); ?>"><?php echo esc_html( $slide['cta'] ); ?> ➔</a>
					</div>
				</div>
			<?php endforeach; ?>
		</div>
		<div class="tc-ml-hero-dots"></div>
	</section>
	<?php
}

/**
 * Sección de categorías en mosaico (home) + beneficios.
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
				<span class="tc-ml-cat-mask"></span>
				<span class="tc-ml-cat-body">
					<span class="tc-ml-cat-icon"><svg width="26" height="26" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8"><path d="M12 19l7-7 3 3-7 7-3-3z"/><path d="M18 13l-1.5-7.5L2 2l3.5 14.5L13 18l5-5z"/><circle cx="11" cy="11" r="2"/></svg></span>
					<span class="tc-ml-cat-label">Belleza & Cuidado</span>
					<span class="tc-ml-cat-cta">Ver más ➔</span>
				</span>
			</a>
			<a href="<?php echo esc_url( nike_get_cat_url( 'tecnologia' ) ); ?>" class="tc-ml-cat-tile tc-ml-cat-tech">
				<img src="<?php echo esc_url( $theme_uri . '/images/tech.jpg' ); ?>" alt="Tecnología" loading="lazy" />
				<span class="tc-ml-cat-mask"></span>
				<span class="tc-ml-cat-body">
					<span class="tc-ml-cat-icon"><svg width="26" height="26" viewBox="0 0 24 24" fill="currentColor"><polygon points="13 2 3 14 12 14 11 22 21 10 12 10 13 2"/></svg></span>
					<span class="tc-ml-cat-label">Tecnología</span>
					<span class="tc-ml-cat-cta">Ver más ➔</span>
				</span>
			</a>
			<a href="<?php echo esc_url( nike_get_cat_url( 'electrodomesticos' ) ); ?>" class="tc-ml-cat-tile tc-ml-cat-home">
				<img src="<?php echo esc_url( $theme_uri . '/images/hero_banner.jpg' ); ?>" alt="Electrodomésticos" loading="lazy" />
				<span class="tc-ml-cat-mask"></span>
				<span class="tc-ml-cat-body">
					<span class="tc-ml-cat-icon"><svg width="26" height="26" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8"><path d="M3 9l9-7 9 7v11a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2z"/><polyline points="9 22 9 12 15 12 15 22"/></svg></span>
					<span class="tc-ml-cat-label">Hogar & Electrodomésticos</span>
					<span class="tc-ml-cat-cta">Ver más ➔</span>
				</span>
			</a>
			<a href="<?php echo esc_url( nike_get_cat_url( 'estilo-de-vida' ) ); ?>" class="tc-ml-cat-tile tc-ml-cat-lifestyle">
				<img src="<?php echo esc_url( $theme_uri . '/images/beauty.jpg' ); ?>" alt="Estilo de Vida" loading="lazy" />
				<span class="tc-ml-cat-mask"></span>
				<span class="tc-ml-cat-body">
					<span class="tc-ml-cat-icon"><svg width="26" height="26" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8"><path d="M6 3h12l4 6-10 13L2 9z"/><path d="M11 3L8 9l4 13 4-13-3-6"/><path d="M2 9h20"/></svg></span>
					<span class="tc-ml-cat-label">Estilo de Vida</span>
					<span class="tc-ml-cat-cta">Ver más ➔</span>
				</span>
			</a>
		</div>

		<!-- Franja de beneficios -->
		<div class="tc-ml-benefits">
			<a href="<?php echo esc_url( $shop_url ); ?>" class="tc-ml-benefit">
				<span class="tc-ml-benefit-icon"><svg width="22" height="22" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8"><rect x="1" y="3" width="15" height="13"/><polygon points="16 8 20 8 23 11 23 16 16 16 16 8"/><circle cx="5.5" cy="18.5" r="2.5"/><circle cx="18.5" cy="18.5" r="2.5"/></svg></span>
				<span><strong>Envío gratis</strong><br/>desde CLP$50.000</span>
			</a>
			<a href="<?php echo esc_url( $shop_url ); ?>" class="tc-ml-benefit">
				<span class="tc-ml-benefit-icon"><svg width="22" height="22" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8"><rect x="2" y="5" width="20" height="14" rx="3"/><line x1="2" y1="10" x2="22" y2="10"/><circle cx="6.5" cy="15.5" r="1.5"/></svg></span>
				<span><strong>Webpay / CuentaRUT</strong><br/>Pago 100% seguro</span>
			</a>
			<a href="<?php echo esc_url( $shop_url ); ?>" class="tc-ml-benefit">
				<span class="tc-ml-benefit-icon"><svg width="22" height="22" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8"><polyline points="1 4 1 10 7 10"/><path d="M3.51 15a9 9 0 1 0 2.13-9.36L1 10"/></svg></span>
				<span><strong>Devolución gratis</strong><br/>en 30 días (Ley 19.496)</span>
			</a>
			<a href="<?php echo esc_url( $shop_url ); ?>" class="tc-ml-benefit">
				<span class="tc-ml-benefit-icon"><svg width="22" height="22" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8"><path d="M12 22s8-4 8-10V5l-8-3-8 3v7c0 6 8 10 8 10z"/></svg></span>
				<span><strong>Garantía oficial</strong><br/>6 meses con boleta</span>
			</a>
		</div>
	</section>
	<?php
}

/**
 * Rail horizontal "Nuevos ingresos" (home).
 */
function tc_ml_home_rail() {
	if ( ! ( is_front_page() || is_home() ) ) {
		return;
	}
	$shop_url = function_exists( 'wc_get_page_permalink' ) ? wc_get_page_permalink( 'shop' ) : home_url( '/tienda' );
	?>
	<section class="tc-ml-rail-section">
		<div class="tc-ml-sectional-header">
			<h2>
				<svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M2 12a10 10 0 1 0 3.4-7.5"/><polygon points="2 3 2 9 8 9 2 3"/></svg>
				Nuevos ingresos en Tienda Chile
			</h2>
			<div class="tc-ml-rail-arrows">
				<button type="button" class="tc-ml-rail-prev" aria-label="Anterior">‹</button>
				<button type="button" class="tc-ml-rail-next" aria-label="Siguiente">›</button>
			</div>
		</div>
		<div class="tc-ml-rail">
			<?php echo do_shortcode( '[products limit="8" columns="4" orderby="date" order="DESC"]' ); ?>
		</div>
		<div class="tc-ml-sectional-header tc-ml-sectional-footer">
			<a href="<?php echo esc_url( $shop_url ); ?>" class="tc-ml-sectional-link">Ver todos los productos ➔</a>
		</div>
	</section>
	<?php
}

/**
 * Sección de productos destacados en la home (más vendidos).
 */
function tc_ml_home_products() {
	if ( ! ( is_front_page() || is_home() ) ) {
		return;
	}
	?>
	<section class="tc-ml-home-products">
		<div class="tc-ml-sectional-header">
			<h2>Más vendidos en Chile</h2>
			<a href="<?php echo esc_url( function_exists( 'wc_get_page_permalink' ) ? wc_get_page_permalink( 'shop' ) : home_url( '/tienda' ) ); ?>" class="tc-ml-sectional-link">Ver todos ➔</a>
		</div>
		<?php echo do_shortcode( '[products limit="8" columns="4" orderby="popularity" order="DESC"]' ); ?>
	</section>
	<?php
}

/**
 * Elementos de la tarjeta de producto (precio, envío gratis, rating) estilo marketplace.
 */
function tc_ml_product_card_elements() {
	global $product;
	$price_suffix = '';
	if ( $product ) {
		if ( $product->get_regular_price() && $product->get_sale_price() ) {
			$regular  = (float) $product->get_regular_price();
			$sale     = (float) $product->get_sale_price();
			$discount = ( $regular > 0 && $sale < $regular ) ? round( ( ( $regular - $sale ) / $regular ) * 100 ) : 0;
			if ( $discount > 0 ) {
				$price_suffix = '<span class="tc-ml-discount">-' . intval( $discount ) . '%</span>';
			}
		}
	}
	?>
	<div class="tc-ml-card-cond">
		<span class="tc-ml-card-new">Nuevo</span>
		<span class="tc-ml-card-sold">Más vendido</span>
	</div>
	<div class="tc-ml-card-ratings">
		<span class="tc-ml-stars" aria-label="5 de 5 estrellas">★★★★★</span>
		<span class="tc-ml-rating-sep">(48)</span>
	</div>
	<?php echo $price_suffix; // phpcs:ignore WordPress.Security.EscapeOutput ?>
	<div class="tc-ml-card-meta">
		<span class="tc-ml-shipping-free">
			<svg width="13" height="13" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.2"><rect x="1" y="3" width="15" height="13"/><polygon points="16 8 20 8 23 11 23 16 16 16 16 8"/><circle cx="5.5" cy="18.5" r="2.5"/><circle cx="18.5" cy="18.5" r="2.5"/></svg>
			Envía gratis
		</span>
	</div>
	<div class="tc-ml-card-seller-line">Vendido por <strong>Tienda Chile</strong></div>
	<?php
}

/**
 * Sidebar de filtros de la tienda (marketplace).
 */
function tc_ml_shop_filters() {
	$shop_url   = function_exists( 'wc_get_page_permalink' ) ? wc_get_page_permalink( 'shop' ) : home_url( '/tienda' );
	$min_price  = isset( $_GET['min_price'] ) ? absint( $_GET['min_price'] ) : ''; // phpcs:ignore WordPress.Security.NonceVerification.Recommended
	$max_price  = isset( $_GET['max_price'] ) ? absint( $_GET['max_price'] ) : ''; // phpcs:ignore WordPress.Security.NonceVerification.Recommended
	$current_cat = ( function_exists( 'is_product_category' ) && is_product_category() ) ? get_queried_object()->slug : '';
	$cats       = array(
		array( 'belleza', 'Belleza & Cuidado' ),
		array( 'tecnologia', 'Tecnología' ),
		array( 'electrodomesticos', 'Hogar & Electrodomésticos' ),
		array( 'estilo-de-vida', 'Estilo de Vida' ),
	);
	?>
	<div class="tc-ml-filters">
		<h3 class="tc-ml-filter-title">Filtrar por</h3>

		<div class="tc-ml-filter-group">
			<h4>Categorías</h4>
			<ul class="tc-ml-filter-list">
				<li><a class="<?php echo ( function_exists( 'is_shop' ) && is_shop() ) ? 'is-active' : ''; ?>" href="<?php echo esc_url( $shop_url ); ?>">Todos los productos</a></li>
				<?php foreach ( $cats as $cat ) : ?>
					<li><a class="<?php echo $current_cat === $cat[0] ? 'is-active' : ''; ?>" href="<?php echo esc_url( nike_get_cat_url( $cat[0] ) ); ?>"><?php echo esc_html( $cat[1] ); ?></a></li>
				<?php endforeach; ?>
			</ul>
		</div>

		<div class="tc-ml-filter-group">
			<h4>Precio (CLP)</h4>
			<form method="get" class="tc-ml-price-form" action="<?php echo esc_url( $shop_url ); ?>">
				<div class="tc-ml-price-inputs">
					<input type="number" name="min_price" min="0" step="1000" placeholder="Mín" value="<?php echo esc_attr( $min_price ); ?>" aria-label="Precio mínimo" />
					<span class="tc-ml-price-sep">-</span>
					<input type="number" name="max_price" min="0" step="1000" placeholder="Máx" value="<?php echo esc_attr( $max_price ); ?>" aria-label="Precio máximo" />
				</div>
				<button type="submit" class="tc-ml-price-btn">Aplicar</button>
			</form>
		</div>

		<div class="tc-ml-filter-group">
			<h4>Despacho</h4>
			<ul class="tc-ml-filter-list">
				<li><a href="<?php echo esc_url( $shop_url ); ?>">Envío gratis desde CLP$50.000</a></li>
				<li><a href="<?php echo esc_url( nike_get_cat_url( 'tecnologia' ) ); ?>">Televisores y audio</a></li>
			</ul>
		</div>

		<div class="tc-ml-filter-safe">
			<svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8"><path d="M12 22s8-4 8-10V5l-8-3-8 3v7c0 6 8 10 8 10z"/></svg>
			<span><strong>Compra Protegida</strong><br/>Devolución gratis en 30 días</span>
		</div>
	</div>
	<?php
}

/**
 * Extras del buy box de la ficha de producto (marketplace).
 */
function tc_ml_buybox_extras() {
	global $product;
	if ( ! $product ) {
		return;
	}
	$price = (float) $product->get_price();
	$cuota = ( $price > 0 ) ? round( $price / 6 ) : 0;
	?>
	<div class="tc-ml-buybox-extras">
		<p class="tc-ml-cuotas">
			<strong><u>6 cuotas de CLP$<?php echo esc_html( number_format( $cuota, 0, ',', '.' ) ); ?></u></strong>
			<span>&nbsp;por Webpay Plus</span>
		</p>
		<p class="tc-ml-protegida">
			<svg width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M12 22s8-4 8-10V5l-8-3-8 3v7c0 6 8 10 8 10z"/></svg>
			Compra Protegida · Garantía oficial 6 meses
		</p>
		<p class="tc-ml-seller-line">Vendido y despachado por <strong>Tienda Chile</strong></p>
	</div>
	<?php
}

/**
 * Barra sticky móvil de compra en la ficha de producto.
 */
function tc_ml_mobile_sticky_buy() {
	global $product;
	if ( ! $product ) {
		return;
	}
	$price = (float) $product->get_price();
	$cuota = ( $price > 0 ) ? round( $price / 6 ) : 0;
	?>
	<div class="tc-ml-sticky-buy">
		<div class="tc-ml-sticky-info">
			<span class="tc-ml-sticky-price"><?php echo wp_kses_post( $product->get_price_html() ); ?></span>
			<span class="tc-ml-sticky-quota">6 cuotas de CLP$<?php echo esc_html( number_format( $cuota, 0, ',', '.' ) ); ?></span>
		</div>
		<button type="button" class="tc-ml-sticky-buy-btn">Comprar ahora</button>
	</div>
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
					<span>Webpay Plus</span>
					<span>Transbank</span>
					<span>CuentaRUT</span>
					<span>Mercado Pago</span>
				</div>
			</div>
			<div class="tc-ml-footer-col">
				<h4>Despacho</h4>
				<div class="tc-ml-pay-badges">
					<span>Chilexpress</span>
					<span>Starken</span>
					<span>Blue Express</span>
				</div>
				<p class="tc-ml-footer-legal">© <?php echo esc_html( date( 'Y' ) ); ?> TIENDA CHILE OFICIAL • Todos los derechos reservados. Hecho en Chile.</p>
			</div>
		</div>
	</div>
	<?php
}