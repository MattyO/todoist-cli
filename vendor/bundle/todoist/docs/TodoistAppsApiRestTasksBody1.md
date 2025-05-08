# Todoist::TodoistAppsApiRestTasksBody1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **content** | **String** |  |  |
| **description** | **String** |  | [optional] |
| **project_id** | [**ProjectId2**](ProjectId2.md) |  | [optional] |
| **section_id** | [**SectionId1**](SectionId1.md) |  | [optional] |
| **parent_id** | [**ParentId**](ParentId.md) |  | [optional] |
| **order** | **Integer** |  | [optional] |
| **labels** | **Array&lt;String&gt;** |  | [optional] |
| **priority** | **Integer** |  | [optional] |
| **assignee_id** | **Integer** |  | [optional] |
| **due_string** | **String** |  | [optional] |
| **due_date** | **String** |  | [optional] |
| **due_datetime** | **String** |  | [optional] |
| **due_lang** | **String** |  | [optional] |
| **duration** | **Integer** |  | [optional] |
| **duration_unit** | **String** |  | [optional] |
| **deadline_date** | **String** |  | [optional] |
| **deadline_lang** | **String** |  | [optional] |

## Example

```ruby
require 'todoist'

instance = Todoist::TodoistAppsApiRestTasksBody1.new(
  content: null,
  description: null,
  project_id: null,
  section_id: null,
  parent_id: null,
  order: null,
  labels: null,
  priority: null,
  assignee_id: null,
  due_string: null,
  due_date: null,
  due_datetime: null,
  due_lang: null,
  duration: null,
  duration_unit: null,
  deadline_date: null,
  deadline_lang: null
)
```

