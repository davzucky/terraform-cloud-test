
terraform {
  backend "remote" {
    organization = "hyperwave-research"

    workspaces {
      name = "test-app-dev"
    }
  }
}


module "test" {
  source = "../../infrasctruture"
  env    = "uat"

}
