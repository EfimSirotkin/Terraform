resource "google_cloud_run_service" "test_service" {
    name     = "${var.project}-${var.service_name}"

    location = var.region

    metadata {
      annotations = {
        "run.googleapis.com/client-name" = "${var.project}-terraform"
      }
    }

    template {
      spec {
        containers {
          image = var.image_url
        }
      }
    }
 }

 data "google_iam_policy" "noauth" {
   binding {
     role = "roles/run.invoker"
     members = ["allUsers"]
   }
 }

 resource "google_cloud_run_service_iam_policy" "noauth" {
   location    = var.region
   project     = var.project
   service     = "${var.project}-${var.service_name}"

   policy_data = data.google_iam_policy.noauth.policy_data
}

data "google_cloud_run_service" "run-service" {
  name = "${var.project}-${var.service_name}"
  location = var.region

  depends_on = [
    google_cloud_run_service.test_service
  ]
}
