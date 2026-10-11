data "coder_workspace_tags" "workspace_tags_lookup" {
  for_each = var.workspace_tags_lookup

  tags = each.value.tags
}

