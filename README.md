Docker terminal
----

Create dockerized application tooling environment. Limit the installation of tooling on your development machine.

Build images
----
```
docker-compose build
```

Create an alias
----
```
alias aws='docker run --rm -ti -v ~/.aws:/root/.aws -v $(pwd):/aws amazon/aws-cli'
alias amplify='docker run --rm -v "$PWD":/app -v ~/.aws:/root/.aws -it amplify-cli'
alias angular='docker run --rm -v "$PWD":/app -it angular-cli'
alias eb='docker run --rm -v "$PWD":/app -v ~/.aws:/root/.aws -v ~/.ssh:/root/.ssh -it eb-cli'
alias node='docker run --rm -ti node-cli'
alias yarn='docker run --rm -it -v $(pwd):/src/ node yarn'
```

Add the aliases above to your ~/.zshrc or ~/.bash_profile file.

Amplify CLI
----
Amplify CLI installed on top of Node JS image.

Angular
----
Based on https://github.com/trion-development/docker-ng-cli/blob/master/Dockerfile

AWS CLI
----
https://hub.docker.com/r/amazon/aws-cli

Elastic Beanstalk CLI
----
Elastic Beanstalk installed on top of Node JS image.

Node JS
----
https://hub.docker.com/_/node

Ubuntu
----
https://hub.docker.com/_/ubuntu

Yarn
----
Yarn installed on top of Node JS image.
