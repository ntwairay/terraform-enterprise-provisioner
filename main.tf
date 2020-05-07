resource "tfe_workspace" "example" {
  name         = var.workspace_name
  organization = var.organization
  vcs_repo  {
    identifier = var.vcs_repo.identifier
    branch     = var.vcs_repo.branch
    oauth_token_id = var.vcs_repo.oauth_token_id
  }
  working_directory = var.working_directory
}

resource "tfe_variable" "example" {
  key          = var.secret_key
  value        = var.secret_value
  category     = var.category
  workspace_id = tfe_workspace.example.id
  sensitive    = var.sensitive
}
