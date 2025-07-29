versao=$(git rev-parse HEAD | cut -c 1-7)
# Substitua <AWS_REGION>, <AWS_PROFILE>, <AWS_ACCOUNT_ID>, <ECR_REPOSITORY> pelos valores apropriados
aws ecr get-login-password --region <AWS_REGION> --profile <AWS_PROFILE> | docker login --username AWS --password-stdin <AWS_ACCOUNT_ID>.dkr.ecr.<AWS_REGION>.amazonaws.com
docker build -t <ECR_REPOSITORY> .
docker tag <ECR_REPOSITORY>:latest <AWS_ACCOUNT_ID>.dkr.ecr.<AWS_REGION>.amazonaws.com/<ECR_REPOSITORY>:$versao
docker push <AWS_ACCOUNT_ID>.dkr.ecr.<AWS_REGION>.amazonaws.com/<ECR_REPOSITORY>:$versao
rm .env 2> /dev/null
./gerar-compose.sh 
rm <ECR_REPOSITORY>-versao-*zip
zip -r <ECR_REPOSITORY>-versao-$versao.zip docker-compose.yml 
git checkout docker-compose.yml

