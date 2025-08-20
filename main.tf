terraform {
  cloud {
    organization = "Yemmmyc"
    workspaces {
      name = "netlify-hcp-terraform-challenge"
    }
  }

  required_providers {
    netlify = {
      source  = "netlify/netlify"
      version = ">=0.2.0"
    }
  }
}

provider "netlify" {
  token = var.netlify_token
}

# Example: get an existing site by site_id
data "netlify_site" "my_site" {
  site_id = var.netlify_site_id
}

output "netlify_site_url" {
  value = data.netlify_site.my_site.ssl_url
}
