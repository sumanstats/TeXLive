echo $env:REPO
docker login -u="$env:DOCKER_USERNAME" -p="$env:DOCKER_PASSWORD"
docker push $env:USER/"$env:REPO":minimal


