# Todoist::GetDataV2Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project** | **Hash&lt;String, Object&gt;** |  |  |
| **items** | **Array&lt;Hash&lt;String, Object&gt;&gt;** |  |  |
| **sections** | **Array&lt;Hash&lt;String, Object&gt;&gt;** |  |  |
| **project_notes** | **Array&lt;Hash&lt;String, Object&gt;&gt;** |  |  |
| **collaborators** | [**Array&lt;ExposedCollaboratorSyncView&gt;**](ExposedCollaboratorSyncView.md) |  |  |
| **collaborator_states** | **Array&lt;Hash&lt;String, Object&gt;&gt;** |  |  |
| **folder** | [**FolderView**](FolderView.md) |  |  |
| **subprojects** | **Array&lt;Hash&lt;String, Object&gt;&gt;** |  |  |

## Example

```ruby
require 'todoist'

instance = Todoist::GetDataV2Response.new(
  project: null,
  items: null,
  sections: null,
  project_notes: null,
  collaborators: null,
  collaborator_states: null,
  folder: null,
  subprojects: null
)
```

