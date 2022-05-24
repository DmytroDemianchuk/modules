output "alb_dns_name" {
    value       = module.webserver_cluster.als_dns_name
    description = "Default name of the aplication load balancer"
}