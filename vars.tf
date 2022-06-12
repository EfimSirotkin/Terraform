variable "organization" {
  default = "alconost-sandbox-orgx"
}

variable "workspace" {
  default = "gh-demo"
}

variable "project" {
  default = "alconost-sandbox"
}

variable "region" {
  default = "europe-west2"
}

variable "service_name" {
  default = "cloudrun"
}

variable "image_url" {
    default = "europe-west2-docker.pkg.dev/alconost-sandbox/nginx/nginx:v1"
}

variable "db_instance_name" {
  default = "cloudsql"
}

variable "db_instance_tier" {
  default = "db-f1-micro"
}
