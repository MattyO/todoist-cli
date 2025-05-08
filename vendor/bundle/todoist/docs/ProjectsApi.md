# Todoist::ProjectsApi

All URIs are relative to *https://api.todoist.com/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**archive_project_api_v1_projects_project_id_archive_post**](ProjectsApi.md#archive_project_api_v1_projects_project_id_archive_post) | **POST** /api/v1/projects/{project_id}/archive | Archive Project |
| [**create_project_api_v1_projects_post**](ProjectsApi.md#create_project_api_v1_projects_post) | **POST** /api/v1/projects | Create Project |
| [**delete_project_api_v1_projects_project_id_delete**](ProjectsApi.md#delete_project_api_v1_projects_project_id_delete) | **DELETE** /api/v1/projects/{project_id} | Delete Project |
| [**get_archived_api_v1_projects_archived_get**](ProjectsApi.md#get_archived_api_v1_projects_archived_get) | **GET** /api/v1/projects/archived | Get Archived |
| [**get_project_api_v1_projects_project_id_get**](ProjectsApi.md#get_project_api_v1_projects_project_id_get) | **GET** /api/v1/projects/{project_id} | Get Project |
| [**get_project_collaborators_api_v1_projects_project_id_collaborators_get**](ProjectsApi.md#get_project_collaborators_api_v1_projects_project_id_collaborators_get) | **GET** /api/v1/projects/{project_id}/collaborators | Get Project Collaborators |
| [**get_projects_api_v1_projects_get**](ProjectsApi.md#get_projects_api_v1_projects_get) | **GET** /api/v1/projects | Get Projects |
| [**join_api_v1_projects_project_id_join_post**](ProjectsApi.md#join_api_v1_projects_project_id_join_post) | **POST** /api/v1/projects/{project_id}/join | Join |
| [**unarchive_project_api_v1_projects_project_id_unarchive_post**](ProjectsApi.md#unarchive_project_api_v1_projects_project_id_unarchive_post) | **POST** /api/v1/projects/{project_id}/unarchive | Unarchive Project |
| [**update_project_api_v1_projects_project_id_post**](ProjectsApi.md#update_project_api_v1_projects_project_id_post) | **POST** /api/v1/projects/{project_id} | Update Project |


## archive_project_api_v1_projects_project_id_archive_post

> <ResponseArchiveProjectApiV1ProjectsProjectIdArchivePost> archive_project_api_v1_projects_project_id_archive_post(project_id)

Archive Project

Marks a project as archived. For personal projects, this will archive it just for the initiating user (leaving it visible to any other collaborators). For workspace projects, this will archive it for all workspace users, removing it from view.

### Examples

```ruby
require 'time'
require 'todoist'

api_instance = Todoist::ProjectsApi.new
project_id = Todoist::ProjectId3.new # ProjectId3 | 

begin
  # Archive Project
  result = api_instance.archive_project_api_v1_projects_project_id_archive_post(project_id)
  p result
rescue Todoist::ApiError => e
  puts "Error when calling ProjectsApi->archive_project_api_v1_projects_project_id_archive_post: #{e}"
end
```

#### Using the archive_project_api_v1_projects_project_id_archive_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResponseArchiveProjectApiV1ProjectsProjectIdArchivePost>, Integer, Hash)> archive_project_api_v1_projects_project_id_archive_post_with_http_info(project_id)

```ruby
begin
  # Archive Project
  data, status_code, headers = api_instance.archive_project_api_v1_projects_project_id_archive_post_with_http_info(project_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResponseArchiveProjectApiV1ProjectsProjectIdArchivePost>
rescue Todoist::ApiError => e
  puts "Error when calling ProjectsApi->archive_project_api_v1_projects_project_id_archive_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | [**ProjectId3**](.md) |  |  |

### Return type

[**ResponseArchiveProjectApiV1ProjectsProjectIdArchivePost**](ResponseArchiveProjectApiV1ProjectsProjectIdArchivePost.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_project_api_v1_projects_post

> <ResponseCreateProjectApiV1ProjectsPost> create_project_api_v1_projects_post(todoist_apps_api_rest_projects_body1)

Create Project

Creates a new project and returns it

### Examples

```ruby
require 'time'
require 'todoist'

api_instance = Todoist::ProjectsApi.new
todoist_apps_api_rest_projects_body1 = Todoist::TodoistAppsApiRestProjectsBody1.new({name: 'name_example'}) # TodoistAppsApiRestProjectsBody1 | 

begin
  # Create Project
  result = api_instance.create_project_api_v1_projects_post(todoist_apps_api_rest_projects_body1)
  p result
rescue Todoist::ApiError => e
  puts "Error when calling ProjectsApi->create_project_api_v1_projects_post: #{e}"
end
```

#### Using the create_project_api_v1_projects_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResponseCreateProjectApiV1ProjectsPost>, Integer, Hash)> create_project_api_v1_projects_post_with_http_info(todoist_apps_api_rest_projects_body1)

```ruby
begin
  # Create Project
  data, status_code, headers = api_instance.create_project_api_v1_projects_post_with_http_info(todoist_apps_api_rest_projects_body1)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResponseCreateProjectApiV1ProjectsPost>
rescue Todoist::ApiError => e
  puts "Error when calling ProjectsApi->create_project_api_v1_projects_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **todoist_apps_api_rest_projects_body1** | [**TodoistAppsApiRestProjectsBody1**](TodoistAppsApiRestProjectsBody1.md) |  |  |

### Return type

[**ResponseCreateProjectApiV1ProjectsPost**](ResponseCreateProjectApiV1ProjectsPost.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_project_api_v1_projects_project_id_delete

> Object delete_project_api_v1_projects_project_id_delete(project_id)

Delete Project

Deletes a project and all of its sections and tasks.

### Examples

```ruby
require 'time'
require 'todoist'

api_instance = Todoist::ProjectsApi.new
project_id = Todoist::ProjectId3.new # ProjectId3 | 

begin
  # Delete Project
  result = api_instance.delete_project_api_v1_projects_project_id_delete(project_id)
  p result
rescue Todoist::ApiError => e
  puts "Error when calling ProjectsApi->delete_project_api_v1_projects_project_id_delete: #{e}"
end
```

#### Using the delete_project_api_v1_projects_project_id_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> delete_project_api_v1_projects_project_id_delete_with_http_info(project_id)

```ruby
begin
  # Delete Project
  data, status_code, headers = api_instance.delete_project_api_v1_projects_project_id_delete_with_http_info(project_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue Todoist::ApiError => e
  puts "Error when calling ProjectsApi->delete_project_api_v1_projects_project_id_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | [**ProjectId3**](.md) |  |  |

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_archived_api_v1_projects_archived_get

> <PaginatedListAnnotatedProjectV1ViewFieldInfoAnnotationNoneTypeRequiredTrueExamplesIdNameChildOrderParentIdColorCollapsedIsArchivedIsDeletedViewStyle> get_archived_api_v1_projects_archived_get(opts)

Get Archived

### Examples

```ruby
require 'time'
require 'todoist'

api_instance = Todoist::ProjectsApi.new
opts = {
  cursor: 'cursor_example', # String | 
  limit: 56 # Integer | 
}

begin
  # Get Archived
  result = api_instance.get_archived_api_v1_projects_archived_get(opts)
  p result
rescue Todoist::ApiError => e
  puts "Error when calling ProjectsApi->get_archived_api_v1_projects_archived_get: #{e}"
end
```

#### Using the get_archived_api_v1_projects_archived_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedListAnnotatedProjectV1ViewFieldInfoAnnotationNoneTypeRequiredTrueExamplesIdNameChildOrderParentIdColorCollapsedIsArchivedIsDeletedViewStyle>, Integer, Hash)> get_archived_api_v1_projects_archived_get_with_http_info(opts)

```ruby
begin
  # Get Archived
  data, status_code, headers = api_instance.get_archived_api_v1_projects_archived_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedListAnnotatedProjectV1ViewFieldInfoAnnotationNoneTypeRequiredTrueExamplesIdNameChildOrderParentIdColorCollapsedIsArchivedIsDeletedViewStyle>
rescue Todoist::ApiError => e
  puts "Error when calling ProjectsApi->get_archived_api_v1_projects_archived_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cursor** | **String** |  | [optional] |
| **limit** | **Integer** |  | [optional][default to 50] |

### Return type

[**PaginatedListAnnotatedProjectV1ViewFieldInfoAnnotationNoneTypeRequiredTrueExamplesIdNameChildOrderParentIdColorCollapsedIsArchivedIsDeletedViewStyle**](PaginatedListAnnotatedProjectV1ViewFieldInfoAnnotationNoneTypeRequiredTrueExamplesIdNameChildOrderParentIdColorCollapsedIsArchivedIsDeletedViewStyle.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_project_api_v1_projects_project_id_get

> <ResponseGetProjectApiV1ProjectsProjectIdGet> get_project_api_v1_projects_project_id_get(project_id)

Get Project

Returns a project object related to the given ID

### Examples

```ruby
require 'time'
require 'todoist'

api_instance = Todoist::ProjectsApi.new
project_id = Todoist::ProjectId3.new # ProjectId3 | 

begin
  # Get Project
  result = api_instance.get_project_api_v1_projects_project_id_get(project_id)
  p result
rescue Todoist::ApiError => e
  puts "Error when calling ProjectsApi->get_project_api_v1_projects_project_id_get: #{e}"
end
```

#### Using the get_project_api_v1_projects_project_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResponseGetProjectApiV1ProjectsProjectIdGet>, Integer, Hash)> get_project_api_v1_projects_project_id_get_with_http_info(project_id)

```ruby
begin
  # Get Project
  data, status_code, headers = api_instance.get_project_api_v1_projects_project_id_get_with_http_info(project_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResponseGetProjectApiV1ProjectsProjectIdGet>
rescue Todoist::ApiError => e
  puts "Error when calling ProjectsApi->get_project_api_v1_projects_project_id_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | [**ProjectId3**](.md) |  |  |

### Return type

[**ResponseGetProjectApiV1ProjectsProjectIdGet**](ResponseGetProjectApiV1ProjectsProjectIdGet.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_project_collaborators_api_v1_projects_project_id_collaborators_get

> <PaginatedListCollaborator> get_project_collaborators_api_v1_projects_project_id_collaborators_get(project_id, opts)

Get Project Collaborators

### Examples

```ruby
require 'time'
require 'todoist'

api_instance = Todoist::ProjectsApi.new
project_id = Todoist::ProjectId3.new # ProjectId3 | 
opts = {
  cursor: 'cursor_example', # String | 
  limit: 56 # Integer | 
}

begin
  # Get Project Collaborators
  result = api_instance.get_project_collaborators_api_v1_projects_project_id_collaborators_get(project_id, opts)
  p result
rescue Todoist::ApiError => e
  puts "Error when calling ProjectsApi->get_project_collaborators_api_v1_projects_project_id_collaborators_get: #{e}"
end
```

#### Using the get_project_collaborators_api_v1_projects_project_id_collaborators_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedListCollaborator>, Integer, Hash)> get_project_collaborators_api_v1_projects_project_id_collaborators_get_with_http_info(project_id, opts)

```ruby
begin
  # Get Project Collaborators
  data, status_code, headers = api_instance.get_project_collaborators_api_v1_projects_project_id_collaborators_get_with_http_info(project_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedListCollaborator>
rescue Todoist::ApiError => e
  puts "Error when calling ProjectsApi->get_project_collaborators_api_v1_projects_project_id_collaborators_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | [**ProjectId3**](.md) |  |  |
| **cursor** | **String** |  | [optional] |
| **limit** | **Integer** |  | [optional][default to 50] |

### Return type

[**PaginatedListCollaborator**](PaginatedListCollaborator.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_projects_api_v1_projects_get

> <PaginatedListAnnotatedUnionPersonalProjectSyncViewWorkspaceProjectSyncViewFieldInfoAnnotationNoneTypeRequiredTrueTitleProjectObject> get_projects_api_v1_projects_get(opts)

Get Projects

Returns a list containing all active user projects

### Examples

```ruby
require 'time'
require 'todoist'

api_instance = Todoist::ProjectsApi.new
opts = {
  cursor: 'cursor_example', # String | 
  limit: 56 # Integer | 
}

begin
  # Get Projects
  result = api_instance.get_projects_api_v1_projects_get(opts)
  p result
rescue Todoist::ApiError => e
  puts "Error when calling ProjectsApi->get_projects_api_v1_projects_get: #{e}"
end
```

#### Using the get_projects_api_v1_projects_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedListAnnotatedUnionPersonalProjectSyncViewWorkspaceProjectSyncViewFieldInfoAnnotationNoneTypeRequiredTrueTitleProjectObject>, Integer, Hash)> get_projects_api_v1_projects_get_with_http_info(opts)

```ruby
begin
  # Get Projects
  data, status_code, headers = api_instance.get_projects_api_v1_projects_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedListAnnotatedUnionPersonalProjectSyncViewWorkspaceProjectSyncViewFieldInfoAnnotationNoneTypeRequiredTrueTitleProjectObject>
rescue Todoist::ApiError => e
  puts "Error when calling ProjectsApi->get_projects_api_v1_projects_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cursor** | **String** |  | [optional] |
| **limit** | **Integer** |  | [optional][default to 50] |

### Return type

[**PaginatedListAnnotatedUnionPersonalProjectSyncViewWorkspaceProjectSyncViewFieldInfoAnnotationNoneTypeRequiredTrueTitleProjectObject**](PaginatedListAnnotatedUnionPersonalProjectSyncViewWorkspaceProjectSyncViewFieldInfoAnnotationNoneTypeRequiredTrueTitleProjectObject.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## join_api_v1_projects_project_id_join_post

> <GetDataV2Response> join_api_v1_projects_project_id_join_post(project_id)

Join

_Only used for workspaces_  This endpoint is used to join a workspace project by a workspace_user and is only usable by the workspace user.

### Examples

```ruby
require 'time'
require 'todoist'

api_instance = Todoist::ProjectsApi.new
project_id = 'project_id_example' # String | 

begin
  # Join
  result = api_instance.join_api_v1_projects_project_id_join_post(project_id)
  p result
rescue Todoist::ApiError => e
  puts "Error when calling ProjectsApi->join_api_v1_projects_project_id_join_post: #{e}"
end
```

#### Using the join_api_v1_projects_project_id_join_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetDataV2Response>, Integer, Hash)> join_api_v1_projects_project_id_join_post_with_http_info(project_id)

```ruby
begin
  # Join
  data, status_code, headers = api_instance.join_api_v1_projects_project_id_join_post_with_http_info(project_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetDataV2Response>
rescue Todoist::ApiError => e
  puts "Error when calling ProjectsApi->join_api_v1_projects_project_id_join_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** |  |  |

### Return type

[**GetDataV2Response**](GetDataV2Response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## unarchive_project_api_v1_projects_project_id_unarchive_post

> <ResponseUnarchiveProjectApiV1ProjectsProjectIdUnarchivePost> unarchive_project_api_v1_projects_project_id_unarchive_post(project_id)

Unarchive Project

Marks a previously archived project as active again. For personal projects, this will make the project visible again for the initiating user. For workspace projects, this will make the project visible again for all applicable workspace users.

### Examples

```ruby
require 'time'
require 'todoist'

api_instance = Todoist::ProjectsApi.new
project_id = Todoist::ProjectId3.new # ProjectId3 | 

begin
  # Unarchive Project
  result = api_instance.unarchive_project_api_v1_projects_project_id_unarchive_post(project_id)
  p result
rescue Todoist::ApiError => e
  puts "Error when calling ProjectsApi->unarchive_project_api_v1_projects_project_id_unarchive_post: #{e}"
end
```

#### Using the unarchive_project_api_v1_projects_project_id_unarchive_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResponseUnarchiveProjectApiV1ProjectsProjectIdUnarchivePost>, Integer, Hash)> unarchive_project_api_v1_projects_project_id_unarchive_post_with_http_info(project_id)

```ruby
begin
  # Unarchive Project
  data, status_code, headers = api_instance.unarchive_project_api_v1_projects_project_id_unarchive_post_with_http_info(project_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResponseUnarchiveProjectApiV1ProjectsProjectIdUnarchivePost>
rescue Todoist::ApiError => e
  puts "Error when calling ProjectsApi->unarchive_project_api_v1_projects_project_id_unarchive_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | [**ProjectId3**](.md) |  |  |

### Return type

[**ResponseUnarchiveProjectApiV1ProjectsProjectIdUnarchivePost**](ResponseUnarchiveProjectApiV1ProjectsProjectIdUnarchivePost.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_project_api_v1_projects_project_id_post

> <ResponseUpdateProjectApiV1ProjectsProjectIdPost> update_project_api_v1_projects_project_id_post(project_id, todoist_apps_api_rest_projects_body2)

Update Project

Updated a project and return it

### Examples

```ruby
require 'time'
require 'todoist'

api_instance = Todoist::ProjectsApi.new
project_id = Todoist::ProjectId3.new # ProjectId3 | 
todoist_apps_api_rest_projects_body2 = Todoist::TodoistAppsApiRestProjectsBody2.new # TodoistAppsApiRestProjectsBody2 | 

begin
  # Update Project
  result = api_instance.update_project_api_v1_projects_project_id_post(project_id, todoist_apps_api_rest_projects_body2)
  p result
rescue Todoist::ApiError => e
  puts "Error when calling ProjectsApi->update_project_api_v1_projects_project_id_post: #{e}"
end
```

#### Using the update_project_api_v1_projects_project_id_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResponseUpdateProjectApiV1ProjectsProjectIdPost>, Integer, Hash)> update_project_api_v1_projects_project_id_post_with_http_info(project_id, todoist_apps_api_rest_projects_body2)

```ruby
begin
  # Update Project
  data, status_code, headers = api_instance.update_project_api_v1_projects_project_id_post_with_http_info(project_id, todoist_apps_api_rest_projects_body2)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResponseUpdateProjectApiV1ProjectsProjectIdPost>
rescue Todoist::ApiError => e
  puts "Error when calling ProjectsApi->update_project_api_v1_projects_project_id_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | [**ProjectId3**](.md) |  |  |
| **todoist_apps_api_rest_projects_body2** | [**TodoistAppsApiRestProjectsBody2**](TodoistAppsApiRestProjectsBody2.md) |  |  |

### Return type

[**ResponseUpdateProjectApiV1ProjectsProjectIdPost**](ResponseUpdateProjectApiV1ProjectsProjectIdPost.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

