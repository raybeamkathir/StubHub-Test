

provider "google" {
  credentials = "${file("StubHub-Test-3af8760dd6b5.json")}"
  project     = "${var.Project}"
  region      = "${var.Region}"
  zone        = "${var.Zone}"
}

resource "google_storage_bucket" "default" {
  name          = "data-store-bucket"
  project       = "${var.Project}"
  storage_class = "${var.StorageClass}"
  force_destroy = "${var.ForceDestroy}"

  lifecycle_rule {
    action {
      type          = "${var.ActionType}"
      storage_class = "${var.ActionStorageClass}"
    }

    condition {
      matches_storage_class = "${var.MatchesStorageClass}"
      num_newer_versions    = "${var.NumNewerVersions}"
    }
  }

  versioning {
    enabled = "${var.VersioningEnabled}"
  }
}

resource "google_storage_bucket_acl" "default-acl" {
  bucket      = "${google_storage_bucket.default.name}"

  role_entity = [
    "${var.role_entity}",
  ]
}

