variable "PROJECT_NAME" {
  type = string
  validation {
    condition     = length(regexall(" +", var.PROJECT_NAME)) == 0
    error_message = "The PROJECT_NAME value must not contains whitespaces."
  }
}

variable "VPC_ID" {
  type = string
  validation {
    condition     = length(var.VPC_ID) > 4 && substr(var.VPC_ID, 0, 4) == "vpc-"
    error_message = "The VPC_ID value must be a valid vpc identifier, starting with \"vpc-\"."
  }
}

variable "SUBNET_ID" {
  type = string
  validation {
    condition     = length(var.SUBNET_ID) > 7 && substr(var.SUBNET_ID, 0, 7) == "subnet-"
    error_message = "The SUBNET_ID value must be a valid subnet identifier, starting with \"subnet-\"."
  }
}

variable "BITBUCKET_USERNAME" {
  type = string
  validation {
    condition     = length(var.BITBUCKET_USERNAME) > 0
    error_message = "The BITBUCKET_USERNAME value must not be empty."
  }
}

variable "BITBUCKET_PASSWORD" {
  type = string
  validation {
    condition     = length(var.BITBUCKET_PASSWORD) > 0
    error_message = "The BITBUCKET_PASSWORD value must not be empty."
  }
}

variable "BITBUCKET_REPOSITORY" {
  type = string
  validation {
    condition     = length(var.BITBUCKET_REPOSITORY) > 0
    error_message = "The BITBUCKET_REPOSITORY value must not be empty."
  }
}

variable "BITBUCKET_BRANCH" {
  type = string
  validation {
    condition     = length(var.BITBUCKET_BRANCH) > 0
    error_message = "The BITBUCKET_BRANCH value must not be empty."
  }
}

variable "ARTIFACT_BUCKET" {
  type = string
  validation {
    condition     = length(var.ARTIFACT_BUCKET) > 0
    error_message = "The ARTIFACT_BUCKET value must not be empty."
  }
}

variable "PUBLIC_KEY_PATH" {
  type = string
  validation {
    condition     = fileexists(var.PUBLIC_KEY_PATH)
    error_message = "The PUBLIC_KEY_PATH value must reference an existing file."
  }
}
