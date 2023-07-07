resource "google_folder" "root-folder" {
  display_name = "BrainTrust-root"
  parent       = "organizations/${var.org_id}"
}

resource "google_folder" "prod" {
  display_name = "prod"
  parent       = google_folder.root-folder.id
}

resource "google_folder" "non-prod" {
  display_name = "non-prod"
  parent       = google_folder.root-folder.id
}

resource "google_folder" "dev" {
  display_name = "dev"
  parent       = google_folder.root-folder.id
}