# Tienda Chile - WooCommerce

Tienda online con WordPress y WooCommerce para el mercado chileno.

## Instalación en Hosting

### 1. Subir archivos al hosting
```bash
# Subir wp-content/ (themes y plugins) vía FTP o SSH
# Subir sql/tienda-chile.sql para importar la base de datos
```

### 2. Importar base de datos
```bash
mysql -u usuario -p base_de_datos < sql/tienda-chile.sql
```

### 3. Configurar wp-config.php
- Copiar `wp-config-sample.php` a `wp-config.php`
- Editar credenciales de base de datos
- Configurar claves de autenticación en https://api.wordpress.org/secret-key/1.1/salt/

### 4. Plugins instalados
- **WooCommerce** (11.1.0) - Tienda online
- **HUP Kit Ecommerce Chile** - Regiones, comunas, RUT, despacho

### 5. Configuración de WooCommerce
- País: Chile
- Moneda: CLP (Peso Chileno)
- Impuestos: IVA 19% incluido en precios

### 6. Pasarelas de pago
Las pasarelas chilenas deben configurarse manualmente en WooCommerce > Ajustes > Pagos:
- **Webpay Plus** (Transbank) - Plugin oficial
- **Khipu** - Plugin oficial
- **Mercado Pago** - Plugin oficial
- **Flow** - Plugin de terceros

### 7. Redes sociales
Configurar enlace en WooCommerce > Apariencia > Menús:
- Facebook
- Instagram
- TikTok

## Productos (30 iniciales)

Importados inicialmente con precios en CLP (IVA 19% incluido). Categorías creadas:

```
Maquillaje
├── Labios (MAQ-001)
├── Ojos (MAQ-002 a MAQ-005, MAQ-010)
├── Rostro (MAQ-006, MAQ-007, MAQ-009)
└── Uñas (MAQ-008)
Electrónica
├── Auriculares (ELEC-001, ELEC-007)
├── Cables y Cargadores (ELEC-002, ELEC-003, ELEC-010)
└── Accesorios (ELEC-004 a ELEC-006, ELEC-008, ELEC-009)
Electrodomésticos
├── Cocina (ELE-001, ELE-002, ELE-004, ELE-005)
├── Limpieza (ELE-003, ELE-010)
└── Pequeños (ELE-008)
Otros
└── Accesorios (OT-001, OT-002, OT-003)
```

**Para importar más productos:** usar `importar-productos.php` adjuntando el CSV de la plantilla `productos/plantilla-30-productos.csv`.

## Estructura del proyecto

```
proyecto-tienda-chile/
├── sql/
│   └── tienda-chile.sql      # Base de datos exportada
├── productos/
│   └── plantilla-30-productos.csv  # Plantilla para importar productos
├── importar-productos.php   # Script de importación de productos
├── wp-content/
│   ├── plugins/              # Plugins instalados
│   └── themes/
│       └── child-storefront/ # Tema hijo
├── wp-config-sample.php      # Plantilla de configuración
└── README.md                 # Este archivo
```

## Desarrollo local

Para desarrollar localmente, usar LocalWP:
1. Descargar LocalWP: https://localwp.com
2. Crear sitio "tienda-online"
3. Importar base de datos desde `sql/tienda-chile.sql`
4. Acceder a `http://tienda-online.local`

## Soporte

- WooCommerce: https://woocommerce.com/support/
- WordPress: https://wordpress.org/support/
- HUP Kit Chile: https://wordpress.org/plugins/hup-kit-ecommerce-chile/
