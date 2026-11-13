output "workspace_tags_lookup_id" {
  description = "Map of id values across all workspace_tags_lookup, keyed the same as var.workspace_tags_lookup"
  value       = { for k, v in data.coder_workspace_tags.workspace_tags_lookup : k => v.id }
}
output "workspace_tags_lookup_tags" {
  description = "Map of tags values across all workspace_tags_lookup, keyed the same as var.workspace_tags_lookup"
  value       = { for k, v in data.coder_workspace_tags.workspace_tags_lookup : k => v.tags }
}

