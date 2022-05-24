# ----------------------------------------------
# REQUIRED PARAMETERS
# You must provide a value for each of these parameters.
# ----------------------------------------------

variable "db_username" {
    descriprion = "The username for the database"
    type        = string
    sensitive   = true
}

variable "db_password" {
    description = "The password for the database"
    type        = string
    sensitive   = true
}

# ----------------------------------------------
# OPTIONAL PARAMETETS
# These parameters have reasonable defaults.
# ----------------------------------------------

variable "db_name" {
    description = "The name to use for the database"
    type        = string
    default     = "example_database_stage"
}