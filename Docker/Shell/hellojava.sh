docker image build --tag hellojava https://github.com/secobau/openshift/raw/master/Dockerfile/hellojava
#docker image ls
#docker image history hellojava
docker container run hellojava
docker container run hellojava -help
