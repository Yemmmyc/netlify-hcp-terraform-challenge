provider "netlify" {
  token = var.netlify_token
}

data "netlify_site" "example" {
  name = "netlify-terraform-starter"
}

# Example environment variables
resource "netlify_environment_variable" "example1" {
  site_id = "b522540e-35de-4167-839b-1b8e921e75c9"
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
