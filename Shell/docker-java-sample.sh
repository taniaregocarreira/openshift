docker image build --tag docker-java-sample https://github.com/secobau/openshift/raw/master/Dockerfile/docker-java-sample
docker image ls
docker image history docker-java-sample
docker container run --rm --name docker-java-sample docker-java-sample
docker container logs docker-java-sample --follow
