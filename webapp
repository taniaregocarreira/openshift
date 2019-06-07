wget https://github.com/arun-gupta/docker-for-java/raw/master/chapter2/webapp.war
docker container run --detach --name web --publish 8080:8080 --volume $PWD/webapp.war:/opt/jboss/wildfly/standalone/deployments/webapp.war jboss/wildfly
docker container logs web --follow
#curl http://localhost:8080/webapp/resources/persons && echo
