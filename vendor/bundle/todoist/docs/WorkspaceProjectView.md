# Todoist::WorkspaceProjectView

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **initiated_by_uid** | **Integer** |  |  |
| **project_id** | **String** |  |  |
| **workspace_id** | **Integer** |  |  |
| **public_access** | **Boolean** |  |  |
| **access** | [**ProjectAccessView**](ProjectAccessView.md) |  |  |
| **folder_id** | **Integer** |  | [optional] |
| **is_invite_only** | **Boolean** |  | [optional] |
| **is_archived** | **Boolean** |  | [optional][default to false] |
| **archived_timestamp** | **Integer** |  | [optional][default to 0] |
| **archived_date** | **Time** |  | [optional] |
| **is_frozen** | **Boolean** |  | [optional][default to false] |
| **name** | **String** |  | [optional][default to &#39;&#39;] |
| **color** | **Integer** |  | [optional] |
| **view_style** | [**ProjectViewStyle**](ProjectViewStyle.md) |  | [optional] |
| **description** | **String** |  | [optional][default to &#39;&#39;] |
| **status** | [**ProjectStatus**](ProjectStatus.md) |  | [optional] |
| **default_order** | **Integer** |  | [optional][default to 0] |
| **_v1_id** | **Integer** |  | [optional] |
| **_role** | [**Role**](Role.md) |  | [optional] |

## Example

```ruby
require 'todoist'

instance = Todoist::WorkspaceProjectView.new(
  initiated_by_uid: null,
  project_id: null,
  workspace_id: null,
  public_access: null,
  access: null,
  folder_id: null,
  is_invite_only: null,
  is_archived: null,
  archived_timestamp: null,
  archived_date: null,
  is_frozen: null,
  name: null,
  color: null,
  view_style: null,
  description: null,
  status: null,
  default_order: null,
  _v1_id: null,
  _role: null
)
```

