terraform {
  required_providers {
    netlify = {
      source  = "netlify/netlify"
      version = "~> 0.2"
    }
    github = {
      source  = "integrations/github"
      version = "~> 5.0"
    }
  }
}

provider "netlify" {
  token = var.netlify_token
}

provider "github" {
  token = var.github_token
  owner = var.github_owner
}
