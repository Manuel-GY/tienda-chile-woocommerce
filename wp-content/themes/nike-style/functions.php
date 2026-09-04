<?php
/**
 * Nike Style - Tema hijo de Storefront
 * hereda funcionalidad del tema padre
 */

// Cargar estilos del tema padre y hijo
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

// Estilos para el editor de bloques Gutenberg
function nike_style_editor_styles() {
    add_editor_style( 'style.css' );
}
add_action( 'after_setup_theme', 'nike_style_editor_styles' );

// Agregar soporte para imágenes destacadas del tema padre
add_theme_support( 'post-thumbnails' );

// Configurar el formato de número de precios en CLP
add_filter('wc_price_args', function($args) {
    return array(
        'ex_tax_label'       => false,
        'currency_symbol'    => '$',
        'decimal_separator'  => ',',
        'thousand_separator' => '.',
        'decimals'           => 0,
        'price_format'       => '<span class="amount">%2$s&nbsp;%1$s</span>'
    );
});

// Navegación de categorías en el header (opcional)
function nike_style_register_menus() {
    register_nav_menus(array(
        'primary' => 'Menú principal',
        'nike-secondary' => 'Menú superior (secundario)'
    ));
}
add_action('after_setup_theme', 'nike_style_register_menus');

// Agregar enlaces sociales en el header, estilo Nike
function nike_style_social_header() {
    echo '<div class="nike-social-icons">';
    echo '<a href="https://www.facebook.com" target="_blank" rel="noopener" aria-label="Facebook" class="nike-social"><svg viewBox="0 0 24 24" width="22" height="22" fill="currentColor"><path d="M22 12c0-5.52-4.48-10-10-10S2 6.48 2 12c0 4.84 3.44 8.87 8 9.8V15H8v-3h2V9.5C10 7.57 11.57 6 13.5 6H16v3h-2c-.55 0-1 .45-1 1v2h3l-.5 3H13v6.95c4.66-.6 8-4.44 8-9.15z"/></svg></a>';
    echo '<a href="https://www.instagram.com" target="_blank" rel="noopener" aria-label="Instagram" class="nike-social"><svg viewBox="0 0 24 24" width="22" height="22" fill="currentColor"><path d="M12 2.2c3.2 0 3.58.01 4.85.07 1.17.05 1.8.25 2.23.41.56.22.96.48 1.38.9.42.42.68.82.9 1.38.16.42.36 1.06.41 2.23.06 1.27.07 1.65.07 4.85s-.01 3.58-.07 4.85c-.05 1.17-.25 1.8-.41 2.23-.22.56-.48.96-.9 1.38-.42.42-.82.68-1.38.9-.42.16-1.06.36-2.23.41-1.27.06-1.65.07-4.85.07s-3.58-.01-4.85-.07c-1.17-.05-1.8-.25-2.23-.41a3.7 3.7 0 01-1.38-.9 3.7 3.7 0 01-.9-1.38c-.16-.42-.36-1.06-.41-2.23C2.21 15.58 2.2 15.2 2.2 12s.01-3.58.07-4.85c.05-1.17.25-1.8.41-2.23.22-.56.48-.96.9-1.38.42-.42.82-.68 1.38-.9.42-.16 1.06-.36 2.23-.41C8.42 2.21 8.8 2.2 12 2.2zm0 1.8c-3.13 0-3.5.01-4.73.07-.98.04-1.51.21-1.87.35-.47.18-.8.4-1.15.75-.35.35-.57.68-.75 1.15-.14.36-.31.89-.35 1.87C3.21 8.5 3.2 8.87 3.2 12s.01 3.5.07 4.73c.04.98.21 1.51.35 1.87.18.47.4.8.75 1.15.35.35.68.57 1.15.75.36.14.89.31 1.87.35 1.23.06 1.6.07 4.73.07s3.5-.01 4.73-.07c.98-.04 1.51-.21 1.87-.35.47-.18.8-.4 1.15-.75.35-.35.57-.68.75-1.15.14-.36.31-.89.35-1.87.06-1.23.07-1.6.07-4.73s-.01-3.5-.07-4.73c-.04-.98-.21-1.51-.35-1.87-.18-.47-.4-.8-.75-1.15-.35-.35-.68-.57-1.15-.75-.36-.14-.89-.31-1.87-.35C15.5 4.01 15.13 4 12 4zm0 3.06A4.94 4.94 0 1016.94 12 4.94 4.94 0 0012 7.06zm0 1.8a3.14 3.14 0 110 6.28 3.14 3.14 0 010-6.28zm5.15-3.61a1.15 1.15 0 110 2.3 1.15 1.15 0 010-2.3z"/></svg></a>';
    echo '<a href="https://www.tiktok.com" target="_blank" rel="noopener" aria-label="TikTok" class="nike-social"><svg viewBox="0 0 24 24" width="22" height="22" fill="currentColor"><path d="M19.59 6.69a4.83 4.83 0 01-3.77-4.25V2h-3.45v13.67a2.89 2.89 0 01-5.2 1.74 2.89 2.89 0 012.31-4.64 2.93 2.93 0 01.88.13V9.4a6.84 6.84 0 00-1-.05A6.33 6.33 0 005 20.1a6.34 6.34 0 0010.86-4.43v-7a8.16 8.16 0 004.77 1.52v-3.4a4.85 4.85 0 01-1-.1z"/></svg></a>';
    echo '</div>';
}
add_action('storefront_header', 'nike_style_social_header', 20);

// Estilos para iconos sociales
function nike_style_social_css() {
    echo '<style>
    .nike-social-icons {
        display: flex;
        gap: 12px;
        align-items: center;
        margin-top: 8px;
    }
    .nike-social {
        color: #111;
        display: inline-flex;
        align-items: center;
        transition: color 0.2s;
    }
    .nike-social:hover {
        color: #757575;
    }
    @media (min-width: 768px) {
        .nike-social-icons {
            position: absolute;
            top: 50%;
            right: 0;
            transform: translateY(-50%);
            margin-top: 0;
        }
    }
    </style>';
}
add_action('wp_head', 'nike_style_social_css');

// Agregar texto de bienvenida arriba (barra superior estilo Nike)
function nike_style_top_bar() {
    echo '<div class="nike-topbar"><span>Envío gratis por compras sobre $50.000 CLP</span></div>';
}
add_action('storefront_before_header', 'nike_style_top_bar', 5);

// CSS para barra superior
function nike_style_topbar_css() {
    echo '<style>
    .nike-topbar {
        background: #111;
        color: #fff;
        text-align: center;
        padding: 10px 20px;
        font-size: 13px;
        font-weight: 600;
        letter-spacing: 0.05em;
        text-transform: uppercase;
    }
    .nike-topbar a { color: #fff; text-decoration: underline; }
    </style>';
}
add_action('wp_head', 'nike_style_topbar_css');
