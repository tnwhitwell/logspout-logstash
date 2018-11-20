echo "${DOCKER_PASSWORD}" | docker login -u "${DOCKER_USERNAME}" --password-stdin
docker push tnwhitwell/logspout-logstash:${TRAVIS_BRANCH}
docker push tnwhitwell/logspout-logstash:latest
