output "site_id" {
  description = "The ID of the created Netlify site"
  value       = netlify_site.example.id
}

output "site_name" {
  description = "The name of the created Netlify site"
  value       = netlify_site.example.name
}

output "site_url" {
  description = "The live URL of the Netlify site"
  value       = netlify_site.example.ssl_url
}
