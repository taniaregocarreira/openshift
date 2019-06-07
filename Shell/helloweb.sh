docker image build --tag helloweb https://github.com/secobau/openshift/raw/master/Dockerfile/helloweb
#docker image ls
#docker image history helloweb
docker container run --publish 8080:8080 --detach helloweb
docker container logs helloweb --follow
#curl http://localhost:8080/webapp/resources/persons && echo
