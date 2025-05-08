# Todoist::TasksApi

All URIs are relative to *https://api.todoist.com/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**close_task_api_v1_tasks_task_id_close_post**](TasksApi.md#close_task_api_v1_tasks_task_id_close_post) | **POST** /api/v1/tasks/{task_id}/close | Close Task |
| [**create_task_api_v1_tasks_post**](TasksApi.md#create_task_api_v1_tasks_post) | **POST** /api/v1/tasks | Create Task |
| [**delete_task_api_v1_tasks_task_id_delete**](TasksApi.md#delete_task_api_v1_tasks_task_id_delete) | **DELETE** /api/v1/tasks/{task_id} | Delete Task |
| [**get_task_api_v1_tasks_task_id_get**](TasksApi.md#get_task_api_v1_tasks_task_id_get) | **GET** /api/v1/tasks/{task_id} | Get Task |
| [**get_tasks_api_v1_tasks_get**](TasksApi.md#get_tasks_api_v1_tasks_get) | **GET** /api/v1/tasks | Get Tasks |
| [**get_tasks_by_filter_api_v1_tasks_filter_get**](TasksApi.md#get_tasks_by_filter_api_v1_tasks_filter_get) | **GET** /api/v1/tasks/filter | Get Tasks By Filter |
| [**move_task_api_v1_tasks_task_id_move_post**](TasksApi.md#move_task_api_v1_tasks_task_id_move_post) | **POST** /api/v1/tasks/{task_id}/move | Move Task |
| [**quick_add_api_v1_tasks_quick_post**](TasksApi.md#quick_add_api_v1_tasks_quick_post) | **POST** /api/v1/tasks/quick | Quick Add |
| [**reopen_task_api_v1_tasks_task_id_reopen_post**](TasksApi.md#reopen_task_api_v1_tasks_task_id_reopen_post) | **POST** /api/v1/tasks/{task_id}/reopen | Reopen Task |
| [**tasks_completed_by_completion_date_api_v1_tasks_completed_by_completion_date_get**](TasksApi.md#tasks_completed_by_completion_date_api_v1_tasks_completed_by_completion_date_get) | **GET** /api/v1/tasks/completed/by_completion_date | Tasks Completed By Completion Date |
| [**tasks_completed_by_due_date_api_v1_tasks_completed_by_due_date_get**](TasksApi.md#tasks_completed_by_due_date_api_v1_tasks_completed_by_due_date_get) | **GET** /api/v1/tasks/completed/by_due_date | Tasks Completed By Due Date |
| [**update_task_api_v1_tasks_task_id_post**](TasksApi.md#update_task_api_v1_tasks_task_id_post) | **POST** /api/v1/tasks/{task_id} | Update Task |


## close_task_api_v1_tasks_task_id_close_post

> Object close_task_api_v1_tasks_task_id_close_post(task_id)

Close Task

Closes a task.  The command performs in the same way as our official clients:  Regular tasks are marked complete and moved to history, along with their subtasks. Tasks with [recurring due dates](https://todoist.com/help/articles/introduction-to-recurring-dates-YUYVJJAV) will be scheduled to their next occurrence.

### Examples

```ruby
require 'time'
require 'todoist'

api_instance = Todoist::TasksApi.new
task_id = Todoist::TaskId2.new # TaskId2 | 

begin
  # Close Task
  result = api_instance.close_task_api_v1_tasks_task_id_close_post(task_id)
  p result
rescue Todoist::ApiError => e
  puts "Error when calling TasksApi->close_task_api_v1_tasks_task_id_close_post: #{e}"
end
```

#### Using the close_task_api_v1_tasks_task_id_close_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> close_task_api_v1_tasks_task_id_close_post_with_http_info(task_id)

```ruby
begin
  # Close Task
  data, status_code, headers = api_instance.close_task_api_v1_tasks_task_id_close_post_with_http_info(task_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue Todoist::ApiError => e
  puts "Error when calling TasksApi->close_task_api_v1_tasks_task_id_close_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **task_id** | [**TaskId2**](.md) |  |  |

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_task_api_v1_tasks_post

> <ItemSyncView> create_task_api_v1_tasks_post(todoist_apps_api_rest_tasks_body1)

Create Task

### Examples

```ruby
require 'time'
require 'todoist'

api_instance = Todoist::TasksApi.new
todoist_apps_api_rest_tasks_body1 = Todoist::TodoistAppsApiRestTasksBody1.new({content: 'content_example'}) # TodoistAppsApiRestTasksBody1 | 

begin
  # Create Task
  result = api_instance.create_task_api_v1_tasks_post(todoist_apps_api_rest_tasks_body1)
  p result
rescue Todoist::ApiError => e
  puts "Error when calling TasksApi->create_task_api_v1_tasks_post: #{e}"
end
```

#### Using the create_task_api_v1_tasks_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ItemSyncView>, Integer, Hash)> create_task_api_v1_tasks_post_with_http_info(todoist_apps_api_rest_tasks_body1)

```ruby
begin
  # Create Task
  data, status_code, headers = api_instance.create_task_api_v1_tasks_post_with_http_info(todoist_apps_api_rest_tasks_body1)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ItemSyncView>
rescue Todoist::ApiError => e
  puts "Error when calling TasksApi->create_task_api_v1_tasks_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **todoist_apps_api_rest_tasks_body1** | [**TodoistAppsApiRestTasksBody1**](TodoistAppsApiRestTasksBody1.md) |  |  |

### Return type

[**ItemSyncView**](ItemSyncView.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_task_api_v1_tasks_task_id_delete

> Object delete_task_api_v1_tasks_task_id_delete(task_id)

Delete Task

### Examples

```ruby
require 'time'
require 'todoist'

api_instance = Todoist::TasksApi.new
task_id = Todoist::TaskId2.new # TaskId2 | 

begin
  # Delete Task
  result = api_instance.delete_task_api_v1_tasks_task_id_delete(task_id)
  p result
rescue Todoist::ApiError => e
  puts "Error when calling TasksApi->delete_task_api_v1_tasks_task_id_delete: #{e}"
end
```

#### Using the delete_task_api_v1_tasks_task_id_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> delete_task_api_v1_tasks_task_id_delete_with_http_info(task_id)

```ruby
begin
  # Delete Task
  data, status_code, headers = api_instance.delete_task_api_v1_tasks_task_id_delete_with_http_info(task_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue Todoist::ApiError => e
  puts "Error when calling TasksApi->delete_task_api_v1_tasks_task_id_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **task_id** | [**TaskId2**](.md) |  |  |

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_task_api_v1_tasks_task_id_get

> <ItemSyncView> get_task_api_v1_tasks_task_id_get(task_id)

Get Task

Returns a single active (non-completed) task by ID

### Examples

```ruby
require 'time'
require 'todoist'

api_instance = Todoist::TasksApi.new
task_id = Todoist::TaskId2.new # TaskId2 | 

begin
  # Get Task
  result = api_instance.get_task_api_v1_tasks_task_id_get(task_id)
  p result
rescue Todoist::ApiError => e
  puts "Error when calling TasksApi->get_task_api_v1_tasks_task_id_get: #{e}"
end
```

#### Using the get_task_api_v1_tasks_task_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ItemSyncView>, Integer, Hash)> get_task_api_v1_tasks_task_id_get_with_http_info(task_id)

```ruby
begin
  # Get Task
  data, status_code, headers = api_instance.get_task_api_v1_tasks_task_id_get_with_http_info(task_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ItemSyncView>
rescue Todoist::ApiError => e
  puts "Error when calling TasksApi->get_task_api_v1_tasks_task_id_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **task_id** | [**TaskId2**](.md) |  |  |

### Return type

[**ItemSyncView**](ItemSyncView.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_tasks_api_v1_tasks_get

> <PaginatedListItemSyncView> get_tasks_api_v1_tasks_get(opts)

Get Tasks

Returns a paginated list containing all active tasks

### Examples

```ruby
require 'time'
require 'todoist'

api_instance = Todoist::TasksApi.new
opts = {
  project_id: Todoist::ProjectId2.new, # ProjectId2 | 
  section_id: Todoist::SectionId.new, # SectionId | 
  parent_id: Todoist::ParentId.new, # ParentId | 
  label: 'label_example', # String | 
  ids: 'ids_example', # String | 
  cursor: 'cursor_example', # String | 
  limit: 56 # Integer | 
}

begin
  # Get Tasks
  result = api_instance.get_tasks_api_v1_tasks_get(opts)
  p result
rescue Todoist::ApiError => e
  puts "Error when calling TasksApi->get_tasks_api_v1_tasks_get: #{e}"
end
```

#### Using the get_tasks_api_v1_tasks_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedListItemSyncView>, Integer, Hash)> get_tasks_api_v1_tasks_get_with_http_info(opts)

```ruby
begin
  # Get Tasks
  data, status_code, headers = api_instance.get_tasks_api_v1_tasks_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedListItemSyncView>
rescue Todoist::ApiError => e
  puts "Error when calling TasksApi->get_tasks_api_v1_tasks_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | [**ProjectId2**](.md) |  | [optional] |
| **section_id** | [**SectionId**](.md) |  | [optional] |
| **parent_id** | [**ParentId**](.md) |  | [optional] |
| **label** | **String** |  | [optional] |
| **ids** | **String** |  | [optional] |
| **cursor** | **String** |  | [optional] |
| **limit** | **Integer** |  | [optional][default to 50] |

### Return type

[**PaginatedListItemSyncView**](PaginatedListItemSyncView.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_tasks_by_filter_api_v1_tasks_filter_get

> <PaginatedListItemSyncView> get_tasks_by_filter_api_v1_tasks_filter_get(query, opts)

Get Tasks By Filter

### Examples

```ruby
require 'time'
require 'todoist'

api_instance = Todoist::TasksApi.new
query = 'query_example' # String | 
opts = {
  lang: 'lang_example', # String | 
  cursor: 'cursor_example', # String | 
  limit: 56 # Integer | 
}

begin
  # Get Tasks By Filter
  result = api_instance.get_tasks_by_filter_api_v1_tasks_filter_get(query, opts)
  p result
rescue Todoist::ApiError => e
  puts "Error when calling TasksApi->get_tasks_by_filter_api_v1_tasks_filter_get: #{e}"
end
```

#### Using the get_tasks_by_filter_api_v1_tasks_filter_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedListItemSyncView>, Integer, Hash)> get_tasks_by_filter_api_v1_tasks_filter_get_with_http_info(query, opts)

```ruby
begin
  # Get Tasks By Filter
  data, status_code, headers = api_instance.get_tasks_by_filter_api_v1_tasks_filter_get_with_http_info(query, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedListItemSyncView>
rescue Todoist::ApiError => e
  puts "Error when calling TasksApi->get_tasks_by_filter_api_v1_tasks_filter_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **query** | **String** |  |  |
| **lang** | **String** |  | [optional] |
| **cursor** | **String** |  | [optional] |
| **limit** | **Integer** |  | [optional][default to 50] |

### Return type

[**PaginatedListItemSyncView**](PaginatedListItemSyncView.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## move_task_api_v1_tasks_task_id_move_post

> <ItemSyncView> move_task_api_v1_tasks_task_id_move_post(task_id, todoist_apps_api_rest_tasks_body2)

Move Task

Moves task to another project, section or parent.

### Examples

```ruby
require 'time'
require 'todoist'

api_instance = Todoist::TasksApi.new
task_id = 'task_id_example' # String | 
todoist_apps_api_rest_tasks_body2 = Todoist::TodoistAppsApiRestTasksBody2.new # TodoistAppsApiRestTasksBody2 | 

begin
  # Move Task
  result = api_instance.move_task_api_v1_tasks_task_id_move_post(task_id, todoist_apps_api_rest_tasks_body2)
  p result
rescue Todoist::ApiError => e
  puts "Error when calling TasksApi->move_task_api_v1_tasks_task_id_move_post: #{e}"
end
```

#### Using the move_task_api_v1_tasks_task_id_move_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ItemSyncView>, Integer, Hash)> move_task_api_v1_tasks_task_id_move_post_with_http_info(task_id, todoist_apps_api_rest_tasks_body2)

```ruby
begin
  # Move Task
  data, status_code, headers = api_instance.move_task_api_v1_tasks_task_id_move_post_with_http_info(task_id, todoist_apps_api_rest_tasks_body2)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ItemSyncView>
rescue Todoist::ApiError => e
  puts "Error when calling TasksApi->move_task_api_v1_tasks_task_id_move_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **task_id** | **String** |  |  |
| **todoist_apps_api_rest_tasks_body2** | [**TodoistAppsApiRestTasksBody2**](TodoistAppsApiRestTasksBody2.md) |  |  |

### Return type

[**ItemSyncView**](ItemSyncView.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## quick_add_api_v1_tasks_quick_post

> Hash&lt;String, Object&gt; quick_add_api_v1_tasks_quick_post(todoist_apps_api_sync_rest_quick_body)

Quick Add

Add a new task using the Quick Add implementation similar to that used in the official clients

### Examples

```ruby
require 'time'
require 'todoist'

api_instance = Todoist::TasksApi.new
todoist_apps_api_sync_rest_quick_body = Todoist::TodoistAppsApiSyncRestQuickBody.new({text: 'text_example'}) # TodoistAppsApiSyncRestQuickBody | 

begin
  # Quick Add
  result = api_instance.quick_add_api_v1_tasks_quick_post(todoist_apps_api_sync_rest_quick_body)
  p result
rescue Todoist::ApiError => e
  puts "Error when calling TasksApi->quick_add_api_v1_tasks_quick_post: #{e}"
end
```

#### Using the quick_add_api_v1_tasks_quick_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Hash&lt;String, Object&gt;, Integer, Hash)> quick_add_api_v1_tasks_quick_post_with_http_info(todoist_apps_api_sync_rest_quick_body)

```ruby
begin
  # Quick Add
  data, status_code, headers = api_instance.quick_add_api_v1_tasks_quick_post_with_http_info(todoist_apps_api_sync_rest_quick_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Hash&lt;String, Object&gt;
rescue Todoist::ApiError => e
  puts "Error when calling TasksApi->quick_add_api_v1_tasks_quick_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **todoist_apps_api_sync_rest_quick_body** | [**TodoistAppsApiSyncRestQuickBody**](TodoistAppsApiSyncRestQuickBody.md) |  |  |

### Return type

**Hash&lt;String, Object&gt;**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## reopen_task_api_v1_tasks_task_id_reopen_post

> Object reopen_task_api_v1_tasks_task_id_reopen_post(task_id)

Reopen Task

Reopens a task.  Any ancestor tasks or sections will also be marked as uncomplete and restored from history.  The reinstated tasks and sections will appear at the end of the list within their parent, after any previously active tasks.

### Examples

```ruby
require 'time'
require 'todoist'

api_instance = Todoist::TasksApi.new
task_id = Todoist::TaskId1.new # TaskId1 | 

begin
  # Reopen Task
  result = api_instance.reopen_task_api_v1_tasks_task_id_reopen_post(task_id)
  p result
rescue Todoist::ApiError => e
  puts "Error when calling TasksApi->reopen_task_api_v1_tasks_task_id_reopen_post: #{e}"
end
```

#### Using the reopen_task_api_v1_tasks_task_id_reopen_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> reopen_task_api_v1_tasks_task_id_reopen_post_with_http_info(task_id)

```ruby
begin
  # Reopen Task
  data, status_code, headers = api_instance.reopen_task_api_v1_tasks_task_id_reopen_post_with_http_info(task_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue Todoist::ApiError => e
  puts "Error when calling TasksApi->reopen_task_api_v1_tasks_task_id_reopen_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **task_id** | [**TaskId1**](.md) |  |  |

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## tasks_completed_by_completion_date_api_v1_tasks_completed_by_completion_date_get

> <TasksCompletedDateResponse> tasks_completed_by_completion_date_api_v1_tasks_completed_by_completion_date_get(since, _until, opts)

Tasks Completed By Completion Date

Retrieves a list of completed tasks strictly limited by the specified completion date range (up to 3 months).  It can retrieve completed items:  - From all the projects the user has joined in a workspace - From all the projects of the user - That match many [supported   filters](https://todoist.com/help/articles/introduction-to-filters-V98wIH)  By default, the response is limited to a page containing a maximum of 50 items (configurable using `limit`).  Subsequent pages of results can be fetched by using the `next_cursor` value from the response as the `cursor` value for the next request.

### Examples

```ruby
require 'time'
require 'todoist'

api_instance = Todoist::TasksApi.new
since = Time.parse('2013-10-20T19:20:30+01:00') # Time | 
_until = Time.parse('2013-10-20T19:20:30+01:00') # Time | 
opts = {
  workspace_id: 56, # Integer | 
  project_id: Todoist::ProjectId2.new, # ProjectId2 | 
  section_id: Todoist::SectionId1.new, # SectionId1 | 
  parent_id: Todoist::ParentId.new, # ParentId | 
  filter_query: 'filter_query_example', # String | 
  filter_lang: 'filter_lang_example', # String | 
  cursor: 'cursor_example', # String | 
  limit: 56 # Integer | 
}

begin
  # Tasks Completed By Completion Date
  result = api_instance.tasks_completed_by_completion_date_api_v1_tasks_completed_by_completion_date_get(since, _until, opts)
  p result
rescue Todoist::ApiError => e
  puts "Error when calling TasksApi->tasks_completed_by_completion_date_api_v1_tasks_completed_by_completion_date_get: #{e}"
end
```

#### Using the tasks_completed_by_completion_date_api_v1_tasks_completed_by_completion_date_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TasksCompletedDateResponse>, Integer, Hash)> tasks_completed_by_completion_date_api_v1_tasks_completed_by_completion_date_get_with_http_info(since, _until, opts)

```ruby
begin
  # Tasks Completed By Completion Date
  data, status_code, headers = api_instance.tasks_completed_by_completion_date_api_v1_tasks_completed_by_completion_date_get_with_http_info(since, _until, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TasksCompletedDateResponse>
rescue Todoist::ApiError => e
  puts "Error when calling TasksApi->tasks_completed_by_completion_date_api_v1_tasks_completed_by_completion_date_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **since** | **Time** |  |  |
| **_until** | **Time** |  |  |
| **workspace_id** | **Integer** |  | [optional] |
| **project_id** | [**ProjectId2**](.md) |  | [optional] |
| **section_id** | [**SectionId1**](.md) |  | [optional] |
| **parent_id** | [**ParentId**](.md) |  | [optional] |
| **filter_query** | **String** |  | [optional] |
| **filter_lang** | **String** |  | [optional] |
| **cursor** | **String** |  | [optional] |
| **limit** | **Integer** |  | [optional][default to 50] |

### Return type

[**TasksCompletedDateResponse**](TasksCompletedDateResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## tasks_completed_by_due_date_api_v1_tasks_completed_by_due_date_get

> <TasksCompletedDateResponse> tasks_completed_by_due_date_api_v1_tasks_completed_by_due_date_get(since, _until, opts)

Tasks Completed By Due Date

Retrieves a list of completed items strictly limited by the specified due date range (up to 6 weeks).  It can retrieve completed items:  - From within a project, section, or parent item - From all the projects the user has joined in a workspace - From all the projects of the user - That match many [supported   filters](https://todoist.com/help/articles/introduction-to-filters-V98wIH)  By default, the response is limited to a page containing a maximum of 50 items (configurable using `limit`).  Subsequent pages of results can be fetched by using the `next_cursor` value from the response as the `cursor` value for the next request.

### Examples

```ruby
require 'time'
require 'todoist'

api_instance = Todoist::TasksApi.new
since = Time.parse('2013-10-20T19:20:30+01:00') # Time | 
_until = Time.parse('2013-10-20T19:20:30+01:00') # Time | 
opts = {
  workspace_id: 56, # Integer | 
  project_id: Todoist::ProjectId2.new, # ProjectId2 | 
  section_id: Todoist::SectionId1.new, # SectionId1 | 
  parent_id: Todoist::ParentId.new, # ParentId | 
  filter_query: 'filter_query_example', # String | 
  filter_lang: 'filter_lang_example', # String | 
  cursor: 'cursor_example', # String | 
  limit: 56 # Integer | 
}

begin
  # Tasks Completed By Due Date
  result = api_instance.tasks_completed_by_due_date_api_v1_tasks_completed_by_due_date_get(since, _until, opts)
  p result
rescue Todoist::ApiError => e
  puts "Error when calling TasksApi->tasks_completed_by_due_date_api_v1_tasks_completed_by_due_date_get: #{e}"
end
```

#### Using the tasks_completed_by_due_date_api_v1_tasks_completed_by_due_date_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TasksCompletedDateResponse>, Integer, Hash)> tasks_completed_by_due_date_api_v1_tasks_completed_by_due_date_get_with_http_info(since, _until, opts)

```ruby
begin
  # Tasks Completed By Due Date
  data, status_code, headers = api_instance.tasks_completed_by_due_date_api_v1_tasks_completed_by_due_date_get_with_http_info(since, _until, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TasksCompletedDateResponse>
rescue Todoist::ApiError => e
  puts "Error when calling TasksApi->tasks_completed_by_due_date_api_v1_tasks_completed_by_due_date_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **since** | **Time** |  |  |
| **_until** | **Time** |  |  |
| **workspace_id** | **Integer** |  | [optional] |
| **project_id** | [**ProjectId2**](.md) |  | [optional] |
| **section_id** | [**SectionId1**](.md) |  | [optional] |
| **parent_id** | [**ParentId**](.md) |  | [optional] |
| **filter_query** | **String** |  | [optional] |
| **filter_lang** | **String** |  | [optional] |
| **cursor** | **String** |  | [optional] |
| **limit** | **Integer** |  | [optional][default to 50] |

### Return type

[**TasksCompletedDateResponse**](TasksCompletedDateResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_task_api_v1_tasks_task_id_post

> <ItemSyncView> update_task_api_v1_tasks_task_id_post(task_id, todoist_apps_api_rest_tasks_body3)

Update Task

### Examples

```ruby
require 'time'
require 'todoist'

api_instance = Todoist::TasksApi.new
task_id = Todoist::TaskId2.new # TaskId2 | 
todoist_apps_api_rest_tasks_body3 = Todoist::TodoistAppsApiRestTasksBody3.new # TodoistAppsApiRestTasksBody3 | 

begin
  # Update Task
  result = api_instance.update_task_api_v1_tasks_task_id_post(task_id, todoist_apps_api_rest_tasks_body3)
  p result
rescue Todoist::ApiError => e
  puts "Error when calling TasksApi->update_task_api_v1_tasks_task_id_post: #{e}"
end
```

#### Using the update_task_api_v1_tasks_task_id_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ItemSyncView>, Integer, Hash)> update_task_api_v1_tasks_task_id_post_with_http_info(task_id, todoist_apps_api_rest_tasks_body3)

```ruby
begin
  # Update Task
  data, status_code, headers = api_instance.update_task_api_v1_tasks_task_id_post_with_http_info(task_id, todoist_apps_api_rest_tasks_body3)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ItemSyncView>
rescue Todoist::ApiError => e
  puts "Error when calling TasksApi->update_task_api_v1_tasks_task_id_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **task_id** | [**TaskId2**](.md) |  |  |
| **todoist_apps_api_rest_tasks_body3** | [**TodoistAppsApiRestTasksBody3**](TodoistAppsApiRestTasksBody3.md) |  |  |

### Return type

[**ItemSyncView**](ItemSyncView.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

