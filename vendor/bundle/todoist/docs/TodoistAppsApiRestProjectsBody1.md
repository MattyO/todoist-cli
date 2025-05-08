# Todoist::TodoistAppsApiRestProjectsBody1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  |  |
| **description** | **String** |  | [optional] |
| **parent_id** | [**ParentId**](ParentId.md) |  | [optional] |
| **color** | [**TodoistAppsApiRestLabelsBody4Color**](TodoistAppsApiRestLabelsBody4Color.md) |  | [optional] |
| **is_favorite** | **Boolean** |  | [optional][default to false] |
| **view_style** | **String** |  | [optional] |

## Example

```ruby
require 'todoist'

instance = Todoist::TodoistAppsApiRestProjectsBody1.new(
  name: null,
  description: null,
  parent_id: null,
  color: null,
  is_favorite: null,
  view_style: null
)
```

