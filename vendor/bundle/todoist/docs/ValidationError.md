# Todoist::ValidationError

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **loc** | [**Array&lt;ValidationErrorLocInner&gt;**](ValidationErrorLocInner.md) |  |  |
| **msg** | **String** |  |  |
| **type** | **String** |  |  |

## Example

```ruby
require 'todoist'

instance = Todoist::ValidationError.new(
  loc: null,
  msg: null,
  type: null
)
```

