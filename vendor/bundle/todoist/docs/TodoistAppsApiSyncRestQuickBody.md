# Todoist::TodoistAppsApiSyncRestQuickBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **text** | **String** | The text of the task that is parsed. It can include a due date in free form text, a project name starting with the &#x60;#&#x60; character (without spaces), a label starting with the &#x60;@&#x60; character, an assignee starting with the &#x60;+&#x60; character, a priority (e.g., &#x60;p1&#x60;), a deadline between &#x60;{}&#x60; (e.g. {in 3 days}), or a description starting from &#x60;//&#x60; until the end of the text. |  |
| **note** | **String** |  | [optional] |
| **reminder** | **String** |  | [optional] |
| **auto_reminder** | **Boolean** | When this option is enabled, the default reminder will be added to the new item if it has a due date with time set. See also the [auto_reminder user option](#tag/Sync/User) for more info about the default reminder. | [optional][default to false] |
| **meta** | **Boolean** |  | [optional][default to false] |

## Example

```ruby
require 'todoist'

instance = Todoist::TodoistAppsApiSyncRestQuickBody.new(
  text: null,
  note: null,
  reminder: null,
  auto_reminder: null,
  meta: null
)
```

