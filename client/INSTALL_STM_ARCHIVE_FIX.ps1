$ErrorActionPreference = 'Stop'

# Run this from:
# C:\Users\daksh\Downloads\soletrustmedia-archive\client

$homeTarget = '.\src\pages\Home.tsx'
if (!(Test-Path $homeTarget)) { throw "Home.tsx not found. Run this inside the client folder." }

$cssTarget = Get-ChildItem '.\src' -Recurse -Filter '*.css' |
  Where-Object { (Get-Content $_.FullName -Raw) -match '\.archive-file' } |
  Select-Object -First 1
if ($null -eq $cssTarget) { throw "Main archive CSS file was not found under .\src" }

$stamp = Get-Date -Format 'yyyyMMdd-HHmmss'
Copy-Item $homeTarget "$homeTarget.backup-$stamp" -Force
Copy-Item $cssTarget.FullName "$($cssTarget.FullName).backup-$stamp" -Force

# Put Home.repaired.tsx and Home.repaired.css in the same folder as this script.
$scriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$homeSource = Join-Path $scriptDir 'Home.repaired.tsx'
$cssSource  = Join-Path $scriptDir 'Home.repaired.css'
if (!(Test-Path $homeSource)) { throw "Home.repaired.tsx is missing next to this installer." }
if (!(Test-Path $cssSource)) { throw "Home.repaired.css is missing next to this installer." }

Copy-Item $homeSource $homeTarget -Force
Copy-Item $cssSource $cssTarget.FullName -Force

Write-Host ''
Write-Host 'STM ARCHIVE FIX INSTALLED' -ForegroundColor Green
Write-Host "Home: $homeTarget"
Write-Host "CSS : $($cssTarget.FullName)"
Write-Host ''
Write-Host 'Changes:' -ForegroundColor Cyan
Write-Host '  - 8 archive files arranged in a clean 3-row editorial grid'
Write-Host '  - MISC and START A PROJECT no longer overlap other files'
Write-Host '  - MISC videos explicitly start unmuted at volume 100%'
Write-Host '  - Removed any muted attribute from the MISC video section'
Write-Host ''
Write-Host 'Now run:' -ForegroundColor Cyan
Write-Host '  npm run build'
Write-Host '  npm run dev'
