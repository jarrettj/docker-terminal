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
alias amplify='docker run -p 4242:4242 --rm -v "$PWD":/app -w "/app" -v ~/.aws:/root/.aws -it amplify-cli'
alias angular='docker run --rm -v "$PWD":/app -w "/app" -it angular-cli'
alias composer='docker run --rm -v "$PWD":/app -w "/app" -it composer-cli'
alias eb='docker run --rm -v "$PWD":/app -w "/app" -v ~/.aws:/root/.aws -v ~/.ssh:/root/.ssh -it eb-cli'
alias git-secrects='docker run --rm  -v "$PWD":/app -w "/app" -it git-secrets-cli --install'
alias node='docker run --rm -ti node-cli'
alias yarn='docker run --rm -it -v $(pwd):/src/ node yarn'
alias ubuntu-cli='docker run --rm -v "$PWD":/app -w "/app" -v ~/.aws:/root/.aws -v ~/.ssh:/root/.ssh -v ~/.docker_bash_history:/root/.bash_history -it ubuntu-cli bash'
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

Git Secrets
----

https://github.com/awslabs/git-secrets

Install git hooks to the current directory:
```
git-secrets-cli --install
```

Update hooks
```
vim .git/hooks/commit-msg
vim .git/hooks/pre-commit
vim .git/hooks/prepare-commit-msg
```

Replace git secrets with:
```
docker run --rm  -v "$PWD":/app -w "/app" git-secrets-cli
```

Scan all files in the repo:
```
git-secrets-cli --scan
```

Node JS
----
https://hub.docker.com/_/node

Ubuntu
----
https://hub.docker.com/_/ubuntu

Has the following installed:
- EB ClI
- Amplify CLI

To access execute
```
docker run --rm -v "$PWD":/app -w "/app" -v ~/.aws:/root/.aws -v ~/.ssh:/root/.ssh -v ~/.docker_bash_history:/root/.bash_history -it ubuntu-cli bash
```

Or check the alias above. 

Yarn
----
Yarn installed on top of Node JS image.

