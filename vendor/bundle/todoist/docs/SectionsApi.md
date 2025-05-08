# Todoist::SectionsApi

All URIs are relative to *https://api.todoist.com/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_section_api_v1_sections_post**](SectionsApi.md#create_section_api_v1_sections_post) | **POST** /api/v1/sections | Create Section |
| [**delete_section_api_v1_sections_section_id_delete**](SectionsApi.md#delete_section_api_v1_sections_section_id_delete) | **DELETE** /api/v1/sections/{section_id} | Delete Section |
| [**get_section_api_v1_sections_section_id_get**](SectionsApi.md#get_section_api_v1_sections_section_id_get) | **GET** /api/v1/sections/{section_id} | Get Section |
| [**get_sections_api_v1_sections_get**](SectionsApi.md#get_sections_api_v1_sections_get) | **GET** /api/v1/sections | Get Sections |
| [**update_section_api_v1_sections_section_id_post**](SectionsApi.md#update_section_api_v1_sections_section_id_post) | **POST** /api/v1/sections/{section_id} | Update Section |


## create_section_api_v1_sections_post

> <SectionSyncView> create_section_api_v1_sections_post(todoist_apps_api_rest_sections_body1)

Create Section

Create a new section

### Examples

```ruby
require 'time'
require 'todoist'

api_instance = Todoist::SectionsApi.new
todoist_apps_api_rest_sections_body1 = Todoist::TodoistAppsApiRestSectionsBody1.new({name: 'name_example', project_id: Todoist::ProjectId3.new}) # TodoistAppsApiRestSectionsBody1 | 

begin
  # Create Section
  result = api_instance.create_section_api_v1_sections_post(todoist_apps_api_rest_sections_body1)
  p result
rescue Todoist::ApiError => e
  puts "Error when calling SectionsApi->create_section_api_v1_sections_post: #{e}"
end
```

#### Using the create_section_api_v1_sections_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SectionSyncView>, Integer, Hash)> create_section_api_v1_sections_post_with_http_info(todoist_apps_api_rest_sections_body1)

```ruby
begin
  # Create Section
  data, status_code, headers = api_instance.create_section_api_v1_sections_post_with_http_info(todoist_apps_api_rest_sections_body1)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SectionSyncView>
rescue Todoist::ApiError => e
  puts "Error when calling SectionsApi->create_section_api_v1_sections_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **todoist_apps_api_rest_sections_body1** | [**TodoistAppsApiRestSectionsBody1**](TodoistAppsApiRestSectionsBody1.md) |  |  |

### Return type

[**SectionSyncView**](SectionSyncView.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_section_api_v1_sections_section_id_delete

> Object delete_section_api_v1_sections_section_id_delete(section_id)

Delete Section

Delete the section and all of its tasks

### Examples

```ruby
require 'time'
require 'todoist'

api_instance = Todoist::SectionsApi.new
section_id = Todoist::SectionId3.new # SectionId3 | 

begin
  # Delete Section
  result = api_instance.delete_section_api_v1_sections_section_id_delete(section_id)
  p result
rescue Todoist::ApiError => e
  puts "Error when calling SectionsApi->delete_section_api_v1_sections_section_id_delete: #{e}"
end
```

#### Using the delete_section_api_v1_sections_section_id_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> delete_section_api_v1_sections_section_id_delete_with_http_info(section_id)

```ruby
begin
  # Delete Section
  data, status_code, headers = api_instance.delete_section_api_v1_sections_section_id_delete_with_http_info(section_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue Todoist::ApiError => e
  puts "Error when calling SectionsApi->delete_section_api_v1_sections_section_id_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **section_id** | [**SectionId3**](.md) |  |  |

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_section_api_v1_sections_section_id_get

> <SectionSyncView> get_section_api_v1_sections_section_id_get(section_id)

Get Section

Return the section for the given section ID

### Examples

```ruby
require 'time'
require 'todoist'

api_instance = Todoist::SectionsApi.new
section_id = Todoist::SectionId2.new # SectionId2 | 

begin
  # Get Section
  result = api_instance.get_section_api_v1_sections_section_id_get(section_id)
  p result
rescue Todoist::ApiError => e
  puts "Error when calling SectionsApi->get_section_api_v1_sections_section_id_get: #{e}"
end
```

#### Using the get_section_api_v1_sections_section_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SectionSyncView>, Integer, Hash)> get_section_api_v1_sections_section_id_get_with_http_info(section_id)

```ruby
begin
  # Get Section
  data, status_code, headers = api_instance.get_section_api_v1_sections_section_id_get_with_http_info(section_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SectionSyncView>
rescue Todoist::ApiError => e
  puts "Error when calling SectionsApi->get_section_api_v1_sections_section_id_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **section_id** | [**SectionId2**](.md) |  |  |

### Return type

[**SectionSyncView**](SectionSyncView.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_sections_api_v1_sections_get

> <PaginatedListSectionSyncView> get_sections_api_v1_sections_get(opts)

Get Sections

Return a list of all active sections for the user

### Examples

```ruby
require 'time'
require 'todoist'

api_instance = Todoist::SectionsApi.new
opts = {
  project_id: Todoist::ProjectId.new, # ProjectId | 
  cursor: 'cursor_example', # String | 
  limit: 56 # Integer | 
}

begin
  # Get Sections
  result = api_instance.get_sections_api_v1_sections_get(opts)
  p result
rescue Todoist::ApiError => e
  puts "Error when calling SectionsApi->get_sections_api_v1_sections_get: #{e}"
end
```

#### Using the get_sections_api_v1_sections_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedListSectionSyncView>, Integer, Hash)> get_sections_api_v1_sections_get_with_http_info(opts)

```ruby
begin
  # Get Sections
  data, status_code, headers = api_instance.get_sections_api_v1_sections_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedListSectionSyncView>
rescue Todoist::ApiError => e
  puts "Error when calling SectionsApi->get_sections_api_v1_sections_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | [**ProjectId**](.md) |  | [optional] |
| **cursor** | **String** |  | [optional] |
| **limit** | **Integer** |  | [optional][default to 50] |

### Return type

[**PaginatedListSectionSyncView**](PaginatedListSectionSyncView.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_section_api_v1_sections_section_id_post

> <SectionSyncView> update_section_api_v1_sections_section_id_post(section_id, todoist_apps_api_rest_sections_body2)

Update Section

### Examples

```ruby
require 'time'
require 'todoist'

api_instance = Todoist::SectionsApi.new
section_id = Todoist::SectionId3.new # SectionId3 | 
todoist_apps_api_rest_sections_body2 = Todoist::TodoistAppsApiRestSectionsBody2.new # TodoistAppsApiRestSectionsBody2 | 

begin
  # Update Section
  result = api_instance.update_section_api_v1_sections_section_id_post(section_id, todoist_apps_api_rest_sections_body2)
  p result
rescue Todoist::ApiError => e
  puts "Error when calling SectionsApi->update_section_api_v1_sections_section_id_post: #{e}"
end
```

#### Using the update_section_api_v1_sections_section_id_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SectionSyncView>, Integer, Hash)> update_section_api_v1_sections_section_id_post_with_http_info(section_id, todoist_apps_api_rest_sections_body2)

```ruby
begin
  # Update Section
  data, status_code, headers = api_instance.update_section_api_v1_sections_section_id_post_with_http_info(section_id, todoist_apps_api_rest_sections_body2)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SectionSyncView>
rescue Todoist::ApiError => e
  puts "Error when calling SectionsApi->update_section_api_v1_sections_section_id_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **section_id** | [**SectionId3**](.md) |  |  |
| **todoist_apps_api_rest_sections_body2** | [**TodoistAppsApiRestSectionsBody2**](TodoistAppsApiRestSectionsBody2.md) |  |  |

### Return type

[**SectionSyncView**](SectionSyncView.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

