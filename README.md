awscli
=============
Installs a minimal container with the aws cli tool.

Usage
-----
`docker run -v ~/.aws:/root/.aws acm1/awscli <cli command> <options>`

E.g: `docker run -v ~/.aws:/root/.aws acm1/awscli ec2 describe-regions`

If you're using boot2docker, add this function to your shell to use your local ~/.aws/config file:

```
aws() {
  cat ~/.aws/config | boot2docker ssh cat '>' /tmp/awsconfig
  docker run --rm -ti -v /tmp/awsconfig:/root/.aws/config acm1/awscli $@
  boot2docker ssh rm /tmp/awsconfig
}
```
