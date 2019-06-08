1. Clone this project to your Github account:
    - https://github.com/spring-projects/spring-petclinic
1. Create two other branches in the project:
    - master (already created in the project)
    - develop
    - USERNAME (your username in Github)
1. Create three projects in Openshift Online:
    - petclinic-master
    - petclinic-develop
    - petclinic-USERNAME (your username in Github)
1. From inside project petclinic-**master**:
    1. Add a new application from the catalog:
        - Application type:
            - OpenJDK
        - Application Name: 
            - petclinic-**master**
        - Git Repository URL: 
            - https://github.com/USERNAME/spring-petclinic (your username in Github)
        - Git Reference:
            - **master** (the name of the branch in the Github project)
        - Context Directory:
            - Leave it empty
    1. Go to Applications -> Deployments
        1. Select the corresponding Deployment:
            - petclinic-**master**
        1. Click on the Actions selector to the upper right of the page and select:
            - Edit Resource Limits
        1. Edit the Memory limit:
            - 256 MiB        
    1. Go to Builds -> Builds
        1. Select the corresponding Build:
            - petclinic-master
        1. Go to the Configuration tab and copy the following value:
            - GitHub Webhook URL
    1. Go to your project on Github and navigate to Settings -> Webhooks -> Add webhook
        - Payload URL:
            - Paste your Github Webhook URL
        - Content type:
            - application/json
    1. Go to the Overview page and check the status of your project
1. Repeat all the steps of the previous paragraph for the other two branches:
    - develop
    - USERNAME (your username in Github)
