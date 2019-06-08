1. Clone this project to your Github account:
    1. https://github.com/spring-projects/spring-petclinic
1. Create two other branches in the project: 
    1. develop
    1. secobau (your username in Github)
1. Create three projects in Openshift Online:
    1. petclinic-master
    1. petclinic-develop
    1. petclinic-secobau (your username in Github)
1. From inside project petclinic-master:
    1. Add a new Java application from the catalog:
        1. OpenJDK
    1. Application Name: 
        1. petclinic-master
    1. Git Repository URL: 
        1. https://github.com/secobau/spring-petclinic (your username in Github)
    1. Git Reference:
        1. master (then name of the branch in the Github project)
    1. Context Directory:
        1. Leave it empty
    1. Finally create the application:
        1. Create
    1. Go to the Builds page and select the corresponding build for your new application:
        1. petclinic-master
    1. Go to the Configuration tab and copy the GitHub Webhook URL
    1. Go to your Github project and navigate to the Settings tab and then Webhooks and then Add webhook
        1. Payload URL:
            1. Paste your Github Webhook URL
        1. Content type:
            1. application/json
        1. Finally add the webhook:
            1. Add webhook
    1. Go to the Overview page and check the status of your project
1. Repeat all the steps of the previous paragraph for the other two branches:
    1. develop
    1. secobau (your username in Github)
