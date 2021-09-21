$ErrorActionPreference = 'Stop';
Write-Host "Starting build"

$REPO=$env:TEX_VER.ToLower()
cd $env:TEX_VER 
$env:DOCKER_OPTS scheme=scheme-minimal -t $env:USER/"$REPO":minimal .
cd $env:APPVEYOR_BUILD_FOLDER
docker login -u="$env:DOCKER_USERNAME" -p="$env:DOCKER_PASSWORD"
docker push $env:USER/"$REPO":minimal

Write-Host "Finished build"