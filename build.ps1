$ErrorActionPreference = 'Stop';
Write-Host "Starting build"

$env:REPO=$env:TEX_VER.ToLower()
echo $env:REPO
cd $env:TEX_VER 
docker build --build-arg scheme=scheme-minimal -t $env:USER/"$env:REPO":minimal .
cd $env:APPVEYOR_BUILD_FOLDER
docker login -u="$env:DOCKER_USERNAME" -p="$env:DOCKER_PASSWORD"
docker push $env:USER/"$env:REPO":minimal

Write-Host "Finished build"