terraform {
  required_providers {
    netlify = {
      source  = "netlify/netlify"
      version = "~> 1.0"   # upgrade to 1.x
    }
  }

  backend "remote" {
    organization = "Yemmmyc"

    workspaces {
      name = "netlify-hcp-terraform-challenge"
    }
  }
}

provider "netlify" {
  token = var.netlify_token
}

resource "netlify_site" "example" {
  name = "netlify-terraform-starter"
}
