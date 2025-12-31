resource "google_storage_bucket" "main" {
  name          = "my-devops-bucket-${random_id.suffix.hex}"
  location      = "US"
  force_destroy = true
}

resource "random_id" "suffix" {
  byte_length = 4
}