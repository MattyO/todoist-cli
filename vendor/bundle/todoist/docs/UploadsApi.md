# Todoist::UploadsApi

All URIs are relative to *https://api.todoist.com/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_upload_api_v1_uploads_delete**](UploadsApi.md#delete_upload_api_v1_uploads_delete) | **DELETE** /api/v1/uploads | Delete Upload |
| [**upload_file_api_v1_uploads_post**](UploadsApi.md#upload_file_api_v1_uploads_post) | **POST** /api/v1/uploads | Upload File |


## delete_upload_api_v1_uploads_delete

> String delete_upload_api_v1_uploads_delete(file_url)

Delete Upload

### Examples

```ruby
require 'time'
require 'todoist'

api_instance = Todoist::UploadsApi.new
file_url = 'file_url_example' # String | 

begin
  # Delete Upload
  result = api_instance.delete_upload_api_v1_uploads_delete(file_url)
  p result
rescue Todoist::ApiError => e
  puts "Error when calling UploadsApi->delete_upload_api_v1_uploads_delete: #{e}"
end
```

#### Using the delete_upload_api_v1_uploads_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(String, Integer, Hash)> delete_upload_api_v1_uploads_delete_with_http_info(file_url)

```ruby
begin
  # Delete Upload
  data, status_code, headers = api_instance.delete_upload_api_v1_uploads_delete_with_http_info(file_url)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => String
rescue Todoist::ApiError => e
  puts "Error when calling UploadsApi->delete_upload_api_v1_uploads_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_url** | **String** |  |  |

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## upload_file_api_v1_uploads_post

> <UploadResult> upload_file_api_v1_uploads_post(todoist_apps_api_sync_rest_controller_body)

Upload File

### Examples

```ruby
require 'time'
require 'todoist'

api_instance = Todoist::UploadsApi.new
todoist_apps_api_sync_rest_controller_body = Todoist::TodoistAppsApiSyncRestControllerBody.new # TodoistAppsApiSyncRestControllerBody | 

begin
  # Upload File
  result = api_instance.upload_file_api_v1_uploads_post(todoist_apps_api_sync_rest_controller_body)
  p result
rescue Todoist::ApiError => e
  puts "Error when calling UploadsApi->upload_file_api_v1_uploads_post: #{e}"
end
```

#### Using the upload_file_api_v1_uploads_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UploadResult>, Integer, Hash)> upload_file_api_v1_uploads_post_with_http_info(todoist_apps_api_sync_rest_controller_body)

```ruby
begin
  # Upload File
  data, status_code, headers = api_instance.upload_file_api_v1_uploads_post_with_http_info(todoist_apps_api_sync_rest_controller_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UploadResult>
rescue Todoist::ApiError => e
  puts "Error when calling UploadsApi->upload_file_api_v1_uploads_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **todoist_apps_api_sync_rest_controller_body** | [**TodoistAppsApiSyncRestControllerBody**](TodoistAppsApiSyncRestControllerBody.md) |  |  |

### Return type

[**UploadResult**](UploadResult.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

