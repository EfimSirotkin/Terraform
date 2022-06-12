resource "google_sql_database_instance" "test_database" {
  name             = "${var.project}-${var.db_instance_name}"
  database_version = "MYSQL_8_0"
  region           = var.region

  settings {
    tier = var.db_instance_tier
  }
}