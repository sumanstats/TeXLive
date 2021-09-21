$ErrorActionPreference = 'Stop';
Write-Host "Starting build"

$env:REPO=$env:TEX_VER.ToLower()
cd $env:TEX_VER 

docker build --build-arg scheme=scheme-minimal -t $env:USER/"$env:REPO":minimal .
docker build --build-arg scheme=scheme-basic -t $env:USER/"$env:REPO":basic .
docker build --build-arg scheme=scheme-small -t $env:USER/"$env:REPO":small .
#multiple tags at once latest and full
docker build --build-arg scheme=scheme-full -t $env:USER/"$env:REPO":full -t $env:USER/"$env:REPO":latest .


cd $env:APPVEYOR_BUILD_FOLDER

Write-Host "Finished build"