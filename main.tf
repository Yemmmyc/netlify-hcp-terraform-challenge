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
  key     = "TEST_VARIABLE"
  value   = "HelloWorld"
}

# Environment variable 2 (runtime)
resource "netlify_environment_variable" "example2" {
  site_id = data.netlify_site.example.id
  key     = "API_ENDPOINT"
  value   = "https://api.example.com"
}

# Environment variable 3 (build)
resource "netlify_environment_variable" "example3" {
  site_id = data.netlify_site.example.id
  key     = "FEATURE_FLAG"
  value   = "true"
}
