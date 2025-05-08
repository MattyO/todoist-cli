# Todoist::NoteSyncView

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **posted_uid** | **String** |  |  |
| **content** | **String** |  | [optional][default to &#39;&#39;] |
| **file_attachment** | [**Hash&lt;String, NoteSyncViewFileAttachmentValue&gt;**](NoteSyncViewFileAttachmentValue.md) |  |  |
| **uids_to_notify** | **Array&lt;String&gt;** |  |  |
| **is_deleted** | **Boolean** |  |  |
| **posted_at** | **String** |  |  |
| **reactions** | **Hash&lt;String, Array&lt;String&gt;&gt;** |  |  |

## Example

```ruby
require 'todoist'

instance = Todoist::NoteSyncView.new(
  id: null,
  posted_uid: null,
  content: null,
  file_attachment: null,
  uids_to_notify: null,
  is_deleted: null,
  posted_at: null,
  reactions: null
)
```

