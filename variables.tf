variable "netlify_token" {
  description = "Netlify personal access token"
  type        = string
  sensitive   = true
}

variable "netlify_site_id" {
  description = "Existing Netlify site ID to read"
  type        = string
}
