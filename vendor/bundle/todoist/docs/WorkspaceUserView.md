# Todoist::WorkspaceUserView

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** |  |  |
| **workspace_id** | **String** |  |  |
| **role** | [**WorkspaceRole**](WorkspaceRole.md) |  | [optional] |
| **custom_sorting_applied** | **Boolean** |  | [optional][default to false] |

## Example

```ruby
require 'todoist'

instance = Todoist::WorkspaceUserView.new(
  user_id: null,
  workspace_id: null,
  role: null,
  custom_sorting_applied: null
)
```

