terraform {
cloud {
organization = "netlify-org"
workspaces {
name = "netlify-site"
}
}
required_providers {
netlify = {
source = "netlify/netlify"
version = "~> 0.2"
}
}
}


provider "netlify" {
# You’ll need to provide a Netlify personal access token
token = nfp_K8rhc4m1Q2KXjvA7gpii6SosiVRFk9rHf201
}


variable "netlify_token" {}


resource "netlify_site" "example" {
name = "netlify-terraform-starter"
}
