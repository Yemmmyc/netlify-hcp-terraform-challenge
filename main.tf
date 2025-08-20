terraform {
  required_providers {
    netlify = {
      source  = "netlify/netlify"
      version = "~> 0.2"
    }
  }

  backend "remote" {
    organization = "Yemmmyc"

    workspaces {
      name = "netlify-hcp-terraform-challenge"
    }
  }
}

# Provider configuration
provider "netlify" {
  token = var.netlify_token
}

# Reference your existing Netlify site
data "netlify_site" "example" {
  name = "clinquant-tanuki-feea31"
}

# Environment variable 1 (build)
resource "netlify_environment_variable" "example1" {
  site_id = data.netlify_site.example.id
  values  = {
    TEST_VARIABLE = "HelloWorld"
  }
  scopes = ["build"]
}

# Environment variable 2 (runtime)
resource "netlify_environment_variable" "example2" {
  site_id = data.netlify_site.example.id
  values  = {
    API_ENDPOINT = "https://api.example.com"
  }
  scopes = ["runtime"]
}

# Environment variable 3 (build)
resource "netlify_environment_variable" "example3" {
