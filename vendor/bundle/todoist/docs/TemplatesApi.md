# Todoist::TemplatesApi

All URIs are relative to *https://api.todoist.com/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_project_from_file_api_v1_templates_create_project_from_file_post**](TemplatesApi.md#create_project_from_file_api_v1_templates_create_project_from_file_post) | **POST** /api/v1/templates/create_project_from_file | Create Project From File |
| [**export_as_file_api_v1_templates_file_get**](TemplatesApi.md#export_as_file_api_v1_templates_file_get) | **GET** /api/v1/templates/file | Export As File |
| [**export_as_url_api_v1_templates_url_get**](TemplatesApi.md#export_as_url_api_v1_templates_url_get) | **GET** /api/v1/templates/url | Export As Url |
| [**import_into_project_from_file_api_v1_templates_import_into_project_from_file_post**](TemplatesApi.md#import_into_project_from_file_api_v1_templates_import_into_project_from_file_post) | **POST** /api/v1/templates/import_into_project_from_file | Import Into Project From File |
| [**import_into_project_from_template_id_api_v1_templates_import_into_project_from_template_id_post**](TemplatesApi.md#import_into_project_from_template_id_api_v1_templates_import_into_project_from_template_id_post) | **POST** /api/v1/templates/import_into_project_from_template_id | Import Into Project From Template Id |


## create_project_from_file_api_v1_templates_create_project_from_file_post

> <ProjectImportCreateResponseWithObjects> create_project_from_file_api_v1_templates_create_project_from_file_post(todoist_apps_import_export_controllers_rest_body3)

Create Project From File

A template can be imported in an existing project, or in a newly created one.  Upload a file suitable to be passed as a template to be imported into a project.

### Examples

```ruby
require 'time'
require 'todoist'

api_instance = Todoist::TemplatesApi.new
todoist_apps_import_export_controllers_rest_body3 = Todoist::TodoistAppsImportExportControllersRestBody3.new({name: 'name_example'}) # TodoistAppsImportExportControllersRestBody3 | 

begin
  # Create Project From File
  result = api_instance.create_project_from_file_api_v1_templates_create_project_from_file_post(todoist_apps_import_export_controllers_rest_body3)
  p result
rescue Todoist::ApiError => e
  puts "Error when calling TemplatesApi->create_project_from_file_api_v1_templates_create_project_from_file_post: #{e}"
end
```

#### Using the create_project_from_file_api_v1_templates_create_project_from_file_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProjectImportCreateResponseWithObjects>, Integer, Hash)> create_project_from_file_api_v1_templates_create_project_from_file_post_with_http_info(todoist_apps_import_export_controllers_rest_body3)

```ruby
begin
  # Create Project From File
  data, status_code, headers = api_instance.create_project_from_file_api_v1_templates_create_project_from_file_post_with_http_info(todoist_apps_import_export_controllers_rest_body3)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProjectImportCreateResponseWithObjects>
rescue Todoist::ApiError => e
  puts "Error when calling TemplatesApi->create_project_from_file_api_v1_templates_create_project_from_file_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **todoist_apps_import_export_controllers_rest_body3** | [**TodoistAppsImportExportControllersRestBody3**](TodoistAppsImportExportControllersRestBody3.md) |  |  |

### Return type

[**ProjectImportCreateResponseWithObjects**](ProjectImportCreateResponseWithObjects.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## export_as_file_api_v1_templates_file_get

> String export_as_file_api_v1_templates_file_get(project_id, opts)

Export As File

Get a template for a project as a CSV file

### Examples

```ruby
require 'time'
require 'todoist'

api_instance = Todoist::TemplatesApi.new
project_id = Todoist::ProjectId3.new # ProjectId3 | 
opts = {
  use_relative_dates: true # Boolean | 
}

begin
  # Export As File
  result = api_instance.export_as_file_api_v1_templates_file_get(project_id, opts)
  p result
rescue Todoist::ApiError => e
  puts "Error when calling TemplatesApi->export_as_file_api_v1_templates_file_get: #{e}"
end
```

#### Using the export_as_file_api_v1_templates_file_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(String, Integer, Hash)> export_as_file_api_v1_templates_file_get_with_http_info(project_id, opts)

```ruby
begin
  # Export As File
  data, status_code, headers = api_instance.export_as_file_api_v1_templates_file_get_with_http_info(project_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => String
rescue Todoist::ApiError => e
  puts "Error when calling TemplatesApi->export_as_file_api_v1_templates_file_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | [**ProjectId3**](.md) |  |  |
| **use_relative_dates** | **Boolean** |  | [optional][default to true] |

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/html


## export_as_url_api_v1_templates_url_get

> <FileURLResponse> export_as_url_api_v1_templates_url_get(project_id, opts)

Export As Url

Get a template for a project as a shareable URL.  The URL can then be passed to `https://todoist.com/api/v1/import/project_from_url?t_url=<url>` to make a shareable template.

### Examples

```ruby
require 'time'
require 'todoist'

api_instance = Todoist::TemplatesApi.new
project_id = Todoist::ProjectId3.new # ProjectId3 | 
opts = {
  use_relative_dates: true # Boolean | 
}

begin
  # Export As Url
  result = api_instance.export_as_url_api_v1_templates_url_get(project_id, opts)
  p result
rescue Todoist::ApiError => e
  puts "Error when calling TemplatesApi->export_as_url_api_v1_templates_url_get: #{e}"
end
```

#### Using the export_as_url_api_v1_templates_url_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FileURLResponse>, Integer, Hash)> export_as_url_api_v1_templates_url_get_with_http_info(project_id, opts)

```ruby
begin
  # Export As Url
  data, status_code, headers = api_instance.export_as_url_api_v1_templates_url_get_with_http_info(project_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FileURLResponse>
rescue Todoist::ApiError => e
  puts "Error when calling TemplatesApi->export_as_url_api_v1_templates_url_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | [**ProjectId3**](.md) |  |  |
| **use_relative_dates** | **Boolean** |  | [optional][default to true] |

### Return type

[**FileURLResponse**](FileURLResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## import_into_project_from_file_api_v1_templates_import_into_project_from_file_post

> <ProjectImportResponse> import_into_project_from_file_api_v1_templates_import_into_project_from_file_post(todoist_apps_import_export_controllers_rest_body2)

Import Into Project From File

A template can be imported in an existing project, or in a newly created one.  Upload a file suitable to be passed as a template to be imported into a project.

### Examples

```ruby
require 'time'
require 'todoist'

api_instance = Todoist::TemplatesApi.new
todoist_apps_import_export_controllers_rest_body2 = Todoist::TodoistAppsImportExportControllersRestBody2.new({project_id: Todoist::ProjectId3.new}) # TodoistAppsImportExportControllersRestBody2 | 

begin
  # Import Into Project From File
  result = api_instance.import_into_project_from_file_api_v1_templates_import_into_project_from_file_post(todoist_apps_import_export_controllers_rest_body2)
  p result
rescue Todoist::ApiError => e
  puts "Error when calling TemplatesApi->import_into_project_from_file_api_v1_templates_import_into_project_from_file_post: #{e}"
end
```

#### Using the import_into_project_from_file_api_v1_templates_import_into_project_from_file_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProjectImportResponse>, Integer, Hash)> import_into_project_from_file_api_v1_templates_import_into_project_from_file_post_with_http_info(todoist_apps_import_export_controllers_rest_body2)

```ruby
begin
  # Import Into Project From File
  data, status_code, headers = api_instance.import_into_project_from_file_api_v1_templates_import_into_project_from_file_post_with_http_info(todoist_apps_import_export_controllers_rest_body2)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProjectImportResponse>
rescue Todoist::ApiError => e
  puts "Error when calling TemplatesApi->import_into_project_from_file_api_v1_templates_import_into_project_from_file_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **todoist_apps_import_export_controllers_rest_body2** | [**TodoistAppsImportExportControllersRestBody2**](TodoistAppsImportExportControllersRestBody2.md) |  |  |

### Return type

[**ProjectImportResponse**](ProjectImportResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## import_into_project_from_template_id_api_v1_templates_import_into_project_from_template_id_post

> <ProjectImportResponse> import_into_project_from_template_id_api_v1_templates_import_into_project_from_template_id_post(template_id, todoist_apps_import_export_controllers_rest_body1)

Import Into Project From Template Id

### Examples

```ruby
require 'time'
require 'todoist'

api_instance = Todoist::TemplatesApi.new
template_id = 'template_id_example' # String | 
todoist_apps_import_export_controllers_rest_body1 = Todoist::TodoistAppsImportExportControllersRestBody1.new({project_id: Todoist::ProjectId3.new}) # TodoistAppsImportExportControllersRestBody1 | 

begin
  # Import Into Project From Template Id
  result = api_instance.import_into_project_from_template_id_api_v1_templates_import_into_project_from_template_id_post(template_id, todoist_apps_import_export_controllers_rest_body1)
  p result
rescue Todoist::ApiError => e
  puts "Error when calling TemplatesApi->import_into_project_from_template_id_api_v1_templates_import_into_project_from_template_id_post: #{e}"
end
```

#### Using the import_into_project_from_template_id_api_v1_templates_import_into_project_from_template_id_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProjectImportResponse>, Integer, Hash)> import_into_project_from_template_id_api_v1_templates_import_into_project_from_template_id_post_with_http_info(template_id, todoist_apps_import_export_controllers_rest_body1)

```ruby
begin
  # Import Into Project From Template Id
  data, status_code, headers = api_instance.import_into_project_from_template_id_api_v1_templates_import_into_project_from_template_id_post_with_http_info(template_id, todoist_apps_import_export_controllers_rest_body1)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProjectImportResponse>
rescue Todoist::ApiError => e
  puts "Error when calling TemplatesApi->import_into_project_from_template_id_api_v1_templates_import_into_project_from_template_id_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **template_id** | **String** |  |  |
| **todoist_apps_import_export_controllers_rest_body1** | [**TodoistAppsImportExportControllersRestBody1**](TodoistAppsImportExportControllersRestBody1.md) |  |  |

### Return type

[**ProjectImportResponse**](ProjectImportResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

