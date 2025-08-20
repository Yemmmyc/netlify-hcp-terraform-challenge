# Read an existing Netlify site
data "netlify_site" "existing" {
  id = var.netlify_site_id
}

# Example: GitHub repository resource
resource "github_repository" "example" {
  name        = "my-github-repo"
  description = "Example repository linked to Netlify site"
  visibility  = "public"
}

