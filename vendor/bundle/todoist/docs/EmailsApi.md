# Todoist::EmailsApi

All URIs are relative to *https://api.todoist.com/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**email_disable_api_v1_emails_delete**](EmailsApi.md#email_disable_api_v1_emails_delete) | **DELETE** /api/v1/emails | Email Disable |
| [**email_get_or_create_api_v1_emails_put**](EmailsApi.md#email_get_or_create_api_v1_emails_put) | **PUT** /api/v1/emails | Email Get Or Create |


## email_disable_api_v1_emails_delete

> <StatusOkResponse> email_disable_api_v1_emails_delete(obj_type, obj_id)

Email Disable

Disable the current email to a Todoist object

### Examples

```ruby
require 'time'
require 'todoist'

api_instance = Todoist::EmailsApi.new
obj_type = Todoist::ObjType.new # ObjType | 
obj_id = Todoist::ObjId1.new # ObjId1 | 

begin
  # Email Disable
  result = api_instance.email_disable_api_v1_emails_delete(obj_type, obj_id)
  p result
rescue Todoist::ApiError => e
  puts "Error when calling EmailsApi->email_disable_api_v1_emails_delete: #{e}"
end
```

#### Using the email_disable_api_v1_emails_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StatusOkResponse>, Integer, Hash)> email_disable_api_v1_emails_delete_with_http_info(obj_type, obj_id)

```ruby
begin
  # Email Disable
  data, status_code, headers = api_instance.email_disable_api_v1_emails_delete_with_http_info(obj_type, obj_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StatusOkResponse>
rescue Todoist::ApiError => e
  puts "Error when calling EmailsApi->email_disable_api_v1_emails_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **obj_type** | [**ObjType**](.md) |  |  |
| **obj_id** | [**ObjId1**](.md) |  |  |

### Return type

[**StatusOkResponse**](StatusOkResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## email_get_or_create_api_v1_emails_put

> <EmailResponse> email_get_or_create_api_v1_emails_put(obj_type, obj_id)

Email Get Or Create

Get or create an email to a Todoist object, currently only projects and tasks are supported.

### Examples

```ruby
require 'time'
require 'todoist'

api_instance = Todoist::EmailsApi.new
obj_type = Todoist::EmailObjectType::PROJECT # EmailObjectType | 
obj_id = Todoist::ObjId.new # ObjId | 

begin
  # Email Get Or Create
  result = api_instance.email_get_or_create_api_v1_emails_put(obj_type, obj_id)
  p result
rescue Todoist::ApiError => e
  puts "Error when calling EmailsApi->email_get_or_create_api_v1_emails_put: #{e}"
end
```

#### Using the email_get_or_create_api_v1_emails_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EmailResponse>, Integer, Hash)> email_get_or_create_api_v1_emails_put_with_http_info(obj_type, obj_id)

```ruby
begin
  # Email Get Or Create
  data, status_code, headers = api_instance.email_get_or_create_api_v1_emails_put_with_http_info(obj_type, obj_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EmailResponse>
rescue Todoist::ApiError => e
  puts "Error when calling EmailsApi->email_get_or_create_api_v1_emails_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **obj_type** | [**EmailObjectType**](.md) |  |  |
| **obj_id** | [**ObjId**](.md) |  |  |

### Return type

[**EmailResponse**](EmailResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

