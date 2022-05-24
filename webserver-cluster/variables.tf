# ----------------------------------------------------------------
# REQUIRED PARAMETERS
# You must provide a value for each of these parameters.
# ----------------------------------------------------------------

variable "cluster_name" {
    description = "The name fo the cluster"
    type        = string
    default     = "cluster_example"
}

variable "instance_type" {
    description = "The name of the instance type"
    type = string
    default = "t2.micro"
}

variable "db_remote-state_bucket" {
    description = "The name of the S3 bucket used for the database's remote storage"
    type        = string
    default     = "value"
}

variable "db_remote_state_key" {
    description = "The name of the key in the S3 bucket user for the database's remote storage"
    type        = string
    default     = "value"
}

variable "min_size" {
    type    = number
    default = 2
}

variable "max_size" {
    type    = number
    default = 10
}

# ----------------------------------------------------------------
# OPTIONAL PARAMETERS
# These parameters have reasonable default.
# ----------------------------------------------------------------

variable "server_port" {
     description = "The port the server will use for HTTP requests"
     type        = number
     default     = 8080
}