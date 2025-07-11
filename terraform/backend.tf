terraform {
  backend "s3" {
    bucket         = "my-ecs-infra-bucket"
    key            = "my-ecs-app/terraform.tfstate"  
    region         = "ap-south-1"
    dynamodb_table = "my-ecs-infra-dynamodb"
  }
}
