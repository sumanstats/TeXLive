$ErrorActionPreference = 'Stop';
Write-Host "Starting build"

cd $env:TEX_VER 
$REPO=$env:TEX_VER.ToLower()
docker build --build-arg scheme=scheme-basic -t $env:USER/${REPO}:basic .
docker build --build-arg scheme=scheme-minimal -t $env:USER/${REPO}:minimal .
docker build --build-arg scheme=scheme-small -t $env:USER/${REPO}:small .
docker build --build-arg scheme=scheme-full -t $env:USER/${REPO}:full .
docker tag $env:USER/${REPO}:full $env:USER/${REPO}:latest
cd ..

Write-Host "Finished build"