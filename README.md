# Deploy microservice on ECS
CI/CD using Github Actions, AWS ECR and ECS Fargate and Terraform


Important Points
1. In `upload-artifact` step you need to provide the complete path of your jar files.


update ecs service

aws ecs update-service --cluster test-cluster --service hello --desired-count=1 --region us-east-1

aws ecs update-service --cluster test-cluster --service world --desired-count=1 --region us-east-1

aws ecs update-service --cluster test-cluster --service client --desired-count=1 --region us-east-1

aws ecr-public get-login-password --region us-east-1 | docker login --username AWS --password-stdin public.ecr.aws/n8w9l9g5

aws ecs update-service --cluster test-cluster --service client --force-new-deployment --region us-east-1