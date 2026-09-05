# Tienda Chile 🇨🇱 - E-Commerce DTC Ultra Luxury & Mobile Responsive

**Tienda Chile** es una tienda e-commerce de clase mundial construida sobre **WordPress + WooCommerce** con un tema personalizado ultra-luxury (`tienda-chile`). Ofrece una experiencia de usuario DTC (Direct-To-Consumer) prémium, 100% responsiva tanto en escritorio (PC) como en dispositivos móviles (iOS / Android), optimizada para conversión en el mercado chileno.

---

## 🚀 Guía Rápida para Continuar en Casa

Si vas a continuar el trabajo o despliegue en la computadora de tu casa:

### 1. Clonar el Repositorio
```bash
git clone https://github.com/Manuel-GY/tienda-chile-woocommerce.git
cd tienda-chile-woocommerce
```

### 2. Configurar en LocalWP (o Servidor Local)
1. Instala **Local (LocalWP)** desde [https://localwp.com](https://localwp.com).
2. Crea un nuevo sitio en Local llamado `tienda-online`.
3. Copia la carpeta del tema `wp-content/themes/tienda-chile` a la ruta activa de tu sitio:
   `...\Local Sites\tienda-online\app\public\wp-content\themes\tienda-chile`
4. Importa la base de datos `sql/tienda-chile.sql` usando **Database > Adminer** o mediante la línea de comandos `mysql`.

### 3. Visualizar y Probar
- Abre en el navegador: **`http://localhost:10004`** o **`http://tienda-online.local`**.

---

## ✨ Características y Diseño UI/UX

### 💎 Experiencia Desktop PC (Ultra Luxury)
- **Header Cristal Flotante (Glassmorphism)**: Menú de navegación elevado con `backdrop-filter: blur(12px)`, barra ticker superior con anuncios dinámicos ("⚡ ENVÍO GRATIS EN SANTIAGO"), buscador amplio y accesos directos al carrito y cuenta.
- **Hero Section Split Editorial**: Diseño asimétrico de revista de moda/tecnología con insignias de edición limitada, banner de estilo de vida en alta resolución y llamadas a la acción (CTA) duales.
- **Bento Grid de Categorías (3 Columnas)**: Tarjetas interactivas con efecto zoom parallax para **Belleza & Cuidado**, **Tecnología Premium** y **Estilo de Vida**.
- **Grilla de Productos Catalog (4 Columnas)**: Tarjetas con bordes sutiles, elevación suave en hover, valoraciones con **estrellas doradas (★★★★★ 5.0)**, etiquetas de descuento (`-25% DCTO`) e insignias de despachos 24h.
- **Sección Newsletter con Captura de Leads**: Formulario exclusivo ofreciendo **10% DCTO** en la primera compra.
- **Footer de Lujo a 4 Columnas**: Información de marca, enlaces rápidos, redes sociales y sellos de confianza de medios de pago y empresas de courier en Chile.

### 📱 Experiencia Móvil (100% Responsive)
- **Mobile Bottom Navigation Bar**: Barra de navegación táctil fija en la parte inferior para dispositivos móviles (< 768px) con accesos rápidos a **Inicio**, **Tienda**, **Buscar**, **Carrito** (con contador en vivo) y **Mi Cuenta**.
- **Zonas Táctiles Optimizadas (44px+)**: Botones de compra y navegación ajustados según las especificaciones de Apple iOS Human Interface Guidelines y Android Material Design.
- **Botón Flotante de WhatsApp**: Atención al cliente 24/7 (`#25d366`) con animación de pulso y distintivo: **`¿Dudas? Chatea con nosotros 💬`**.

### 📜 Legales, Cookies y Cumplimiento Chileno
- **Banner de Consentimiento de Cookies**: Mensaje emergente con persistencia `localStorage` y aceptación explícita.
- **Modales de Políticas Legales Integrados**:
  - 🔒 **Política de Privacidad** (Ley N° 19.628 de Protección de Datos Personales).
  - 🚚 **Política de Envíos** (Chilexpress, Starken, Blue Express, cobertura nacional y tiempos de entrega).
  - 🔄 **Política de Devoluciones y Garantía Legal** (Ley N° 19.496 del Consumidor, 6 meses de garantía legal y 10 días de retracto).

### 🛒 Sistema de 3 Skins Intercambiables (Toggle Instantáneo)
El tema incluye **tres apariencias intercambiables al instante** sin duplicar lógica de e-commerce chilena (RUT, Región/Comuna, Webpay, CuentaRUT):

- **Toggle instantáneo**: botón flotante abajo a la izquierda (`Estilo Lujo` / `MercadoLibre` / `Boutique Pastel`) que persiste en cookie `tc_look` por 365 días.
- **Compartible por URL**: `?look=lujo`, `?look=ml`, `?look=pastel` (también `marketplace`/`boutique`), ideal para demostraciones al cliente.
- **body class dinámico**: `tc-skin-lujo` / `tc-skin-marketplace` / `tc-skin-pastel`; cada skin inyecta su propio header, home, tarjetas y footer (`skin-mercado-libre.php`, `skin-pastel.php`) y oculta el header de Storefront.

#### 🟡 Look Marketplace (Inspirado en Mercado Libre)
Header amarillo `#FFE600` con buscador grande de productos, barra de categorías, **hero slider con autoplay y dots**, mosaico de categorías + franja de beneficios (**Envío gratis desde CLP$50.000**, **Compra Protegida**), rail horizontal "Nuevos ingresos" con flechas, **sidebar de filtros** en tienda/categoría (categorías + rango de precio CLP), toolbar con conteo y ordenamiento, tarjetas con **precio azul `#3483FA`**, descuento en verde, "Nuevo / Más vendido" y "Vendido por Tienda Chile", buy box con **6 cuotas Webpay y Compra Protegida**, **barra sticky móvil de compra** y footer oscuro con newsletter.
- *Estilo inspirado, no clon*: mantiene la marca **Tienda Chile**, sin logos ni identificadores de Mercado Libre.
- Implementación: `skin-mercado-libre.php` (renders), bloque CSS `SKIN MARKETPLACE` en `style.css`, `js/skin-toggle.js` (toggle), `js/skin-marketplace.js` (slider/rail/sticky).

#### 🌸 Look Boutique Pastel (Editorial de Diseño)
Estética boutique editorial: fondo marfil `#FBF7F3`, tipografía serif (Georgia) en títulos, acentos terracota `#C97064` y salvia `#8FA58C`. Header minimalista con wordmark + nav horizontal, **hero editorial** con imagen en marco orgánico y sello, categorías en tarjetas pastel redondeadas, favoritos con botones pill, footer con newsletter oscuro y badges de pago/despacho.
- Implementación: `skin-pastel.php` (renders), bloque CSS `SKIN BOUTIQUE PASTEL` (todo prefijado `.tc-skin-pastel`).

#### 📸 Fotos reales de productos
Los 30 productos tienen foto real asignada (`_thumbnail_id`) descargada desde **Picsum Photos** (fotos libres, 600×600, deterministas por SKU). Script re-ejecutable e idempotente en `importar-imagenes-productos.php` (CLI), con mapeo SKU→imagen y modo `--force` para re-importar.

---

## 🛍️ Gestión de Productos e Importación Masiva

El proyecto incluye datos de demostración y soporte para importación masiva de productos:
- Plantilla CSV prediseñada en `productos/plantilla-30-productos.csv`.
- Script de importación automática en `importar-productos.php`.
- Asignación inteligente de fotos fall-back en `functions.php` para productos sin imagen asignada.

---

## 📁 Estructura del Proyecto

```
proyecto-tienda-chile/
├── sql/
│   └── tienda-chile.sql                  # Dump completo de la base de datos
├── productos/
│   ├── INSTRUCCIONES-COMO-SUBIR-PRODUCTOS.md
│   └── plantilla-30-productos.csv        # Plantilla CSV para importación
├── importar-productos.php               # Script PHP de importación masiva
├── importar-imagenes-productos.php      # Script PHP CLI: fotos reales por SKU (Picsum, idempotente)
├── wp-content/
│   ├── plugins/                         # WooCommerce + HUP Kit Chile
│   └── themes/
│       └── tienda-chile/                  # Tema personalizado con sistema de 3 skins
│           ├── functions.php            # Lógica PHP, hooks, modales, SVG logos y widgets
│           ├── skin-mercado-libre.php   # Renders del look Marketplace (toggle)
│           ├── skin-pastel.php          # Renders del look Boutique Pastel (toggle)
│           ├── style.css                # Estilos CSS responsive ultra luxury & mobile (+ skins)
│           ├── js/
│           │   ├── skin-toggle.js       # Botón flotante de cambio de apariencia (3 skins)
│           │   └── skin-marketplace.js  # Slider hero, rail horizontal y sticky buy ML
│           └── images/                  # Fotografías de alta resolución (Hero, Beauty, Tech)
├── wp-config-sample.php
└── README.md                            # Documentación del proyecto
```

---

## 📸 Capturas del Demo (Portafolio)

Capturas de referencia del diseño actual en `capturas-portafolio/`:

| Captura | Vista |
|---------|-------|
| `01-home.png` | Home ultra-luxury (hero, bento de categorías, productos destacados) |
| `02-tienda.png` | Catálogo completo (grilla 4 columnas, precios CLP) |
| `03-producto.png` | Ficha de producto (galería, precio, confianza, envío) |
| `04-carrito.png` | Carrito con producto (total CLP, envío, sellos de confianza) |
| `04-cuenta.png` | Mi Cuenta (login/registro) |
| `05-checkout.png` | Checkout chileno (RUT, Región/Comuna, Webpay Plus, CuentaRUT) |
| `ml-01-home.png` | Home look Marketplace (hero slider, mosaico de categorías, rails) |
| `ml-02-tienda.png` | Catálogo look Marketplace (sidebar de filtros, toolbar, tarjetas) |
| `ml-03-producto.png` | Ficha de producto look Marketplace (cuotas Webpay, Compra Protegida) |
| `ml-04-carrito.png` | Carrito look Marketplace |
| `ml-05-checkout.png` | Checkout look Marketplace (RUT, Webpay, stepper amarillo) |
| `pastel-01-home.png` | Home Boutique Pastel (hero editorial, categorías pastel, favoritos) |
| `pastel-02-tienda.png` | Catálogo Boutique Pastel (tarjetas blancas redondeadas, botones pill) |
| `pastel-03-producto.png` | Ficha de producto Boutique Pastel |
| `pastel-04-carrito.png` | Carrito Boutique Pastel |
| `pastel-05-checkout.png` | Checkout Boutique Pastel |

*(Las capturas fueron tomadas a 1440×1000 con navegador headless.)*

---

## 🛠️ Tecnologías Utilizadas
- **WordPress 7.1**
- **WooCommerce 11.1.0**
- **PHP 8.2+**
- **HUP Kit Ecommerce Chile** (RUT, Regiones y Comunas de Chile)
- **CSS3 Moderno** (Flexbox, CSS Grid, Glassmorphism backdrop-blur, Variables CSS)
- **LocalWP** (Entorno de desarrollo local)
