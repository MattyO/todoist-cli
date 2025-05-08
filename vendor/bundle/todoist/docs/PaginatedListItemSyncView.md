# Todoist::PaginatedListItemSyncView

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **results** | [**Array&lt;ItemSyncView&gt;**](ItemSyncView.md) |  |  |
| **next_cursor** | **String** |  |  |

## Example

```ruby
require 'todoist'

instance = Todoist::PaginatedListItemSyncView.new(
  results: null,
  next_cursor: null
)
```

