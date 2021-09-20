docker login -u="$env:DOCKER_USERNAME" -p="$env:DOCKER_PASSWORD"
docker push $env:USER/${REPO}:basic
docker push $env:USER/${REPO}:minimal
docker push $env:USER/${REPO}:small
docker push $env:USER/${REPO}:full
docker push $env:USER/${REPO}:latest
