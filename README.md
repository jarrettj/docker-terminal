Docker terminal
----

Create dockerized application tooling environment. 

AWS CLI
----

https://hub.docker.com/r/amazon/aws-cli

Node JS
----
https://hub.docker.com/_/node

Build
----
```
docker-compose build
```

Create an alias
----
```
alias aws='docker run --rm -ti -v ~/.aws:/root/.aws -v $(pwd):/aws amazon/aws-cli'
alias node='docker run --rm -ti node-cli'
```
