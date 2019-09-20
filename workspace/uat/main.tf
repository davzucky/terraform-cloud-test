
terraform {
  backend "remote" {
    organization = "hyperwave-research"

    workspaces {
      name = "test-app-uat"
    }
  }
}


module "test" {
  source = "../../infrastructure"
  env    = "uat"

}
