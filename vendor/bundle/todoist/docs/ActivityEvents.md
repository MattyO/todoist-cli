# Todoist::ActivityEvents

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **object_type** | **String** |  |  |
| **object_id** | **String** |  |  |
| **v2_object_id** | **String** |  |  |
| **event_type** | **String** |  |  |
| **event_date** | **Time** |  |  |
| **id** | **Integer** |  | [optional] |
| **parent_project_id** | **String** |  | [optional] |
| **v2_parent_project_id** | **String** |  | [optional] |
| **parent_item_id** | **String** |  | [optional] |
| **v2_parent_item_id** | **String** |  | [optional] |
| **initiator_id** | **String** | The ID of the user who is responsible for the event, which only makes sense in shared projects, items and notes, and is null for non-shared objects | [optional] |
| **extra_data_id** | **Integer** |  | [optional] |
| **extra_data** | **Hash&lt;String, Object&gt;** |  | [optional] |

## Example

```ruby
require 'todoist'

instance = Todoist::ActivityEvents.new(
  object_type: null,
  object_id: null,
  v2_object_id: null,
  event_type: null,
  event_date: null,
  id: null,
  parent_project_id: null,
  v2_parent_project_id: null,
  parent_item_id: null,
  v2_parent_item_id: null,
  initiator_id: null,
  extra_data_id: null,
  extra_data: null
)
```

