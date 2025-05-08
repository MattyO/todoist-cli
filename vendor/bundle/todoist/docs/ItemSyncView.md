# Todoist::ItemSyncView

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** |  |  |
| **id** | **String** |  |  |
| **project_id** | **String** |  |  |
| **section_id** | **String** |  |  |
| **parent_id** | **String** |  |  |
| **added_by_uid** | **String** |  |  |
| **assigned_by_uid** | **String** |  |  |
| **responsible_uid** | **String** |  |  |
| **labels** | **Array&lt;String&gt;** |  |  |
| **deadline** | [**Hash&lt;String, ItemSyncViewDeadlineValue&gt;**](ItemSyncViewDeadlineValue.md) |  |  |
| **duration** | [**Hash&lt;String, ItemSyncViewDurationValue&gt;**](ItemSyncViewDurationValue.md) |  |  |
| **checked** | **Boolean** |  |  |
| **is_deleted** | **Boolean** |  |  |
| **added_at** | **String** |  |  |
| **completed_at** | **String** |  |  |
| **updated_at** | **String** |  |  |
| **due** | **Hash&lt;String, Object&gt;** |  |  |
| **priority** | **Integer** |  |  |
| **child_order** | **Integer** |  |  |
| **content** | **String** |  |  |
| **description** | **String** |  |  |
| **note_count** | **Integer** |  |  |
| **day_order** | **Integer** |  |  |
| **is_collapsed** | **Boolean** |  |  |

## Example

```ruby
require 'todoist'

instance = Todoist::ItemSyncView.new(
  user_id: null,
  id: null,
  project_id: null,
  section_id: null,
  parent_id: null,
  added_by_uid: null,
  assigned_by_uid: null,
  responsible_uid: null,
  labels: null,
  deadline: null,
  duration: null,
  checked: null,
  is_deleted: null,
  added_at: null,
  completed_at: null,
  updated_at: null,
  due: null,
  priority: null,
  child_order: null,
  content: null,
  description: null,
  note_count: null,
  day_order: null,
  is_collapsed: null
)
```

