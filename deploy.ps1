docker login -u="$env:DOCKER_USERNAME" -p="$env:DOCKER_PASSWORD"
docker push $env:USER/${REPO}:basic
docker push $env:USER/${REPO}:minimal

