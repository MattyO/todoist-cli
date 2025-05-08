# Todoist::ProjectsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **has_more** | **Boolean** |  |  |
| **next_cursor** | **String** |  | [optional] |
| **workspace_projects** | [**Array&lt;WorkspaceProjectView&gt;**](WorkspaceProjectView.md) |  |  |

## Example

```ruby
require 'todoist'

instance = Todoist::ProjectsResponse.new(
  has_more: null,
  next_cursor: null,
  workspace_projects: null
)
```

