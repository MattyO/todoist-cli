# Todoist::ProjectImportCreateResponseWithObjects

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** |  |  |
| **project_id** | **String** |  |  |
| **template_type** | **String** |  |  |
| **projects** | **Array&lt;Hash&lt;String, Object&gt;&gt;** |  |  |
| **sections** | **Array&lt;Hash&lt;String, Object&gt;&gt;** |  |  |
| **tasks** | **Array&lt;Hash&lt;String, Object&gt;&gt;** |  |  |
| **comments** | **Array&lt;Hash&lt;String, Object&gt;&gt;** |  |  |
| **project_notes** | **Array&lt;Hash&lt;String, Object&gt;&gt;** |  |  |

## Example

```ruby
require 'todoist'

instance = Todoist::ProjectImportCreateResponseWithObjects.new(
  status: null,
  project_id: null,
  template_type: null,
  projects: null,
  sections: null,
  tasks: null,
  comments: null,
  project_notes: null
)
```

