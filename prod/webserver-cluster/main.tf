terraform {
    required_version = "=> 1.0.0, 2.0.0"
    required_providers {
        aws = {
            source  = "hashicorp/aws"
            version = "~> 4.0"
        }
    }
}

provider "aws" {
    region = "es-east-2"
}

module "webserver_clusters" {
    source = "../../webserver-cluster"

    cluster_name           = var.cluster
    db_remote_state_bucket = var.db_remote_state_bucket
    db_remote_state_key    = var.db_remote_state_key

    instance_type = "m4.large"
    min_size = 2
    max_size = 10
}

resource "aws_autoscaling_shedule" "scale_out_during_business_hour" {
    shedule_action_name = "scale-out-during-business-hour"
    min_size            = 2
    max_size            = 10
    desired_capacity    = 10
    recurrence          = "0 9 * * *"

    autoscaling_group_name = module.webserver_cluster.asg_name    
}

resource "aws_autoscaling_schedule" "scale_in_at_night" {
    scheduled_action_name = "scale-in-at-night" 
    min_size              = 2
    max_size              = 10
    desired_capacity      = 2
    recurrence            = "0 17 * * *"

    autoscaling_group_name = module.webserver_cluster.asg_name
}
