# Todoist::UsersResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **has_more** | **Boolean** |  |  |
| **next_cursor** | **String** |  | [optional] |
| **workspace_users** | [**Array&lt;MemberView&gt;**](MemberView.md) |  |  |

## Example

```ruby
require 'todoist'

instance = Todoist::UsersResponse.new(
  has_more: null,
  next_cursor: null,
  workspace_users: null
)
```

