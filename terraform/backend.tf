terraform {
  backend "s3" {
    bucket         = "terraform-infra-state-ecs-app"     
    key            = "ecs-infra-v2/terraform.tfstate"    
    region         = "ap-south-1"
    dynamodb_table = "terraform-locks-ecs-app-v2"        
    encrypt        = true
    lock_timeout   = "300s"
  }
}
