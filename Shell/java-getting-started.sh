docker image build --tag java-getting-started https://github.com/secobau/openshift/raw/master/Dockerfile/java-getting-started
docker image ls
docker image history java-getting-started
docker container run --publish 8080:5000 --rm --detach --name java-getting-started java-getting-started
docker container logs java-getting-started --follow
