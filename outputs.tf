output "workspace_tags_lookup_id" {
  description = "Map of id values across all workspace_tags_lookup, keyed the same as var.workspace_tags_lookup except keys with no id are omitted"
  value       = { for k, v in data.coder_workspace_tags.workspace_tags_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "workspace_tags_lookup_tags" {
  description = "Map of tags values across all workspace_tags_lookup, keyed the same as var.workspace_tags_lookup except keys with no tags are omitted"
  value       = { for k, v in data.coder_workspace_tags.workspace_tags_lookup : k => v.tags if v.tags != null && length(v.tags) > 0 }
}

