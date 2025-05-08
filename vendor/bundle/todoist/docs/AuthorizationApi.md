# Todoist::AuthorizationApi

All URIs are relative to *https://api.todoist.com/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**migrate_personal_token_api_v1_access_tokens_migrate_personal_token_post**](AuthorizationApi.md#migrate_personal_token_api_v1_access_tokens_migrate_personal_token_post) | **POST** /api/v1/access_tokens/migrate_personal_token | Migrate Personal Token |
| [**revoke_access_token_api_api_v1_access_tokens_delete**](AuthorizationApi.md#revoke_access_token_api_api_v1_access_tokens_delete) | **DELETE** /api/v1/access_tokens | Revoke Access Token Api |


## migrate_personal_token_api_v1_access_tokens_migrate_personal_token_post

> <MigratePersonalTokenResponse> migrate_personal_token_api_v1_access_tokens_migrate_personal_token_post(personal_token, todoist_apps_app_platform_controllers_access_token_body)

Migrate Personal Token

Tokens obtained via the old email/password authentication method can be migrated to the new OAuth access token. Migrating your users' personal tokens will allow users to see your app in their Todoist Settings page and give them the ability to manage their app authorization.  A successful response has `200 OK` status and `application/json` Content-Type.

### Examples

```ruby
require 'time'
require 'todoist'

api_instance = Todoist::AuthorizationApi.new
personal_token = 'personal_token_example' # String | 
todoist_apps_app_platform_controllers_access_token_body = Todoist::TodoistAppsAppPlatformControllersAccessTokenBody.new({client_id: 'client_id_example', client_secret: 'client_secret_example', scope: 'scope_example'}) # TodoistAppsAppPlatformControllersAccessTokenBody | 

begin
  # Migrate Personal Token
  result = api_instance.migrate_personal_token_api_v1_access_tokens_migrate_personal_token_post(personal_token, todoist_apps_app_platform_controllers_access_token_body)
  p result
rescue Todoist::ApiError => e
  puts "Error when calling AuthorizationApi->migrate_personal_token_api_v1_access_tokens_migrate_personal_token_post: #{e}"
end
```

#### Using the migrate_personal_token_api_v1_access_tokens_migrate_personal_token_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MigratePersonalTokenResponse>, Integer, Hash)> migrate_personal_token_api_v1_access_tokens_migrate_personal_token_post_with_http_info(personal_token, todoist_apps_app_platform_controllers_access_token_body)

```ruby
begin
  # Migrate Personal Token
  data, status_code, headers = api_instance.migrate_personal_token_api_v1_access_tokens_migrate_personal_token_post_with_http_info(personal_token, todoist_apps_app_platform_controllers_access_token_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MigratePersonalTokenResponse>
rescue Todoist::ApiError => e
  puts "Error when calling AuthorizationApi->migrate_personal_token_api_v1_access_tokens_migrate_personal_token_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **personal_token** | **String** |  |  |
| **todoist_apps_app_platform_controllers_access_token_body** | [**TodoistAppsAppPlatformControllersAccessTokenBody**](TodoistAppsAppPlatformControllersAccessTokenBody.md) |  |  |

### Return type

[**MigratePersonalTokenResponse**](MigratePersonalTokenResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## revoke_access_token_api_api_v1_access_tokens_delete

> Object revoke_access_token_api_api_v1_access_tokens_delete(client_id, client_secret, access_token)

Revoke Access Token Api

Revoke the access tokens obtained via OAuth

### Examples

```ruby
require 'time'
require 'todoist'

api_instance = Todoist::AuthorizationApi.new
client_id = 'client_id_example' # String | 
client_secret = 'client_secret_example' # String | 
access_token = 'access_token_example' # String | 

begin
  # Revoke Access Token Api
  result = api_instance.revoke_access_token_api_api_v1_access_tokens_delete(client_id, client_secret, access_token)
  p result
rescue Todoist::ApiError => e
  puts "Error when calling AuthorizationApi->revoke_access_token_api_api_v1_access_tokens_delete: #{e}"
end
```

#### Using the revoke_access_token_api_api_v1_access_tokens_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> revoke_access_token_api_api_v1_access_tokens_delete_with_http_info(client_id, client_secret, access_token)

```ruby
begin
  # Revoke Access Token Api
  data, status_code, headers = api_instance.revoke_access_token_api_api_v1_access_tokens_delete_with_http_info(client_id, client_secret, access_token)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue Todoist::ApiError => e
  puts "Error when calling AuthorizationApi->revoke_access_token_api_api_v1_access_tokens_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_id** | **String** |  |  |
| **client_secret** | **String** |  |  |
| **access_token** | **String** |  |  |

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

