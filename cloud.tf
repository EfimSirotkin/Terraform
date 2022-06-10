terraform {
  cloud {
    organization = var.organization

    workspaces {
      name = var.workspace
    }
  }
}