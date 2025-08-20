terraform {
  required_providers {
    netlify = {
      source  = "netlify/netlify"   # Correct provider source
      version = "~> 0.2"            # Latest compatible version
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
  name = "netlify-terraform-starter"  # Replace with your exact site name
}

# Example environment variables
resource "netlify_environment_variable" "example1" {
  site_id = "b522540e-35de-4167-839b-1b8e921e75c9"  # Your site ID
  key     = "TEST_VARIABLE"
  value   = "HelloWorld"
  scope   = "build"
}

resource "netlify_environment_variable" "example2" {
  site_id = "b522540e-35de-4167-839b-1b8e921e75c9"
  key     = "API_ENDPOINT"
  value   = "https://api.example.com"
  scope   = "runtime"
}

resource "netlify_environment_variable" "example3" {
  site_id = "b522540e-35de-4167-839b-1b8e921e75c9"
  key     = "FEATURE_FLAG"
  value   = "true"
  scope   = "build"
}
