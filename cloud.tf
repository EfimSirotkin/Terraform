terraform {
  cloud {
    organization = "alconost-sandbox-orgx"

    workspaces {
      name = "gh-demo"
    }
  }
}