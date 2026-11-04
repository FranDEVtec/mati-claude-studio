#!/usr/bin/env bash
# Instala las herramientas y las skills de edición. Se puede correr más de una vez.
# Uso: bash install.sh          instala
#      bash install.sh --check  solo comprueba
set -u
cd "$(dirname "$0")"
SKILLS=(hyperframes hyperframes-cli hyperframes-registry media-use reverse-any-video remotion-to-hyperframes style-sampling)
REMOTION=(remotion-best-practices remotion-create remotion-render remotion-captions remotion-markup remotion-studio remotion-license)
add() { npx --yes skills add "$1" --skill "${@:2}" -g -a claude-code -y </dev/null >/dev/null 2>&1 && echo "  ok  $1" || { echo "  FALLÓ  $1"; FAIL=1; }; }
FAIL=0
if [ "${1:-}" != "--check" ]; then
  echo "Instalando. Puede tardar unos minutos y pedirte la contraseña de la compu."
  if [ "$(uname)" = Darwin ]; then
    command -v brew >/dev/null || /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    [ -x /opt/homebrew/bin/brew ] && eval "$(/opt/homebrew/bin/brew shellenv)"
    brew install node ffmpeg yt-dlp
  else
    echo "Este script es para Mac. En Windows usá install.ps1."; exit 1
  fi
  command -v claude >/dev/null || curl -fsSL https://claude.ai/install.sh | bash
  export PATH="$HOME/.local/bin:$PATH"
  echo "Skills de edición:"
  add heygen-com/hyperframes "${SKILLS[@]}"
  add bradautomates/claude-video watch
  add digitalsamba/claude-code-video-toolkit ffmpeg
  add remotion-dev/skills "${REMOTION[@]}"
fi
export PATH="$HOME/.local/bin:$PATH"
echo "Comprobación:"
for c in git node npx ffmpeg ffprobe yt-dlp claude; do
  command -v "$c" >/dev/null && echo "  ok  $c" || { echo "  FALTA  $c"; FAIL=1; }
done
for s in "${SKILLS[@]}" "${REMOTION[@]}" watch ffmpeg; do
  [ -f "$HOME/.claude/skills/$s/SKILL.md" ] && echo "  ok  skill $s" || { echo "  FALTA  skill $s"; FAIL=1; }
done
if [ "$FAIL" = 0 ]; then echo "Listo. Escribí: cd ~/mati-claude-studio && claude"; else echo "Faltan cosas. Abrí claude y pedile que lo resuelva."; exit 1; fi
