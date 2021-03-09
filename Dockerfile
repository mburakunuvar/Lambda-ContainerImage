#All AWS provided base images are available in Docker Hub and ECR Public. 
#In this case, I am using the base image hosted in Docker Hub:
FROM amazon/aws-lambda-nodejs:12
# FROM public.ecr.aws/lambda/nodejs:12
COPY app.js package*.json ./
RUN npm install
CMD [ "app.lambdaHandler" ]