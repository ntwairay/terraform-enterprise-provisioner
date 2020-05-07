variable "workspace_name" {
  default = "vibrato"
}

variable "organization" {
  default = ""
}

variable "vcs_repo" {
  type = object({
    identifier  = string
    branch      = string
    oauth_token_id = string
  })
}

variable "working_directory" {
  default = ""
}

variable "secret_key" {
  default = ""
}

variable "secret_value" {
  default = ""
}

variable "sensitive" {
  default = true
}

variable "category" {
  default = "terraform"
}
