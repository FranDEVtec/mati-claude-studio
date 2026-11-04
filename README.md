# Mati Claude Studio

Tu estudio de edición con Claude: le mandás crudos o un reel de referencia, conversás con él y te devuelve reels y creativos con tu marca. No hace falta saber programar.

## Instalación

1. Abrí la app **Terminal** (Mac) o **PowerShell** (Windows).
2. Pegá este comando.

**Mac**
```bash
git clone https://github.com/FranDEVtec/mati-claude-studio.git ~/mati-claude-studio && bash ~/mati-claude-studio/install.sh
```

**Windows**
```powershell
git clone https://github.com/FranDEVtec/mati-claude-studio.git $HOME\mati-claude-studio; powershell -ExecutionPolicy Bypass -File $HOME\mati-claude-studio\install.ps1
```

Si te dice que falta `git`, en Mac aceptá la instalación que te ofrece; en Windows instalalo con `winget install Git.Git` y volvé a pegar el comando.

3. Abrí Claude y escribile **hola**:
```bash
cd ~/mati-claude-studio
claude
```

La primera vez te va a pedir iniciar sesión con tu cuenta de Claude (necesitás un plan pago). Después te guía él.

## Cómo se usa

Le hablás normal:

- "Copiá este reel tal cual con mi crudo": pegás el link y arrastrás el video a la Terminal.
- "De este crudo sacame 20 creativos".
- "Cambiá el subtítulo del segundo 12".
- "Me encantó, guardalo": lo convierte en una skill, y la próxima vez lo repite igual.
- "Revisá si mi compu está segura".

Dejá tus videos en `crudos/` y las referencias en `referencias/`. Lo terminado aparece en `entregas/`.

## Qué trae

| Parte | Para qué sirve |
|---|---|
| `arrancar` | Te conoce y te enseña Claude de a poco |
| `marca-mati` | Tu copy, tus formatos y tu estética |
| `copiar-referencia` | Recrea un reel que te gusta con tu material |
| `crudos-a-creativos` | De un crudo a 20 anuncios distintos |
| `guardar-como-skill` | Convierte lo que te gustó en una receta repetible |
| `seguridad` | Revisa tu compu y cuida tus claves |
| HyperFrames, Remotion, watch, ffmpeg | Las herramientas de edición, se instalan solas |

## Licencias

Este repo no copia skills de terceros: el instalador las baja de sus fuentes oficiales.

- HyperFrames: Apache-2.0. `watch` y `ffmpeg`: MIT.
- **Remotion:** es gratis para personas y empresas de hasta 3 empleados. Con más, necesitás licencia de empresa: [remotion.dev/license](https://www.remotion.dev/license). Por eso el sistema edita con HyperFrames y usa Remotion solo si lo pedís. La skill `remotion-license` explica los detalles.
