# Todoist::UserApi

All URIs are relative to *https://api.todoist.com/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_productivity_stats_api_v1_tasks_completed_stats_get**](UserApi.md#get_productivity_stats_api_v1_tasks_completed_stats_get) | **GET** /api/v1/tasks/completed/stats | Get Productivity Stats |
| [**update_notification_setting_api_v1_notification_setting_put**](UserApi.md#update_notification_setting_api_v1_notification_setting_put) | **PUT** /api/v1/notification_setting | Update Notification Setting |
| [**user_info_api_v1_user_get**](UserApi.md#user_info_api_v1_user_get) | **GET** /api/v1/user | User Info |


## get_productivity_stats_api_v1_tasks_completed_stats_get

> Hash&lt;String, Object&gt; get_productivity_stats_api_v1_tasks_completed_stats_get

Get Productivity Stats

### Examples

```ruby
require 'time'
require 'todoist'

api_instance = Todoist::UserApi.new

begin
  # Get Productivity Stats
  result = api_instance.get_productivity_stats_api_v1_tasks_completed_stats_get
  p result
rescue Todoist::ApiError => e
  puts "Error when calling UserApi->get_productivity_stats_api_v1_tasks_completed_stats_get: #{e}"
end
```

#### Using the get_productivity_stats_api_v1_tasks_completed_stats_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Hash&lt;String, Object&gt;, Integer, Hash)> get_productivity_stats_api_v1_tasks_completed_stats_get_with_http_info

```ruby
begin
  # Get Productivity Stats
  data, status_code, headers = api_instance.get_productivity_stats_api_v1_tasks_completed_stats_get_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Hash&lt;String, Object&gt;
rescue Todoist::ApiError => e
  puts "Error when calling UserApi->get_productivity_stats_api_v1_tasks_completed_stats_get_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**Hash&lt;String, Object&gt;**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_notification_setting_api_v1_notification_setting_put

> Hash&lt;String, Hash&lt;String, Boolean&gt;&gt; update_notification_setting_api_v1_notification_setting_put(notification_type, service, opts)

Update Notification Setting

### Examples

```ruby
require 'time'
require 'todoist'

api_instance = Todoist::UserApi.new
notification_type = Todoist::NotificationType::NOTE_ADDED # NotificationType | 
service = Todoist::NotificationChannel::EMAIL # NotificationChannel | 
opts = {
  token: 'token_example', # String | 
  dont_notify: true # Boolean | 
}

begin
  # Update Notification Setting
  result = api_instance.update_notification_setting_api_v1_notification_setting_put(notification_type, service, opts)
  p result
rescue Todoist::ApiError => e
  puts "Error when calling UserApi->update_notification_setting_api_v1_notification_setting_put: #{e}"
end
```

#### Using the update_notification_setting_api_v1_notification_setting_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Hash&lt;String, Hash&lt;String, Boolean&gt;&gt;, Integer, Hash)> update_notification_setting_api_v1_notification_setting_put_with_http_info(notification_type, service, opts)

```ruby
begin
  # Update Notification Setting
  data, status_code, headers = api_instance.update_notification_setting_api_v1_notification_setting_put_with_http_info(notification_type, service, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Hash&lt;String, Hash&lt;String, Boolean&gt;&gt;
rescue Todoist::ApiError => e
  puts "Error when calling UserApi->update_notification_setting_api_v1_notification_setting_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **notification_type** | [**NotificationType**](.md) |  |  |
| **service** | [**NotificationChannel**](.md) |  |  |
| **token** | **String** |  | [optional] |
| **dont_notify** | **Boolean** |  | [optional] |

### Return type

**Hash&lt;String, Hash&lt;String, Boolean&gt;&gt;**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## user_info_api_v1_user_get

> Hash&lt;String, Object&gt; user_info_api_v1_user_get

User Info

### Examples

```ruby
require 'time'
require 'todoist'

api_instance = Todoist::UserApi.new

begin
  # User Info
  result = api_instance.user_info_api_v1_user_get
  p result
rescue Todoist::ApiError => e
  puts "Error when calling UserApi->user_info_api_v1_user_get: #{e}"
end
```

#### Using the user_info_api_v1_user_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Hash&lt;String, Object&gt;, Integer, Hash)> user_info_api_v1_user_get_with_http_info

```ruby
begin
  # User Info
  data, status_code, headers = api_instance.user_info_api_v1_user_get_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Hash&lt;String, Object&gt;
rescue Todoist::ApiError => e
  puts "Error when calling UserApi->user_info_api_v1_user_get_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**Hash&lt;String, Object&gt;**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

