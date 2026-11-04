# Instala las herramientas y las skills de edición. Se puede correr más de una vez.
param([switch]$Check)
Set-Location $PSScriptRoot
$skills = 'hyperframes','hyperframes-cli','hyperframes-registry','media-use','reverse-any-video','remotion-to-hyperframes','style-sampling'
$remotion = 'remotion-best-practices','remotion-create','remotion-render','remotion-captions','remotion-markup','remotion-studio','remotion-license'
$fail = $false
function Add-Pack($repo, $names) {
  npx --yes skills add $repo --skill @names -g -a claude-code -y *> $null
  if ($LASTEXITCODE -eq 0) { "  ok  $repo" } else { "  FALLO  $repo"; $script:fail = $true }
}
function Refresh-Path { $env:Path = [Environment]::GetEnvironmentVariable('Path','Machine') + ';' + [Environment]::GetEnvironmentVariable('Path','User') + ";$HOME\.local\bin" }
if (-not $Check) {
  "Instalando. Puede tardar unos minutos."
  foreach ($id in 'OpenJS.NodeJS.LTS','Gyan.FFmpeg','yt-dlp.yt-dlp','Git.Git') {
    winget install --id $id -e --accept-package-agreements --accept-source-agreements --silent
  }
  Refresh-Path
  if (-not (Get-Command claude -ErrorAction SilentlyContinue)) { Invoke-RestMethod https://claude.ai/install.ps1 | Invoke-Expression }
  Refresh-Path
  "Skills de edicion:"
  Add-Pack 'heygen-com/hyperframes' $skills
  Add-Pack 'bradautomates/claude-video' @('watch')
  Add-Pack 'digitalsamba/claude-code-video-toolkit' @('ffmpeg')
  Add-Pack 'remotion-dev/skills' $remotion
}
Refresh-Path
"Comprobacion:"
foreach ($c in 'git','node','npx','ffmpeg','ffprobe','yt-dlp','claude') {
  if (Get-Command $c -ErrorAction SilentlyContinue) { "  ok  $c" } else { "  FALTA  $c"; $fail = $true }
}
foreach ($s in ($skills + $remotion + 'watch','ffmpeg')) {
  if (Test-Path "$HOME\.claude\skills\$s\SKILL.md") { "  ok  skill $s" } else { "  FALTA  skill $s"; $fail = $true }
}
if ($fail) { "Faltan cosas. Abri claude y pedile que lo resuelva."; exit 1 } else { "Listo. Escribi: cd ~\mati-claude-studio; claude" }
