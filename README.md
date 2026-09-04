# Tienda Chile 🇨🇱 - WooCommerce Premium E-Commerce

**Tienda Chile** es una solución e-commerce completa y de alta conversión basada en **WordPress + WooCommerce**, diseñada específicamente para el mercado chileno. Cuenta con un tema hijo personalizado (`nike-style`), diseño DTC de clase mundial, integración de medios de pago locales (Webpay, Transbank, Mercado Pago, CuentaRUT) y opciones de envío (Chilexpress, Starken, Blue Express).

---

## 🚀 Guía Rápida para Continuar en Casa

Si vas a continuar el trabajo en la computadora de tu casa, sigue estos sencillos pasos:

### 1. Clonar el Repositorio
```bash
git clone https://github.com/Manuel-GY/tienda-chile-woocommerce.git
cd tienda-chile-woocommerce
```

### 2. Configurar en Local (LocalWP)
1. Descarga e instala **Local (LocalWP)** desde [https://localwp.com](https://localwp.com).
2. Crea un nuevo sitio en Local llamado `tienda-online`.
3. Copia el contenido de la carpeta `wp-content/themes/nike-style` dentro de la carpeta activa de tu sitio en Local:
   `...\Local Sites\tienda-online\app\public\wp-content\themes\nike-style`
4. Importa la base de datos `sql/tienda-chile.sql` en MySQL desde la pestaña **Database > Adminer** (o vía terminal con `mysql`).

### 3. Abrir la Tienda
- En tu navegador, ingresa a: **`http://tienda-online.local`** (o **`http://localhost:10004`**).

---

## ✨ Características y Diseño UI/UX

### 1. Identidad de Marca y Logo SVG
- **Logo Vectorial Oficial**: Monograma SVG exclusivo con la **Estrella de Chile 🇨🇱** e iso-tipo premium adaptado para modo claro y oscuro.
- **Paleta de Colores**: Off-black elegante (`#18181b`), blanco impoluto (`#ffffff`), grises de superficie suaves (`#f8fafc`) y acentos en rojo de oferta (`#ef4444`).
- **Esquinas Redondeadas Suaves**: Bordes estilizados (`6px` a `10px`) en tarjetas, badges y botones para una navegación fluida.

### 2. Hero Banner e Imágenes de Alta Resolución
- Banner principal de estilo de vida con overlay degradado oscuro, insignia de temporada (`⚡ COLECCIÓN 2026`) y botones CTA de rápida conversión.
- Tarjetas visuales de categorías destacadas (**Belleza & Cuidado**, **Tecnología Premium**, **Estilo de Vida**).

### 3. Redes Sociales & WhatsApp Flotante
- **Barra de Redes Sociales**: Iconos vectoriales de Instagram (`@tiendachile.cl`), TikTok (`@tiendachile`) y Facebook integrados en el topbar y footer.
- **Botón Flotante de WhatsApp**: Fijo en la esquina inferior derecha en verde oficial (`#25d366`) con animación interactiva y etiqueta: **`¿Dudas? Chatea con nosotros 💬`**.

### 4. Tarjetas de Producto de Alta Conversión
- Calificaciones con **estrellas de oro** (★★★★★).
- Badges de descuento automático (`-25% DCTO`).
- Indicadores de **Despacho Rápido 24h a todo Chile**.
- Formato de precios nativo en pesos chilenos (`$XX.XXX CLP`).

### 5. Pie de Página (Footer) con Sellos de Confianza
- **Medios de Pago**: Webpay Plus, Transbank, Mercado Pago, CuentaRUT / BancoEstado.
- **Despachos**: Chilexpress, Starken, Blue Express.

---

## 🛍️ Administración de Productos

El proyecto incluye 30 productos iniciales distribuidos en las categorías:
- **Maquillaje**: Labios, Ojos, Rostro, Uñas.
- **Electrónica**: Auriculares Bluetooth, Cargadores, Cables, Accesorios.
- **Electrodomésticos**: Cocina, Limpieza, Pequeños electrodomésticos.

Para importar más productos de forma masiva:
1. Edita la plantilla CSV en `productos/plantilla-30-productos.csv`.
2. Ejecuta el script `importar-productos.php` vía WP-CLI o navegador.

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
├── wp-content/
│   ├── plugins/                         # WooCommerce + HUP Kit Chile
│   └── themes/
│       └── nike-style/                  # Tema hijo personalizado
│           ├── functions.php            # Lógica PHP, hooks, SVG logos y widgets
│           ├── style.css                # Diseño UI/UX responsive premium
│           └── images/                  # Imágenes de alta resolución
├── wp-config-sample.php
└── README.md                            # Documentación del proyecto
```

---

## 🛠️ Tecnologías Utilizadas
- **WordPress** 7.1
- **WooCommerce** 11.1.0
- **PHP** 8.2+
- **HUP Kit Ecommerce Chile** (RUT, Regiones y Comunas)
- **LocalWP** (Entorno de desarrollo local)
