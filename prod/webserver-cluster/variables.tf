# ----------------------------------------------------------------
# REQUIRED PARAMETERS
# You must provide a value for each of these parameters.
# ----------------------------------------------------------------

variable "db_remote-state_bucket" {
    description = "The name of the S3 bucket used for the database's remote storage"
    type        = string
}

variable "db_remote_state_key" {
    description = "The name of the key in the S3 bucket user for the database's remote storage"
    type        = string
}

# ----------------------------------------------------------------
# REQUIRED PARAMETERS
# These parameters have reasonable default.
# ----------------------------------------------------------------

variable "cluster_name" {
  description = "The name to use namespace all the resources in the cluster"
  type        = string
  default     = "webserver-prod"
}