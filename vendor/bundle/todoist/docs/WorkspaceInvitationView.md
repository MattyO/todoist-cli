# Todoist::WorkspaceInvitationView

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **inviter_id** | **String** | ID of the user user who sent the invitation |  |
| **user_email** | **String** | The invited person&#39;s email. |  |
| **workspace_id** | **String** | ID of the workspace |  |
| **role** | [**WorkspaceRole**](WorkspaceRole.md) |  |  |
| **id** | **String** | The ID of the invitation | [optional][default to &#39;0&#39;] |
| **is_existing_user** | **Boolean** | Returns true if the user is already created in the system, and false otherwise | [readonly] |

## Example

```ruby
require 'todoist'

instance = Todoist::WorkspaceInvitationView.new(
  inviter_id: null,
  user_email: null,
  workspace_id: null,
  role: null,
  id: null,
  is_existing_user: null
)
```

