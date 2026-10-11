variable "workspace_tags_lookup" {
  description = <<EOT
Map of workspace_tags_lookup, attributes below
Optional:
    - tags
EOT

  type = map(object({
    tags = optional(map(string))
  }))
}

