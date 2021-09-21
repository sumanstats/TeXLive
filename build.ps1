$ErrorActionPreference = 'Stop';
Write-Host "Starting build"

cd $env:TEX_VER 
$REPO=$env:TEX_VER.ToLower()
docker build --build-arg scheme=scheme-basic -t $env:USER/${REPO}:basic .
docker build --build-arg scheme=scheme-minimal -t $env:USER/${REPO}:minimal .

Write-Host "Finished build"