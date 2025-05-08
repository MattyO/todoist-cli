# Todoist::BackupsApi

All URIs are relative to *https://api.todoist.com/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**download_backup_api_v1_backups_download_get**](BackupsApi.md#download_backup_api_v1_backups_download_get) | **GET** /api/v1/backups/download | Download Backup |
| [**get_backups_api_v1_backups_get**](BackupsApi.md#get_backups_api_v1_backups_get) | **GET** /api/v1/backups | Get Backups |


## download_backup_api_v1_backups_download_get

> Object download_backup_api_v1_backups_download_get(file)

Download Backup

### Examples

```ruby
require 'time'
require 'todoist'

api_instance = Todoist::BackupsApi.new
file = 'file_example' # String | 

begin
  # Download Backup
  result = api_instance.download_backup_api_v1_backups_download_get(file)
  p result
rescue Todoist::ApiError => e
  puts "Error when calling BackupsApi->download_backup_api_v1_backups_download_get: #{e}"
end
```

#### Using the download_backup_api_v1_backups_download_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> download_backup_api_v1_backups_download_get_with_http_info(file)

```ruby
begin
  # Download Backup
  data, status_code, headers = api_instance.download_backup_api_v1_backups_download_get_with_http_info(file)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue Todoist::ApiError => e
  puts "Error when calling BackupsApi->download_backup_api_v1_backups_download_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file** | **String** |  |  |

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_backups_api_v1_backups_get

> <Array<BackupResponse>> get_backups_api_v1_backups_get(opts)

Get Backups

Todoist creates a backup archive of users' data on a daily basis. Backup archives can also be accessed from the web app (Todoist Settings -> Backups).  When using the default token, with the `data:read_write` scope, and having MFA enabled, the MFA token is required and must be provided with the request. To be able to use this endpoint without an MFA token, your token must have the `backups:read` scope.

### Examples

```ruby
require 'time'
require 'todoist'

api_instance = Todoist::BackupsApi.new
opts = {
  mfa_token: 'mfa_token_example' # String | 
}

begin
  # Get Backups
  result = api_instance.get_backups_api_v1_backups_get(opts)
  p result
rescue Todoist::ApiError => e
  puts "Error when calling BackupsApi->get_backups_api_v1_backups_get: #{e}"
end
```

#### Using the get_backups_api_v1_backups_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<BackupResponse>>, Integer, Hash)> get_backups_api_v1_backups_get_with_http_info(opts)

```ruby
begin
  # Get Backups
  data, status_code, headers = api_instance.get_backups_api_v1_backups_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<BackupResponse>>
rescue Todoist::ApiError => e
  puts "Error when calling BackupsApi->get_backups_api_v1_backups_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **mfa_token** | **String** |  | [optional] |

### Return type

[**Array&lt;BackupResponse&gt;**](BackupResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

