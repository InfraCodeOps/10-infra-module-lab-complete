module "scalable_web" {
  source = "./modules/scalable-web"
  app-name = "infra-code-app"
}

# DNS name of the ALB
output "app-address" {
  value = module.scalable_web.alb-dns-name
  description = "DNS name of the ALB"
}

# List of all AZ's used in the app
output "app-azs" {
  value = module.scalable_web.all-azs
  description = "Availability zones used by the app"
}