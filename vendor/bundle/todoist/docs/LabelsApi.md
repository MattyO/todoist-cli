# Todoist::LabelsApi

All URIs are relative to *https://api.todoist.com/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_label_api_v1_labels_post**](LabelsApi.md#create_label_api_v1_labels_post) | **POST** /api/v1/labels | Create Label |
| [**delete_label_api_v1_labels_label_id_delete**](LabelsApi.md#delete_label_api_v1_labels_label_id_delete) | **DELETE** /api/v1/labels/{label_id} | Delete Label |
| [**get_label_api_v1_labels_label_id_get**](LabelsApi.md#get_label_api_v1_labels_label_id_get) | **GET** /api/v1/labels/{label_id} | Get Label |
| [**get_labels_api_v1_labels_get**](LabelsApi.md#get_labels_api_v1_labels_get) | **GET** /api/v1/labels | Get Labels |
| [**shared_labels_api_v1_labels_shared_get**](LabelsApi.md#shared_labels_api_v1_labels_shared_get) | **GET** /api/v1/labels/shared | Shared Labels |
| [**shared_labels_remove_api_v1_labels_shared_remove_post**](LabelsApi.md#shared_labels_remove_api_v1_labels_shared_remove_post) | **POST** /api/v1/labels/shared/remove | Shared Labels Remove |
| [**shared_labels_rename_api_v1_labels_shared_rename_post**](LabelsApi.md#shared_labels_rename_api_v1_labels_shared_rename_post) | **POST** /api/v1/labels/shared/rename | Shared Labels Rename |
| [**update_label_api_v1_labels_label_id_post**](LabelsApi.md#update_label_api_v1_labels_label_id_post) | **POST** /api/v1/labels/{label_id} | Update Label |


## create_label_api_v1_labels_post

> <LabelRestView> create_label_api_v1_labels_post(todoist_apps_api_rest_labels_body4)

Create Label

### Examples

```ruby
require 'time'
require 'todoist'

api_instance = Todoist::LabelsApi.new
todoist_apps_api_rest_labels_body4 = Todoist::TodoistAppsApiRestLabelsBody4.new({name: 'name_example'}) # TodoistAppsApiRestLabelsBody4 | 

begin
  # Create Label
  result = api_instance.create_label_api_v1_labels_post(todoist_apps_api_rest_labels_body4)
  p result
rescue Todoist::ApiError => e
  puts "Error when calling LabelsApi->create_label_api_v1_labels_post: #{e}"
end
```

#### Using the create_label_api_v1_labels_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LabelRestView>, Integer, Hash)> create_label_api_v1_labels_post_with_http_info(todoist_apps_api_rest_labels_body4)

```ruby
begin
  # Create Label
  data, status_code, headers = api_instance.create_label_api_v1_labels_post_with_http_info(todoist_apps_api_rest_labels_body4)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LabelRestView>
rescue Todoist::ApiError => e
  puts "Error when calling LabelsApi->create_label_api_v1_labels_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **todoist_apps_api_rest_labels_body4** | [**TodoistAppsApiRestLabelsBody4**](TodoistAppsApiRestLabelsBody4.md) |  |  |

### Return type

[**LabelRestView**](LabelRestView.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_label_api_v1_labels_label_id_delete

> Object delete_label_api_v1_labels_label_id_delete(label_id)

Delete Label

Deletes a personal label. All instances of the label will be removed from tasks

### Examples

```ruby
require 'time'
require 'todoist'

api_instance = Todoist::LabelsApi.new
label_id = 56 # Integer | 

begin
  # Delete Label
  result = api_instance.delete_label_api_v1_labels_label_id_delete(label_id)
  p result
rescue Todoist::ApiError => e
  puts "Error when calling LabelsApi->delete_label_api_v1_labels_label_id_delete: #{e}"
end
```

#### Using the delete_label_api_v1_labels_label_id_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> delete_label_api_v1_labels_label_id_delete_with_http_info(label_id)

```ruby
begin
  # Delete Label
  data, status_code, headers = api_instance.delete_label_api_v1_labels_label_id_delete_with_http_info(label_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue Todoist::ApiError => e
  puts "Error when calling LabelsApi->delete_label_api_v1_labels_label_id_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **label_id** | **Integer** |  |  |

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_label_api_v1_labels_label_id_get

> <LabelRestView> get_label_api_v1_labels_label_id_get(label_id)

Get Label

### Examples

```ruby
require 'time'
require 'todoist'

api_instance = Todoist::LabelsApi.new
label_id = 56 # Integer | 

begin
  # Get Label
  result = api_instance.get_label_api_v1_labels_label_id_get(label_id)
  p result
rescue Todoist::ApiError => e
  puts "Error when calling LabelsApi->get_label_api_v1_labels_label_id_get: #{e}"
end
```

#### Using the get_label_api_v1_labels_label_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LabelRestView>, Integer, Hash)> get_label_api_v1_labels_label_id_get_with_http_info(label_id)

```ruby
begin
  # Get Label
  data, status_code, headers = api_instance.get_label_api_v1_labels_label_id_get_with_http_info(label_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LabelRestView>
rescue Todoist::ApiError => e
  puts "Error when calling LabelsApi->get_label_api_v1_labels_label_id_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **label_id** | **Integer** |  |  |

### Return type

[**LabelRestView**](LabelRestView.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_labels_api_v1_labels_get

> <PaginatedListLabelRestView> get_labels_api_v1_labels_get(opts)

Get Labels

### Examples

```ruby
require 'time'
require 'todoist'

api_instance = Todoist::LabelsApi.new
opts = {
  cursor: 'cursor_example', # String | 
  limit: 56 # Integer | 
}

begin
  # Get Labels
  result = api_instance.get_labels_api_v1_labels_get(opts)
  p result
rescue Todoist::ApiError => e
  puts "Error when calling LabelsApi->get_labels_api_v1_labels_get: #{e}"
end
```

#### Using the get_labels_api_v1_labels_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedListLabelRestView>, Integer, Hash)> get_labels_api_v1_labels_get_with_http_info(opts)

```ruby
begin
  # Get Labels
  data, status_code, headers = api_instance.get_labels_api_v1_labels_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedListLabelRestView>
rescue Todoist::ApiError => e
  puts "Error when calling LabelsApi->get_labels_api_v1_labels_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cursor** | **String** |  | [optional] |
| **limit** | **Integer** |  | [optional][default to 50] |

### Return type

[**PaginatedListLabelRestView**](PaginatedListLabelRestView.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## shared_labels_api_v1_labels_shared_get

> <PaginatedListStr> shared_labels_api_v1_labels_shared_get(opts)

Shared Labels

Returns a set of unique strings containing labels from active tasks.  By default, the names of a user's personal labels will also be included. These can be excluded by passing the `omit_personal` parameter.

### Examples

```ruby
require 'time'
require 'todoist'

api_instance = Todoist::LabelsApi.new
opts = {
  omit_personal: true, # Boolean | 
  cursor: 'cursor_example', # String | 
  limit: 56 # Integer | 
}

begin
  # Shared Labels
  result = api_instance.shared_labels_api_v1_labels_shared_get(opts)
  p result
rescue Todoist::ApiError => e
  puts "Error when calling LabelsApi->shared_labels_api_v1_labels_shared_get: #{e}"
end
```

#### Using the shared_labels_api_v1_labels_shared_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedListStr>, Integer, Hash)> shared_labels_api_v1_labels_shared_get_with_http_info(opts)

```ruby
begin
  # Shared Labels
  data, status_code, headers = api_instance.shared_labels_api_v1_labels_shared_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedListStr>
rescue Todoist::ApiError => e
  puts "Error when calling LabelsApi->shared_labels_api_v1_labels_shared_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **omit_personal** | **Boolean** |  | [optional][default to false] |
| **cursor** | **String** |  | [optional] |
| **limit** | **Integer** |  | [optional][default to 50] |

### Return type

[**PaginatedListStr**](PaginatedListStr.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## shared_labels_remove_api_v1_labels_shared_remove_post

> Object shared_labels_remove_api_v1_labels_shared_remove_post(todoist_apps_api_rest_labels_body1)

Shared Labels Remove

Remove the given shared label from all active tasks

### Examples

```ruby
require 'time'
require 'todoist'

api_instance = Todoist::LabelsApi.new
todoist_apps_api_rest_labels_body1 = Todoist::TodoistAppsApiRestLabelsBody1.new({name: 'name_example'}) # TodoistAppsApiRestLabelsBody1 | 

begin
  # Shared Labels Remove
  result = api_instance.shared_labels_remove_api_v1_labels_shared_remove_post(todoist_apps_api_rest_labels_body1)
  p result
rescue Todoist::ApiError => e
  puts "Error when calling LabelsApi->shared_labels_remove_api_v1_labels_shared_remove_post: #{e}"
end
```

#### Using the shared_labels_remove_api_v1_labels_shared_remove_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> shared_labels_remove_api_v1_labels_shared_remove_post_with_http_info(todoist_apps_api_rest_labels_body1)

```ruby
begin
  # Shared Labels Remove
  data, status_code, headers = api_instance.shared_labels_remove_api_v1_labels_shared_remove_post_with_http_info(todoist_apps_api_rest_labels_body1)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue Todoist::ApiError => e
  puts "Error when calling LabelsApi->shared_labels_remove_api_v1_labels_shared_remove_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **todoist_apps_api_rest_labels_body1** | [**TodoistAppsApiRestLabelsBody1**](TodoistAppsApiRestLabelsBody1.md) |  |  |

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## shared_labels_rename_api_v1_labels_shared_rename_post

> Object shared_labels_rename_api_v1_labels_shared_rename_post(name, todoist_apps_api_rest_labels_body2)

Shared Labels Rename

Rename the given shared label from all active tasks

### Examples

```ruby
require 'time'
require 'todoist'

api_instance = Todoist::LabelsApi.new
name = 'name_example' # String | 
todoist_apps_api_rest_labels_body2 = Todoist::TodoistAppsApiRestLabelsBody2.new({new_name: 'new_name_example'}) # TodoistAppsApiRestLabelsBody2 | 

begin
  # Shared Labels Rename
  result = api_instance.shared_labels_rename_api_v1_labels_shared_rename_post(name, todoist_apps_api_rest_labels_body2)
  p result
rescue Todoist::ApiError => e
  puts "Error when calling LabelsApi->shared_labels_rename_api_v1_labels_shared_rename_post: #{e}"
end
```

#### Using the shared_labels_rename_api_v1_labels_shared_rename_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> shared_labels_rename_api_v1_labels_shared_rename_post_with_http_info(name, todoist_apps_api_rest_labels_body2)

```ruby
begin
  # Shared Labels Rename
  data, status_code, headers = api_instance.shared_labels_rename_api_v1_labels_shared_rename_post_with_http_info(name, todoist_apps_api_rest_labels_body2)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue Todoist::ApiError => e
  puts "Error when calling LabelsApi->shared_labels_rename_api_v1_labels_shared_rename_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  |  |
| **todoist_apps_api_rest_labels_body2** | [**TodoistAppsApiRestLabelsBody2**](TodoistAppsApiRestLabelsBody2.md) |  |  |

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_label_api_v1_labels_label_id_post

> <LabelRestView> update_label_api_v1_labels_label_id_post(label_id, todoist_apps_api_rest_labels_body3)

Update Label

### Examples

```ruby
require 'time'
require 'todoist'

api_instance = Todoist::LabelsApi.new
label_id = 56 # Integer | 
todoist_apps_api_rest_labels_body3 = Todoist::TodoistAppsApiRestLabelsBody3.new # TodoistAppsApiRestLabelsBody3 | 

begin
  # Update Label
  result = api_instance.update_label_api_v1_labels_label_id_post(label_id, todoist_apps_api_rest_labels_body3)
  p result
rescue Todoist::ApiError => e
  puts "Error when calling LabelsApi->update_label_api_v1_labels_label_id_post: #{e}"
end
```

#### Using the update_label_api_v1_labels_label_id_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LabelRestView>, Integer, Hash)> update_label_api_v1_labels_label_id_post_with_http_info(label_id, todoist_apps_api_rest_labels_body3)

```ruby
begin
  # Update Label
  data, status_code, headers = api_instance.update_label_api_v1_labels_label_id_post_with_http_info(label_id, todoist_apps_api_rest_labels_body3)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LabelRestView>
rescue Todoist::ApiError => e
  puts "Error when calling LabelsApi->update_label_api_v1_labels_label_id_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **label_id** | **Integer** |  |  |
| **todoist_apps_api_rest_labels_body3** | [**TodoistAppsApiRestLabelsBody3**](TodoistAppsApiRestLabelsBody3.md) |  |  |

### Return type

[**LabelRestView**](LabelRestView.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

