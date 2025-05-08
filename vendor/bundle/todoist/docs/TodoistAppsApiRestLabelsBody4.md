# Todoist::TodoistAppsApiRestLabelsBody4

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  |  |
| **order** | **Integer** |  | [optional] |
| **color** | [**TodoistAppsApiRestLabelsBody4Color**](TodoistAppsApiRestLabelsBody4Color.md) |  | [optional] |
| **is_favorite** | **Boolean** |  | [optional][default to false] |

## Example

```ruby
require 'todoist'

instance = Todoist::TodoistAppsApiRestLabelsBody4.new(
  name: null,
  order: null,
  color: null,
  is_favorite: null
)
```

