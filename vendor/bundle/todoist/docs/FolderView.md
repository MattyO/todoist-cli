# Todoist::FolderView

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workspace_id** | **String** |  |  |
| **name** | **String** |  | [optional][default to &#39;&#39;] |
| **is_deleted** | **Boolean** |  | [optional][default to false] |
| **id** | **String** |  | [optional][default to &#39;0&#39;] |
| **default_order** | **Integer** |  | [optional][default to 0] |
| **child_order** | **Integer** |  | [optional][default to 0] |

## Example

```ruby
require 'todoist'

instance = Todoist::FolderView.new(
  workspace_id: null,
  name: null,
  is_deleted: null,
  id: null,
  default_order: null,
  child_order: null
)
```

