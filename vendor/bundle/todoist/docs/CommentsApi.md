# Todoist::CommentsApi

All URIs are relative to *https://api.todoist.com/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_comment_api_v1_comments_post**](CommentsApi.md#create_comment_api_v1_comments_post) | **POST** /api/v1/comments | Create Comment |
| [**delete_comment_api_v1_comments_comment_id_delete**](CommentsApi.md#delete_comment_api_v1_comments_comment_id_delete) | **DELETE** /api/v1/comments/{comment_id} | Delete Comment |
| [**get_comment_api_v1_comments_comment_id_get**](CommentsApi.md#get_comment_api_v1_comments_comment_id_get) | **GET** /api/v1/comments/{comment_id} | Get Comment |
| [**get_comments_api_v1_comments_get**](CommentsApi.md#get_comments_api_v1_comments_get) | **GET** /api/v1/comments | Get Comments |
| [**update_comment_api_v1_comments_comment_id_post**](CommentsApi.md#update_comment_api_v1_comments_comment_id_post) | **POST** /api/v1/comments/{comment_id} | Update Comment |


## create_comment_api_v1_comments_post

> <NoteSyncView> create_comment_api_v1_comments_post(todoist_apps_api_rest_comments_body1)

Create Comment

Creates a new comment on a project or task and returns it.  One of `task_id` or `project_id` arguments is required.

### Examples

```ruby
require 'time'
require 'todoist'

api_instance = Todoist::CommentsApi.new
todoist_apps_api_rest_comments_body1 = Todoist::TodoistAppsApiRestCommentsBody1.new({content: 'content_example'}) # TodoistAppsApiRestCommentsBody1 | 

begin
  # Create Comment
  result = api_instance.create_comment_api_v1_comments_post(todoist_apps_api_rest_comments_body1)
  p result
rescue Todoist::ApiError => e
  puts "Error when calling CommentsApi->create_comment_api_v1_comments_post: #{e}"
end
```

#### Using the create_comment_api_v1_comments_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NoteSyncView>, Integer, Hash)> create_comment_api_v1_comments_post_with_http_info(todoist_apps_api_rest_comments_body1)

```ruby
begin
  # Create Comment
  data, status_code, headers = api_instance.create_comment_api_v1_comments_post_with_http_info(todoist_apps_api_rest_comments_body1)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NoteSyncView>
rescue Todoist::ApiError => e
  puts "Error when calling CommentsApi->create_comment_api_v1_comments_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **todoist_apps_api_rest_comments_body1** | [**TodoistAppsApiRestCommentsBody1**](TodoistAppsApiRestCommentsBody1.md) |  |  |

### Return type

[**NoteSyncView**](NoteSyncView.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_comment_api_v1_comments_comment_id_delete

> Object delete_comment_api_v1_comments_comment_id_delete(comment_id)

Delete Comment

Delete a comment by ID

### Examples

```ruby
require 'time'
require 'todoist'

api_instance = Todoist::CommentsApi.new
comment_id = Todoist::CommentId2.new # CommentId2 | 

begin
  # Delete Comment
  result = api_instance.delete_comment_api_v1_comments_comment_id_delete(comment_id)
  p result
rescue Todoist::ApiError => e
  puts "Error when calling CommentsApi->delete_comment_api_v1_comments_comment_id_delete: #{e}"
end
```

#### Using the delete_comment_api_v1_comments_comment_id_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> delete_comment_api_v1_comments_comment_id_delete_with_http_info(comment_id)

```ruby
begin
  # Delete Comment
  data, status_code, headers = api_instance.delete_comment_api_v1_comments_comment_id_delete_with_http_info(comment_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue Todoist::ApiError => e
  puts "Error when calling CommentsApi->delete_comment_api_v1_comments_comment_id_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **comment_id** | [**CommentId2**](.md) |  |  |

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_comment_api_v1_comments_comment_id_get

> <NoteSyncView> get_comment_api_v1_comments_comment_id_get(comment_id)

Get Comment

Returns a single comment by ID

### Examples

```ruby
require 'time'
require 'todoist'

api_instance = Todoist::CommentsApi.new
comment_id = Todoist::CommentId.new # CommentId | 

begin
  # Get Comment
  result = api_instance.get_comment_api_v1_comments_comment_id_get(comment_id)
  p result
rescue Todoist::ApiError => e
  puts "Error when calling CommentsApi->get_comment_api_v1_comments_comment_id_get: #{e}"
end
```

#### Using the get_comment_api_v1_comments_comment_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NoteSyncView>, Integer, Hash)> get_comment_api_v1_comments_comment_id_get_with_http_info(comment_id)

```ruby
begin
  # Get Comment
  data, status_code, headers = api_instance.get_comment_api_v1_comments_comment_id_get_with_http_info(comment_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NoteSyncView>
rescue Todoist::ApiError => e
  puts "Error when calling CommentsApi->get_comment_api_v1_comments_comment_id_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **comment_id** | [**CommentId**](.md) |  |  |

### Return type

[**NoteSyncView**](NoteSyncView.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_comments_api_v1_comments_get

> <PaginatedListNoteSyncView> get_comments_api_v1_comments_get(opts)

Get Comments

Returns a list of all comments for a given `task_id` or `project_id`.  One of `task_id` or `project_id` arguments is required.

### Examples

```ruby
require 'time'
require 'todoist'

api_instance = Todoist::CommentsApi.new
opts = {
  project_id: Todoist::ProjectId1.new, # ProjectId1 | 
  task_id: Todoist::TaskId.new, # TaskId | 
  cursor: 'cursor_example', # String | 
  limit: 56 # Integer | 
}

begin
  # Get Comments
  result = api_instance.get_comments_api_v1_comments_get(opts)
  p result
rescue Todoist::ApiError => e
  puts "Error when calling CommentsApi->get_comments_api_v1_comments_get: #{e}"
end
```

#### Using the get_comments_api_v1_comments_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedListNoteSyncView>, Integer, Hash)> get_comments_api_v1_comments_get_with_http_info(opts)

```ruby
begin
  # Get Comments
  data, status_code, headers = api_instance.get_comments_api_v1_comments_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedListNoteSyncView>
rescue Todoist::ApiError => e
  puts "Error when calling CommentsApi->get_comments_api_v1_comments_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | [**ProjectId1**](.md) |  | [optional] |
| **task_id** | [**TaskId**](.md) |  | [optional] |
| **cursor** | **String** |  | [optional] |
| **limit** | **Integer** |  | [optional][default to 50] |

### Return type

[**PaginatedListNoteSyncView**](PaginatedListNoteSyncView.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_comment_api_v1_comments_comment_id_post

> <NoteSyncView> update_comment_api_v1_comments_comment_id_post(comment_id, todoist_apps_api_rest_comments_body2)

Update Comment

Update a comment by ID and returns its content

### Examples

```ruby
require 'time'
require 'todoist'

api_instance = Todoist::CommentsApi.new
comment_id = Todoist::CommentId1.new # CommentId1 | 
todoist_apps_api_rest_comments_body2 = Todoist::TodoistAppsApiRestCommentsBody2.new({content: 'content_example'}) # TodoistAppsApiRestCommentsBody2 | 

begin
  # Update Comment
  result = api_instance.update_comment_api_v1_comments_comment_id_post(comment_id, todoist_apps_api_rest_comments_body2)
  p result
rescue Todoist::ApiError => e
  puts "Error when calling CommentsApi->update_comment_api_v1_comments_comment_id_post: #{e}"
end
```

#### Using the update_comment_api_v1_comments_comment_id_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NoteSyncView>, Integer, Hash)> update_comment_api_v1_comments_comment_id_post_with_http_info(comment_id, todoist_apps_api_rest_comments_body2)

```ruby
begin
  # Update Comment
  data, status_code, headers = api_instance.update_comment_api_v1_comments_comment_id_post_with_http_info(comment_id, todoist_apps_api_rest_comments_body2)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NoteSyncView>
rescue Todoist::ApiError => e
  puts "Error when calling CommentsApi->update_comment_api_v1_comments_comment_id_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **comment_id** | [**CommentId1**](.md) |  |  |
| **todoist_apps_api_rest_comments_body2** | [**TodoistAppsApiRestCommentsBody2**](TodoistAppsApiRestCommentsBody2.md) |  |  |

### Return type

[**NoteSyncView**](NoteSyncView.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

