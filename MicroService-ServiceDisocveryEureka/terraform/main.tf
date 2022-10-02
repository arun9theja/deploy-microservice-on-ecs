module "ecs-fargate-service" {
   source                  = "../../terraform-modules/ecs-fargate-service"
   vpc_id                  = var.vpc_id
   environment             = var.environment
   project                 = var.project
   region                  = var.region
   app_definitions         = local.app_definitions
   container_version       = var.container_version
 }
 

 
