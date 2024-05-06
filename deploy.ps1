docker login -u="$env:DOCKER_USERNAME" -p="$env:DOCKER_PASSWORD"

Write-Host "Starting deployment to Dockerhub"
docker push $env:USER/"$env:REPO":minimal
docker push $env:USER/"$env:REPO":basic
docker push $env:USER/"$env:REPO":small
# docker push $env:USER/"$env:REPO":full
# docker push $env:USER/"$env:REPO":latest

Write-Host "Finished deployment to Dockerhub"


