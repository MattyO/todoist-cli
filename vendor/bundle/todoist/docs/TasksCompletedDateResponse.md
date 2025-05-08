# Todoist::TasksCompletedDateResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **items** | [**Array&lt;ItemSyncView&gt;**](ItemSyncView.md) |  | [optional] |
| **next_cursor** | **String** |  | [optional] |

## Example

```ruby
require 'todoist'

instance = Todoist::TasksCompletedDateResponse.new(
  items: null,
  next_cursor: null
)
```

