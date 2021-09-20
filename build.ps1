$ErrorActionPreference = 'Stop';
Write-Host "Starting build"

cd $env:TEX_VER 
$REPO=$env:TEX_VER.ToLower()
$env:DOCKER_OPTS scheme=scheme-basic -t $env:USER/$REPO:basic .
$env:DOCKER_OPTS scheme=scheme-minimal -t $env:USER/$REPO:minimal .
$env:DOCKER_OPTS scheme=scheme-small -t $env:USER/$REPO:small .
$env:DOCKER_OPTS scheme=scheme-full -t $env:USER/$REPO:full .

Write-Host "Finished build"