# Todoist::MemberView

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** |  |  |
| **workspace_id** | **String** |  |  |
| **user_email** | **String** |  |  |
| **full_name** | **String** |  |  |
| **timezone** | **String** |  |  |
| **role** | [**WorkspaceRole**](WorkspaceRole.md) |  |  |
| **image_id** | **String** |  | [optional] |
| **is_deleted** | **Boolean** |  | [optional][default to false] |

## Example

```ruby
require 'todoist'

instance = Todoist::MemberView.new(
  user_id: null,
  workspace_id: null,
  user_email: null,
  full_name: null,
  timezone: null,
  role: null,
  image_id: null,
  is_deleted: null
)
```

