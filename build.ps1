$ErrorActionPreference = 'Stop';
Write-Host "Starting build"

$REPO=$env:TEX_VER.ToLower()
cd $env:TEX_VER 
docker build --build-arg scheme=scheme-basic -t $env:USER/${REPO}:basic .
docker build --build-arg scheme=scheme-minimal -t $env:USER/${REPO}:minimal .
cd $env:APPVEYOR_BUILD_FOLDER

Write-Host "Finished build"