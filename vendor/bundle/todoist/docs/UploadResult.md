# Todoist::UploadResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_url** | **String** |  |  |
| **file_name** | **String** |  |  |
| **file_size** | **Integer** |  |  |
| **file_type** | **String** |  |  |
| **resource_type** | **String** |  |  |
| **image** | **String** |  | [optional] |
| **image_width** | **Integer** |  | [optional] |
| **image_height** | **Integer** |  | [optional] |
| **upload_state** | **String** |  | [optional][default to &#39;pending&#39;] |

## Example

```ruby
require 'todoist'

instance = Todoist::UploadResult.new(
  file_url: null,
  file_name: null,
  file_size: null,
  file_type: null,
  resource_type: null,
  image: null,
  image_width: null,
  image_height: null,
  upload_state: null
)
```

