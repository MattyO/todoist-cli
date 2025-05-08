# Todoist::TodoistAppsApiRestTasksBody3

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **content** | [**Content**](Content.md) |  | [optional] |
| **description** | [**Description**](Description.md) |  | [optional] |
| **labels** | [**Labels**](Labels.md) |  | [optional] |
| **priority** | [**Priority**](Priority.md) |  | [optional] |
| **due_string** | [**DueString**](DueString.md) |  | [optional] |
| **due_date** | [**DueDate**](DueDate.md) |  | [optional] |
| **due_datetime** | [**DueDatetime**](DueDatetime.md) |  | [optional] |
| **due_lang** | [**DueLang**](DueLang.md) |  | [optional] |
| **assignee_id** | [**AssigneeId**](AssigneeId.md) |  | [optional] |
| **duration** | [**Duration**](Duration.md) |  | [optional] |
| **duration_unit** | [**DurationUnit**](DurationUnit.md) |  | [optional] |
| **deadline_date** | [**DeadlineDate**](DeadlineDate.md) |  | [optional] |
| **deadline_lang** | [**DeadlineLang**](DeadlineLang.md) |  | [optional] |

## Example

```ruby
require 'todoist'

instance = Todoist::TodoistAppsApiRestTasksBody3.new(
  content: null,
  description: null,
  labels: null,
  priority: null,
  due_string: null,
  due_date: null,
  due_datetime: null,
  due_lang: null,
  assignee_id: null,
  duration: null,
  duration_unit: null,
  deadline_date: null,
  deadline_lang: null
)
```

