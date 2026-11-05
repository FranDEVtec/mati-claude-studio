# Mati Claude Studio

Tu estudio de edición con Claude: le mandás crudos o un reel de referencia, conversás con él y te devuelve reels y creativos con tu marca. No hace falta saber programar.

## Instalación

**1. Instalá Claude Code.** Abrí **Terminal** (Mac) o **PowerShell** (Windows) y pegá:

Mac:
```bash
curl -fsSL https://claude.ai/install.sh | bash
```

Windows:
```powershell
irm https://claude.ai/install.ps1 | iex
```

**2. Abrilo.** Cerrá y volvé a abrir la ventana, escribí `claude` y apretá Enter. La primera vez te pide iniciar sesión con tu cuenta de Claude (necesitás un plan pago).

**3. Pegale este mensaje a Claude:**

```text
Hola Claude. Nunca usé esto, así que guiame paso a paso y sin términos técnicos.
Instalá mi estudio de edición:
1. Descargá https://github.com/FranDEVtec/mati-claude-studio en la carpeta mati-claude-studio dentro de mi usuario. Si falta git, instalalo.
2. Leé install.sh y install.ps1, y contame en dos líneas qué van a instalar.
3. Corré el que corresponda a mi compu (Mac: install.sh, Windows: install.ps1). Avisame antes si te hace falta mi contraseña, que la escribo yo en la Terminal.
4. Si algo falla, resolvelo y volvé a comprobar hasta que el chequeo final dé "Listo".
5. Cuando termine, decime exactamente qué escribir para abrirte dentro de esa carpeta y empezar.
```

Claude te va a pedir permiso antes de varias acciones: leelas y aprobá las que te cierren.

**4. Empezá.** Abrí Claude dentro de la carpeta y escribile **hola**:

```bash
cd ~/mati-claude-studio
claude
```

Desde ahí te guía él.

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
| `security-audit` | De Cloudflare: audita a fondo el código de proyectos y skills |
| `skill-stocktake` | Audita tus skills: cuáles sirven, cuáles sobran y cuáles mejorar |
| HyperFrames, Remotion, watch, ffmpeg | Las herramientas de edición, se instalan solas |

## Licencias

Este repo no copia skills de terceros: el instalador las baja de sus fuentes oficiales.

- HyperFrames: Apache-2.0. `watch`, `ffmpeg`, `skill-stocktake` y `security-audit`: MIT.
- **Remotion:** es gratis para personas y empresas de hasta 3 empleados. Con más, necesitás licencia de empresa: [remotion.dev/license](https://www.remotion.dev/license). Por eso el sistema edita con HyperFrames y usa Remotion solo si lo pedís. La skill `remotion-license` explica los detalles.
