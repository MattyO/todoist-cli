# Todoist::ActivityApi

All URIs are relative to *https://api.todoist.com/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_activity_logs_api_v1_activities_get**](ActivityApi.md#get_activity_logs_api_v1_activities_get) | **GET** /api/v1/activities | Get Activity Logs |


## get_activity_logs_api_v1_activities_get

> <PaginatedListActivityEvents> get_activity_logs_api_v1_activities_get(opts)

Get Activity Logs

### Examples

```ruby
require 'time'
require 'todoist'

api_instance = Todoist::ActivityApi.new
opts = {
  object_type: 'project', # String | 
  object_id: Todoist::ObjectId.new, # ObjectId | 
  parent_project_id: Todoist::ParentProjectId.new, # ParentProjectId | 
  parent_item_id: Todoist::ParentItemId.new, # ParentItemId | 
  include_parent_object: true, # Boolean | 
  include_child_objects: true, # Boolean | 
  initiator_id: 56, # Integer | 
  initiator_id_null: true, # Boolean | 
  event_type: 'event_type_example', # String | 
  ensure_last_state: true, # Boolean | 
  annotate_notes: true, # Boolean | 
  annotate_parents: true, # Boolean | 
  cursor: 'cursor_example', # String | 
  limit: 56, # Integer | 
  request_body: ['property_example'] # Array<String> | 
}

begin
  # Get Activity Logs
  result = api_instance.get_activity_logs_api_v1_activities_get(opts)
  p result
rescue Todoist::ApiError => e
  puts "Error when calling ActivityApi->get_activity_logs_api_v1_activities_get: #{e}"
end
```

#### Using the get_activity_logs_api_v1_activities_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedListActivityEvents>, Integer, Hash)> get_activity_logs_api_v1_activities_get_with_http_info(opts)

```ruby
begin
  # Get Activity Logs
  data, status_code, headers = api_instance.get_activity_logs_api_v1_activities_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedListActivityEvents>
rescue Todoist::ApiError => e
  puts "Error when calling ActivityApi->get_activity_logs_api_v1_activities_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **object_type** | **String** |  | [optional] |
| **object_id** | [**ObjectId**](.md) |  | [optional] |
| **parent_project_id** | [**ParentProjectId**](.md) |  | [optional] |
| **parent_item_id** | [**ParentItemId**](.md) |  | [optional] |
| **include_parent_object** | **Boolean** |  | [optional][default to false] |
| **include_child_objects** | **Boolean** |  | [optional][default to false] |
| **initiator_id** | **Integer** |  | [optional] |
| **initiator_id_null** | **Boolean** |  | [optional] |
| **event_type** | **String** |  | [optional] |
| **ensure_last_state** | **Boolean** |  | [optional][default to false] |
| **annotate_notes** | **Boolean** |  | [optional][default to false] |
| **annotate_parents** | **Boolean** |  | [optional][default to false] |
| **cursor** | **String** |  | [optional] |
| **limit** | **Integer** |  | [optional][default to 50] |
| **request_body** | [**Array&lt;String&gt;**](String.md) |  | [optional] |

### Return type

[**PaginatedListActivityEvents**](PaginatedListActivityEvents.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

