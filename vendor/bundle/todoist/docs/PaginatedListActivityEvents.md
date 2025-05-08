# Todoist::PaginatedListActivityEvents

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **results** | [**Array&lt;ActivityEvents&gt;**](ActivityEvents.md) |  |  |
| **next_cursor** | **String** |  |  |

## Example

```ruby
require 'todoist'

instance = Todoist::PaginatedListActivityEvents.new(
  results: null,
  next_cursor: null
)
```

