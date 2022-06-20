resource "google_project_iam_member" "project" {
  for_each = var.users

  project = var.project
  role    = "roles/editor"
  member  = "user:${each.value}"
}