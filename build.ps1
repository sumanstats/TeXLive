$ErrorActionPreference = 'Stop';
Write-Host "Starting build"

$env:REPO=$env:TEX_VER.ToLower()
cd $env:TEX_VER 
docker build --build-arg scheme=scheme-minimal -t $env:USER/"$env:REPO":minimal .
cd $env:APPVEYOR_BUILD_FOLDER


Write-Host "Finished build"