terraform {
  backend "remote" {
    organization = "Yemmmyc"

    workspaces {
      name = "netlify-hcp-terraform-challenge"
    }
  }

  required_providers {
    netlify = {
      source  = "netlify/netlify"
      version = "~> 0.2"
    }
  }
}

provider "netlify" {
  token = var.netlify_token
}

resource "netlify_site" "example" {
  name = "netlify-terraform-starter"
}
