docker image build --tag helloworld https://github.com/secobau/openshift/raw/master/Dockerfile/helloworld
#docker image ls
#docker image history helloworld
docker container run helloworld
docker container run helloworld HOLA MUNDO
