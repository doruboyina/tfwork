provider "tfe" {
  hostname = "app.terraform.io"
}

module "workspace" {
  source              = "./tfworkspace"
  tfe_organization =  "codeforyou"
  workspace_name      = "codefortest"
  workspace_description = "An example workspace"
}

output "workspace_id" {
  value = module.workspace.workspace_id
}
