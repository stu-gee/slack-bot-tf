locals {
  project_name = format("%s-%s-%s", "proj", resource.random_pet.random.id)
}

resource "random_pet" "random" {
  length = 2
}

resource "google_project_iam_member" "project" {
  for_each = toset(var.users)

  project = var.project
  role    = "roles/editor"
  member  = "user:${each.value}"
}
