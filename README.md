# Lambda-ContainerImage

[aws-lambda-container-image-support/](https://aws.amazon.com/blogs/aws/new-for-aws-lambda-container-image-support/)


```bash

$ docker build -t random-letter .
$ docker run -p 9000:8080 random-letter:latest
$ curl -XPOST "http://localhost:9000/2015-03-31/functions/function/invocations" -d '{}'

$ aws ecr create-repository --repository-name random-letter --image-scanning-configuration scanOnPush=true

$ docker tag random-letter:latest AWSID.dkr.ecr.sa-east-1.amazonaws.com/random-letter:latest
$ aws ecr get-login-password | docker login --username AWS --password-stdin AWSID.dkr.ecr.sa-east-1.amazonaws.com

$ docker push AWSID.dkr.ecr.eu-west-1.amazonaws.com/random-letter
```