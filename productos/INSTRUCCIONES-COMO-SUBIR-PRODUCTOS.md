# Cómo subir productos a la tienda

Esta guía explica las **dos formas** de agregar productos a tu tienda en WooCommerce.
No necesitas saber programar. Tu tienda ya está instalada y lista.

---

## Índice
1. [Acceder al panel](#1-acceder-al-panel)
2. [Opción A: Subir un producto a la vez (manual)](#opcion-a-subir-un-producto-a-la-vez-manual)
3. [Opción B: Subir muchos productos con un CSV (recomendado para 300+)](#opcion-b-subir-muchos-productos-con-un-csv)
4. [Preguntas frecuentes](#4-preguntas-frecuentes)

---

## 1. Acceder al panel

1. Abre tu navegador.
2. Entra a la dirección de tu panel: `http://127.0.0.1:10004/wp-admin`
3. Inicia sesión con tu **usuario de administrador / colaborador** (el que te entregue el programador).
4. Verás el escritorio de WordPress. A la izquierda, en el menú lateral, está **Productos** (WooCommerce → Productos).

---

## Opción A: Subir un producto a la vez (manual)

Esto sirve para productos sueltos o para arreglar detalles.

1. En el panel, ve a **Productos** → **Añadir nuevo**.
2. Completa los campos principales:
   - **Nombre del producto**: ejemplo `Lápiz Labial Rojo`.
   - **Descripción corta**: una frase de venta, ejemplo `Labial de larga duración, color rojo intenso.`
   - **Descripción**: texto más completo.
   - **Datos del producto** (al costado o abajo):
     - **Precio regular**: ejemplo `5990` (en pesos chilenos, sin puntos ni símbolo).
     - **Precio de oferta** *(opcional)*: si quieres mostrarlo en oferta.
     - **SKU**: código único, ejemplo `MAQ-001`.
     - **Existencias / Stock**: cantidad disponible.
   - **Categorías** (menú derecho): elige la categoría, por ejemplo `Maquillaje → Labios`.
   - **Imagen del producto**: sube la foto en `Imagen del producto` y `Galería`.
3. Pulsa **Publicar**.

> Consejo: los precios van en **pesos chilenos** (CLP) sin decimales. La IVA (19%) ya está configurada y se suma automáticamente.

---

## Opción B: Subir muchos productos con un CSV (recomendado para 300+)

Si tienes una lista de productos (por ejemplo un Excel), la forma más rápida es importarlos con un **CSV**.

### Paso 1 — Obtén la plantilla
En la carpeta de este proyecto está el archivo:
`productos/plantilla-30-productos.csv`

Puedes:
- Abrirlo con **Excel** o **Google Sheets** para ver la estructura.
- Borrar las filas de ejemplo y dejar solo la cabecera (primera línea).
- O crear tu propio archivo respetando esa misma cabecera.

### Paso 2 — Llena tus productos en el CSV
Cada fila es un producto. Las columnas más importantes son:

| Columna | Qué poner |
|---|---|
| `Type` | `simple` (producto normal, sin tallas/colores) |
| `SKU` | Código único, ej. `MAQ-001` |
| `Name` | Nombre del producto |
| `Regular price` | Precio en CLP, ej. `5990` |
| `Sale price` | Precio de oferta (déjalo vacío si no hay) |
| `Categories` | Categoría, ej. `Maquillaje > Labios` |
| `Images` | URL de la foto del producto |
| `Short description` | Frase corta de venta |
| `Description` | Descripción completa |

- Guarda el archivo como **CSV UTF-8** (en Excel: Archivo → Guardar como → CSV UTF-8).
- Guárdalo sin la columna `ID` (o déjala vacía) para que cree productos nuevos y no los actualice.

### Paso 3 — Importa el CSV en la tienda
1. En el panel ve a **Productos** → **Importar** (está arriba a la derecha, junto a "Añadir nuevo").
2. Haz clic en **Elegir archivo** y selecciona tu CSV.
3. Haz clic en **Continuar** (siguiente paso).
4. Configura:
   - **Actualizar productos existentes**: elige `No` la primera vez (para no pisar los que ya tienes).
   - Deja el resto por defecto.
5. Haz clic en **Ejecutar el importador**.
6. ¡Listo! Verás un mensaje de productos importados.

---

## 4. Preguntas frecuentes

**¿Dónde veo mis productos después?**
En **Productos** → **Todos los productos** y en tu tienda pública en la página `Tienda`.

**El cliente compra pero no hay botón de pago, ¿qué hago?**
Las pasarelas de pago chilenas (Webpay, Khipu, etc.) aún no están conectadas. Esa parte la configura el programador cuando tengas las cuentas. Mientras tanto, se puede usar "Contra reembolso" o "Transferencia".

**¿Las fotos de mis productos?**
Puedes subirlas directamente en cada producto (Opción A) o dar la URL en la columna `Images` del CSV (Opción B).

**¿Cómo agrego tallas, colores o variantes?**
Escribe un mensaje al programador. Esa configuración es más avanzada y se hace producto por producto.

**¿Cuántas categorías puedo crear?**
Todas las que quieras. En el menú **Productos** → **Categorías** puedes crearlas y organizarlas.

---

¿Dudas? Contacta al programador para que te ayude con tu primer CSV de prueba.
