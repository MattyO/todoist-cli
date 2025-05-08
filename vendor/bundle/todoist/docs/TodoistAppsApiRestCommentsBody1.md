# Todoist::TodoistAppsApiRestCommentsBody1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **content** | **String** |  |  |
| **project_id** | [**ProjectId4**](ProjectId4.md) |  | [optional] |
| **task_id** | [**TaskId3**](TaskId3.md) |  | [optional] |
| **attachment** | **Hash&lt;String, Object&gt;** |  | [optional] |
| **uids_to_notify** | **Array&lt;Integer&gt;** |  | [optional] |

## Example

```ruby
require 'todoist'

instance = Todoist::TodoistAppsApiRestCommentsBody1.new(
  content: null,
  project_id: null,
  task_id: null,
  attachment: null,
  uids_to_notify: null
)
```

