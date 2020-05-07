resource "tfe_workspace" "example" {
  name         = var.workspace_name
  organization = var.organization
}
