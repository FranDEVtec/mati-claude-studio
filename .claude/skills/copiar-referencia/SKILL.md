---
name: copiar-referencia
description: Recrear un reel o video de referencia con el material de Mati. Usar cuando pase un link o video y diga "igual a este", "copiá este", "tal cual", "mismo estilo", "mismos subtítulos o zooms".
---

# Copiar una referencia

Se copia con medidas, no a ojo. Se copia el estilo y la estructura: no la música, las imágenes ni los textos de otro.

## 1. Conseguí la referencia
Bajala con `yt-dlp` a `referencias/`. Si Instagram la bloquea, probá `--cookies-from-browser chrome`, con su OK, o pedile que descargue el video y lo arrastre.

## 2. Medí antes de editar
Usá `watch` y la skill `reverse-any-video` si ayuda. Anotá en `referencias/<nombre>/FICHA.md`:
- **Tomas:** tiempo de cada corte (con `ffmpeg` y `select='gt(scene,0.3)'`).
- **Zooms:** en qué segundo, cuánto, de golpe o suave.
- **Subtítulos:** fuente aproximada, peso, tamaño en px, color, sombra, posición, palabras por bloque, animación de entrada en milisegundos.
- **Audio:** música, efectos y volumen.
- **Color:** contraste y temperatura.

Mirá cuadros en grande: en los puntos de cambio, cuadro por cuadro.

## 3. Avisá qué no se podrá igualar
Si faltan tomas para repetir sus cortes, o no se puede identificar la fuente, decilo y dale opciones antes de renderizar.

## 4. Construí con `hyperframes`
Transcribí su crudo con `media-use` y armá subtítulos, zooms y animaciones siguiendo la skill `hyperframes`. Para repetir un formato ya probado, usá `style-sampling`. Si el texto va detrás de la persona, recortala con la herramienta de quitar fondo de `media-use`.

## 5. Probá 15 segundos
Armá una imagen con la referencia y tu versión lado a lado en los mismos momentos, y miralas de verdad. Corregí y mostrásela.

## 6. Render final
Solo con su OK. Guardá en `entregas/`, decí qué quedó igual, qué es diferente y qué no revisaste. Proponé guardar la receta si le gustó.
