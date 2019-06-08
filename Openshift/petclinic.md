# PETCLINIC EXERCISE WITH OPENSHIFT ONLINE

1. Login to your Gihub account
    1. Fork this project:
        - https://github.com/spring-projects/spring-petclinic
    1. Create two other branches in the project:
        - master (already created in the project)
        - develop
        - welcome
1. Login to your Openshift Online account:
    1. Create three projects in Openshift Online:
        - indra-master
        - indra-develop
        - indra-welcome
1. From inside project indra-**master** in Openshift Online:
    1. Add a new Application from the Catalog:
        - Application type:
            - OpenJDK
        - Application Name: 
            - petclinic
        - Git Repository URL: 
            - https://github.com/USERNAME/spring-petclinic (your username in Github)
        - Git Reference:
            - **master** (the name of the branch in the Github project)
        - Context Directory:
            - Leave it empty
         - Labels -> app:
            - petclinic
    1. Go to Applications -> Deployments
        1. Select the corresponding Deployment:
            - petclinic
        1. Click on the Actions selector to the upper right of the page and select:
            - Edit Resource Limits
        1. Edit the Memory limit:
            - 256 MiB        
    1. Go to Builds -> Builds
        1. Select the corresponding Build:
            - petclinic
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
    - welcome
1. Check the progress of your application in Openshift Online:
    1. Navigate to your project:
        - indra-welcome
    1. Go to Overview
    1. There is a URL link to the upper right of the page: visit your current application endpoint
1. Change the code in Github:
    1. Go to your fork of the project:
        - https://github.com/USERNAME/spring-petclinic (your username in Github)
    1. Checkout to your USERNAME branch
    1. Navigate to the following resource:
        - https://github.com/USERNAME/spring-petclinic/blob/welcome/src/main/resources/templates/welcome.html (your username in Github)
    1. Remove lines 8 to 12 (those corresponding to the image display)
    1. After committing the change the Webhook will automatically deploy the changes in your Openshift environment:
        - indra-welcome
    1. Visit the Overview page for your project in Openshift and check that the website has been accordingly modified
1. Create a PR in Github:
    1. Go to the PR page in Github:
        - https://github.com/USERNAME/spring-petclinic/pulls (your username in Github)
    1. Click on Compare and Pull Request
        - Base Repository:
            - USERNAME/spring-petclinic (your username in Github)
        - Base:
            - develop
        - Modify the title and create the pull request:
            - Remove the PNG image from the Welcome page
    1. Merge the Pull Request
        - Merge the pull request
        - Confirm the merge
        - After confirmation you can safely delete the **welcome** branch
1. Check the progress of your deployment in Openshift Online:
    1. Navigate to your project:
        - indra-develop
    1. Go to Builds -> Builds
        - Select the corresponding Build: petclinic
        - Click on **Start Build**
    1. Go to Overview -> petclinic
        - Visit the URL of the application
