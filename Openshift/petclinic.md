1. Clone this project to your Github account:
    - https://github.com/spring-projects/spring-petclinic
1. Create two other branches in the project: 
    - develop
    - secobau (your username in Github)
1. Create three projects in Openshift Online:
    - petclinic-master
    - petclinic-develop
    - petclinic-secobau (your username in Github)
1. From inside project petclinic-master:
    1. Add a new Java application from the catalog:
        - OpenJDK
    1. Application Name: 
        - petclinic-master
    1. Git Repository URL: 
        - https://github.com/secobau/spring-petclinic (your username in Github)
    1. Git Reference:
        - master (then name of the branch in the Github project)
    1. Context Directory:
        - Leave it empty
    1. Finally create the application:
        - Create
    1. Go to the Builds page and select the corresponding build for your new application:
        - petclinic-master
    1. Go to the Configuration tab and copy the GitHub Webhook URL
    1. Go to your Github project and navigate to the Settings tab and then Webhooks and then Add webhook
        - Payload URL:
            - Paste your Github Webhook URL
        - Content type:
            - application/json
        - Finally add the webhook:
            - Add webhook
    1. Go to the Overview page and check the status of your project
1. Repeat all the steps of the previous paragraph for the other two branches:
    - develop
    - secobau (your username in Github)
