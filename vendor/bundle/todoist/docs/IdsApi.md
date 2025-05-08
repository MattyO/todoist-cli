# Todoist::IdsApi

All URIs are relative to *https://api.todoist.com/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**id_mappings_api_v1_id_mappings_obj_name_obj_ids_get**](IdsApi.md#id_mappings_api_v1_id_mappings_obj_name_obj_ids_get) | **GET** /api/v1/id_mappings/{obj_name}/{obj_ids} | Id Mappings |


## id_mappings_api_v1_id_mappings_obj_name_obj_ids_get

> <Array<IDMapping>> id_mappings_api_v1_id_mappings_obj_name_obj_ids_get(obj_name, obj_ids)

Id Mappings

Translates IDs from v1 to v2 or vice versa.  IDs are not unique across object types, hence the need to specify the object type.  When V1 ids are provided, the function will return the corresponding V2 ids, if they exist, and vice versa.  When no objects are found, an empty list is returned.

### Examples

```ruby
require 'time'
require 'todoist'

api_instance = Todoist::IdsApi.new
obj_name = 'sections' # String | 
obj_ids = 'obj_ids_example' # String | 

begin
  # Id Mappings
  result = api_instance.id_mappings_api_v1_id_mappings_obj_name_obj_ids_get(obj_name, obj_ids)
  p result
rescue Todoist::ApiError => e
  puts "Error when calling IdsApi->id_mappings_api_v1_id_mappings_obj_name_obj_ids_get: #{e}"
end
```

#### Using the id_mappings_api_v1_id_mappings_obj_name_obj_ids_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<IDMapping>>, Integer, Hash)> id_mappings_api_v1_id_mappings_obj_name_obj_ids_get_with_http_info(obj_name, obj_ids)

```ruby
begin
  # Id Mappings
  data, status_code, headers = api_instance.id_mappings_api_v1_id_mappings_obj_name_obj_ids_get_with_http_info(obj_name, obj_ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<IDMapping>>
rescue Todoist::ApiError => e
  puts "Error when calling IdsApi->id_mappings_api_v1_id_mappings_obj_name_obj_ids_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **obj_name** | **String** |  |  |
| **obj_ids** | **String** |  |  |

### Return type

[**Array&lt;IDMapping&gt;**](IDMapping.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

