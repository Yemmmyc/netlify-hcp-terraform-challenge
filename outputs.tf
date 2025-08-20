# Outputs for Netlify site
output "site_id" {
  description = "The ID of the Netlify site"
  value       = data.netlify_site.existing.id
}

output "site_name" {
  description = "The name of the Netlify site"
  value       = data.netlify_site.existing.name
}

output "site_url" {
  description = "The live URL of the Netlify site"
  value       = "https://${data.netlify_site.existing.name}.netlify.app"
}

# Output for GitHub repository
output "github_repo_url" {
  description = "The URL of the GitHub repository"
  value       = github_repository.example.html_url
}
