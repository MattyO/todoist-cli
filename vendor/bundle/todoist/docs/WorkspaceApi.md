# Todoist::WorkspaceApi

All URIs are relative to *https://api.todoist.com/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**accept_invitation_api_v1_workspaces_invitations_invite_code_accept_put**](WorkspaceApi.md#accept_invitation_api_v1_workspaces_invitations_invite_code_accept_put) | **PUT** /api/v1/workspaces/invitations/{invite_code}/accept | Accept Invitation |
| [**active_projects_api_v1_workspaces_workspace_id_projects_active_get**](WorkspaceApi.md#active_projects_api_v1_workspaces_workspace_id_projects_active_get) | **GET** /api/v1/workspaces/{workspace_id}/projects/active | Active Projects |
| [**all_invitations_api_v1_workspaces_invitations_all_get**](WorkspaceApi.md#all_invitations_api_v1_workspaces_invitations_all_get) | **GET** /api/v1/workspaces/invitations/all | All Invitations |
| [**archived_projects_api_v1_workspaces_workspace_id_projects_archived_get**](WorkspaceApi.md#archived_projects_api_v1_workspaces_workspace_id_projects_archived_get) | **GET** /api/v1/workspaces/{workspace_id}/projects/archived | Archived Projects |
| [**delete_invitation_api_v1_workspaces_invitations_delete_post**](WorkspaceApi.md#delete_invitation_api_v1_workspaces_invitations_delete_post) | **POST** /api/v1/workspaces/invitations/delete | Delete Invitation |
| [**get_workspaces_users_api_v1_workspaces_users_get**](WorkspaceApi.md#get_workspaces_users_api_v1_workspaces_users_get) | **GET** /api/v1/workspaces/users | Get Workspaces Users |
| [**invitations_api_v1_workspaces_invitations_get**](WorkspaceApi.md#invitations_api_v1_workspaces_invitations_get) | **GET** /api/v1/workspaces/invitations | Invitations |
| [**join_api_v1_workspaces_join_post**](WorkspaceApi.md#join_api_v1_workspaces_join_post) | **POST** /api/v1/workspaces/join | Join |
| [**plan_details_api_v1_workspaces_plan_details_get**](WorkspaceApi.md#plan_details_api_v1_workspaces_plan_details_get) | **GET** /api/v1/workspaces/plan_details | Plan Details |
| [**reject_invitation_api_v1_workspaces_invitations_invite_code_reject_put**](WorkspaceApi.md#reject_invitation_api_v1_workspaces_invitations_invite_code_reject_put) | **PUT** /api/v1/workspaces/invitations/{invite_code}/reject | Reject Invitation |
| [**update_logo_api_v1_workspaces_logo_post**](WorkspaceApi.md#update_logo_api_v1_workspaces_logo_post) | **POST** /api/v1/workspaces/logo | Update Logo |


## accept_invitation_api_v1_workspaces_invitations_invite_code_accept_put

> <WorkspaceInvitationView> accept_invitation_api_v1_workspaces_invitations_invite_code_accept_put(invite_code)

Accept Invitation

Accept a workspace invitation. Usable by authenticated users only.

### Examples

```ruby
require 'time'
require 'todoist'

api_instance = Todoist::WorkspaceApi.new
invite_code = 'invite_code_example' # String | 

begin
  # Accept Invitation
  result = api_instance.accept_invitation_api_v1_workspaces_invitations_invite_code_accept_put(invite_code)
  p result
rescue Todoist::ApiError => e
  puts "Error when calling WorkspaceApi->accept_invitation_api_v1_workspaces_invitations_invite_code_accept_put: #{e}"
end
```

#### Using the accept_invitation_api_v1_workspaces_invitations_invite_code_accept_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorkspaceInvitationView>, Integer, Hash)> accept_invitation_api_v1_workspaces_invitations_invite_code_accept_put_with_http_info(invite_code)

```ruby
begin
  # Accept Invitation
  data, status_code, headers = api_instance.accept_invitation_api_v1_workspaces_invitations_invite_code_accept_put_with_http_info(invite_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorkspaceInvitationView>
rescue Todoist::ApiError => e
  puts "Error when calling WorkspaceApi->accept_invitation_api_v1_workspaces_invitations_invite_code_accept_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **invite_code** | **String** |  |  |

### Return type

[**WorkspaceInvitationView**](WorkspaceInvitationView.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## active_projects_api_v1_workspaces_workspace_id_projects_active_get

> <ProjectsResponse> active_projects_api_v1_workspaces_workspace_id_projects_active_get(workspace_id, opts)

Active Projects

Returns all active workspace projects, including those visible but not joined by the user.  _For guests, returns all joined workspace projects only._

### Examples

```ruby
require 'time'
require 'todoist'

api_instance = Todoist::WorkspaceApi.new
workspace_id = 56 # Integer | 
opts = {
  cursor: 'cursor_example', # String | 
  limit: 56 # Integer | 
}

begin
  # Active Projects
  result = api_instance.active_projects_api_v1_workspaces_workspace_id_projects_active_get(workspace_id, opts)
  p result
rescue Todoist::ApiError => e
  puts "Error when calling WorkspaceApi->active_projects_api_v1_workspaces_workspace_id_projects_active_get: #{e}"
end
```

#### Using the active_projects_api_v1_workspaces_workspace_id_projects_active_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProjectsResponse>, Integer, Hash)> active_projects_api_v1_workspaces_workspace_id_projects_active_get_with_http_info(workspace_id, opts)

```ruby
begin
  # Active Projects
  data, status_code, headers = api_instance.active_projects_api_v1_workspaces_workspace_id_projects_active_get_with_http_info(workspace_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProjectsResponse>
rescue Todoist::ApiError => e
  puts "Error when calling WorkspaceApi->active_projects_api_v1_workspaces_workspace_id_projects_active_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workspace_id** | **Integer** |  |  |
| **cursor** | **String** |  | [optional] |
| **limit** | **Integer** |  | [optional][default to 100] |

### Return type

[**ProjectsResponse**](ProjectsResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## all_invitations_api_v1_workspaces_invitations_all_get

> <Array<WorkspaceInvitationView>> all_invitations_api_v1_workspaces_invitations_all_get(workspace_id)

All Invitations

Return a list containing details of all pending invitation to a workspace.  This list is not paginated. All workspace members can access this list.

### Examples

```ruby
require 'time'
require 'todoist'

api_instance = Todoist::WorkspaceApi.new
workspace_id = 56 # Integer | 

begin
  # All Invitations
  result = api_instance.all_invitations_api_v1_workspaces_invitations_all_get(workspace_id)
  p result
rescue Todoist::ApiError => e
  puts "Error when calling WorkspaceApi->all_invitations_api_v1_workspaces_invitations_all_get: #{e}"
end
```

#### Using the all_invitations_api_v1_workspaces_invitations_all_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<WorkspaceInvitationView>>, Integer, Hash)> all_invitations_api_v1_workspaces_invitations_all_get_with_http_info(workspace_id)

```ruby
begin
  # All Invitations
  data, status_code, headers = api_instance.all_invitations_api_v1_workspaces_invitations_all_get_with_http_info(workspace_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<WorkspaceInvitationView>>
rescue Todoist::ApiError => e
  puts "Error when calling WorkspaceApi->all_invitations_api_v1_workspaces_invitations_all_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workspace_id** | **Integer** |  |  |

### Return type

[**Array&lt;WorkspaceInvitationView&gt;**](WorkspaceInvitationView.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## archived_projects_api_v1_workspaces_workspace_id_projects_archived_get

> <ProjectsResponse> archived_projects_api_v1_workspaces_workspace_id_projects_archived_get(workspace_id, opts)

Archived Projects

### Examples

```ruby
require 'time'
require 'todoist'

api_instance = Todoist::WorkspaceApi.new
workspace_id = 56 # Integer | 
opts = {
  cursor: 'cursor_example', # String | 
  limit: 56 # Integer | 
}

begin
  # Archived Projects
  result = api_instance.archived_projects_api_v1_workspaces_workspace_id_projects_archived_get(workspace_id, opts)
  p result
rescue Todoist::ApiError => e
  puts "Error when calling WorkspaceApi->archived_projects_api_v1_workspaces_workspace_id_projects_archived_get: #{e}"
end
```

#### Using the archived_projects_api_v1_workspaces_workspace_id_projects_archived_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProjectsResponse>, Integer, Hash)> archived_projects_api_v1_workspaces_workspace_id_projects_archived_get_with_http_info(workspace_id, opts)

```ruby
begin
  # Archived Projects
  data, status_code, headers = api_instance.archived_projects_api_v1_workspaces_workspace_id_projects_archived_get_with_http_info(workspace_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProjectsResponse>
rescue Todoist::ApiError => e
  puts "Error when calling WorkspaceApi->archived_projects_api_v1_workspaces_workspace_id_projects_archived_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workspace_id** | **Integer** |  |  |
| **cursor** | **String** |  | [optional] |
| **limit** | **Integer** |  | [optional][default to 100] |

### Return type

[**ProjectsResponse**](ProjectsResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_invitation_api_v1_workspaces_invitations_delete_post

> <WorkspaceInvitationView> delete_invitation_api_v1_workspaces_invitations_delete_post(todoist_apps_api_sync_rest_workspaces_body1)

Delete Invitation

Deletes a workspace invitation. Only admins can delete invitations.

### Examples

```ruby
require 'time'
require 'todoist'

api_instance = Todoist::WorkspaceApi.new
todoist_apps_api_sync_rest_workspaces_body1 = Todoist::TodoistAppsApiSyncRestWorkspacesBody1.new({workspace_id: 37, user_email: 'user_email_example'}) # TodoistAppsApiSyncRestWorkspacesBody1 | 

begin
  # Delete Invitation
  result = api_instance.delete_invitation_api_v1_workspaces_invitations_delete_post(todoist_apps_api_sync_rest_workspaces_body1)
  p result
rescue Todoist::ApiError => e
  puts "Error when calling WorkspaceApi->delete_invitation_api_v1_workspaces_invitations_delete_post: #{e}"
end
```

#### Using the delete_invitation_api_v1_workspaces_invitations_delete_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorkspaceInvitationView>, Integer, Hash)> delete_invitation_api_v1_workspaces_invitations_delete_post_with_http_info(todoist_apps_api_sync_rest_workspaces_body1)

```ruby
begin
  # Delete Invitation
  data, status_code, headers = api_instance.delete_invitation_api_v1_workspaces_invitations_delete_post_with_http_info(todoist_apps_api_sync_rest_workspaces_body1)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorkspaceInvitationView>
rescue Todoist::ApiError => e
  puts "Error when calling WorkspaceApi->delete_invitation_api_v1_workspaces_invitations_delete_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **todoist_apps_api_sync_rest_workspaces_body1** | [**TodoistAppsApiSyncRestWorkspacesBody1**](TodoistAppsApiSyncRestWorkspacesBody1.md) |  |  |

### Return type

[**WorkspaceInvitationView**](WorkspaceInvitationView.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_workspaces_users_api_v1_workspaces_users_get

> <UsersResponse> get_workspaces_users_api_v1_workspaces_users_get(opts)

Get Workspaces Users

Returns all workspace_users for a given workspace if workspace_id is provided. Otherwise, returns all workspace_users for all workspaces that the requesting user is part of.  _Not accessible by guests._

### Examples

```ruby
require 'time'
require 'todoist'

api_instance = Todoist::WorkspaceApi.new
opts = {
  workspace_id: 56, # Integer | 
  cursor: 'cursor_example', # String | 
  limit: 56 # Integer | 
}

begin
  # Get Workspaces Users
  result = api_instance.get_workspaces_users_api_v1_workspaces_users_get(opts)
  p result
rescue Todoist::ApiError => e
  puts "Error when calling WorkspaceApi->get_workspaces_users_api_v1_workspaces_users_get: #{e}"
end
```

#### Using the get_workspaces_users_api_v1_workspaces_users_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UsersResponse>, Integer, Hash)> get_workspaces_users_api_v1_workspaces_users_get_with_http_info(opts)

```ruby
begin
  # Get Workspaces Users
  data, status_code, headers = api_instance.get_workspaces_users_api_v1_workspaces_users_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UsersResponse>
rescue Todoist::ApiError => e
  puts "Error when calling WorkspaceApi->get_workspaces_users_api_v1_workspaces_users_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workspace_id** | **Integer** |  | [optional] |
| **cursor** | **String** |  | [optional] |
| **limit** | **Integer** |  | [optional][default to 100] |

### Return type

[**UsersResponse**](UsersResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## invitations_api_v1_workspaces_invitations_get

> Array&lt;String&gt; invitations_api_v1_workspaces_invitations_get(workspace_id)

Invitations

Return a list of user emails who have a pending invitation to a workspace.  The list is not paginated. All workspace members can access this list.

### Examples

```ruby
require 'time'
require 'todoist'

api_instance = Todoist::WorkspaceApi.new
workspace_id = 56 # Integer | 

begin
  # Invitations
  result = api_instance.invitations_api_v1_workspaces_invitations_get(workspace_id)
  p result
rescue Todoist::ApiError => e
  puts "Error when calling WorkspaceApi->invitations_api_v1_workspaces_invitations_get: #{e}"
end
```

#### Using the invitations_api_v1_workspaces_invitations_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Array&lt;String&gt;, Integer, Hash)> invitations_api_v1_workspaces_invitations_get_with_http_info(workspace_id)

```ruby
begin
  # Invitations
  data, status_code, headers = api_instance.invitations_api_v1_workspaces_invitations_get_with_http_info(workspace_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Array&lt;String&gt;
rescue Todoist::ApiError => e
  puts "Error when calling WorkspaceApi->invitations_api_v1_workspaces_invitations_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workspace_id** | **Integer** |  |  |

### Return type

**Array&lt;String&gt;**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## join_api_v1_workspaces_join_post

> <WorkspaceUserView> join_api_v1_workspaces_join_post(todoist_apps_api_sync_rest_workspaces_body2)

Join

Join a workspace via link or via workspace ID, if the user can auto-join the workspace by domain.  ## Joining by Domain This is possible if: - The user is verified - The user has a user e-mail belonging to a domain that is set   as a domain name for a workspace - That workspace has the auto-join by domain feature enabled

### Examples

```ruby
require 'time'
require 'todoist'

api_instance = Todoist::WorkspaceApi.new
todoist_apps_api_sync_rest_workspaces_body2 = Todoist::TodoistAppsApiSyncRestWorkspacesBody2.new # TodoistAppsApiSyncRestWorkspacesBody2 | 

begin
  # Join
  result = api_instance.join_api_v1_workspaces_join_post(todoist_apps_api_sync_rest_workspaces_body2)
  p result
rescue Todoist::ApiError => e
  puts "Error when calling WorkspaceApi->join_api_v1_workspaces_join_post: #{e}"
end
```

#### Using the join_api_v1_workspaces_join_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorkspaceUserView>, Integer, Hash)> join_api_v1_workspaces_join_post_with_http_info(todoist_apps_api_sync_rest_workspaces_body2)

```ruby
begin
  # Join
  data, status_code, headers = api_instance.join_api_v1_workspaces_join_post_with_http_info(todoist_apps_api_sync_rest_workspaces_body2)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorkspaceUserView>
rescue Todoist::ApiError => e
  puts "Error when calling WorkspaceApi->join_api_v1_workspaces_join_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **todoist_apps_api_sync_rest_workspaces_body2** | [**TodoistAppsApiSyncRestWorkspacesBody2**](TodoistAppsApiSyncRestWorkspacesBody2.md) |  |  |

### Return type

[**WorkspaceUserView**](WorkspaceUserView.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## plan_details_api_v1_workspaces_plan_details_get

> <PlanDetailsResponse> plan_details_api_v1_workspaces_plan_details_get(workspace_id)

Plan Details

Lists details of the workspace's current plan and usage

### Examples

```ruby
require 'time'
require 'todoist'

api_instance = Todoist::WorkspaceApi.new
workspace_id = 56 # Integer | 

begin
  # Plan Details
  result = api_instance.plan_details_api_v1_workspaces_plan_details_get(workspace_id)
  p result
rescue Todoist::ApiError => e
  puts "Error when calling WorkspaceApi->plan_details_api_v1_workspaces_plan_details_get: #{e}"
end
```

#### Using the plan_details_api_v1_workspaces_plan_details_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanDetailsResponse>, Integer, Hash)> plan_details_api_v1_workspaces_plan_details_get_with_http_info(workspace_id)

```ruby
begin
  # Plan Details
  data, status_code, headers = api_instance.plan_details_api_v1_workspaces_plan_details_get_with_http_info(workspace_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanDetailsResponse>
rescue Todoist::ApiError => e
  puts "Error when calling WorkspaceApi->plan_details_api_v1_workspaces_plan_details_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workspace_id** | **Integer** |  |  |

### Return type

[**PlanDetailsResponse**](PlanDetailsResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## reject_invitation_api_v1_workspaces_invitations_invite_code_reject_put

> <WorkspaceInvitationView> reject_invitation_api_v1_workspaces_invitations_invite_code_reject_put(invite_code)

Reject Invitation

Reject a workspace invitation. Usable by authenticated users only.

### Examples

```ruby
require 'time'
require 'todoist'

api_instance = Todoist::WorkspaceApi.new
invite_code = 'invite_code_example' # String | 

begin
  # Reject Invitation
  result = api_instance.reject_invitation_api_v1_workspaces_invitations_invite_code_reject_put(invite_code)
  p result
rescue Todoist::ApiError => e
  puts "Error when calling WorkspaceApi->reject_invitation_api_v1_workspaces_invitations_invite_code_reject_put: #{e}"
end
```

#### Using the reject_invitation_api_v1_workspaces_invitations_invite_code_reject_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorkspaceInvitationView>, Integer, Hash)> reject_invitation_api_v1_workspaces_invitations_invite_code_reject_put_with_http_info(invite_code)

```ruby
begin
  # Reject Invitation
  data, status_code, headers = api_instance.reject_invitation_api_v1_workspaces_invitations_invite_code_reject_put_with_http_info(invite_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorkspaceInvitationView>
rescue Todoist::ApiError => e
  puts "Error when calling WorkspaceApi->reject_invitation_api_v1_workspaces_invitations_invite_code_reject_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **invite_code** | **String** |  |  |

### Return type

[**WorkspaceInvitationView**](WorkspaceInvitationView.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_logo_api_v1_workspaces_logo_post

> Hash&lt;String, Object&gt; update_logo_api_v1_workspaces_logo_post(todoist_apps_api_sync_rest_workspaces_body3)

Update Logo

Upload an image to be used as the workspace logo. Similar to a user’s avatar. If `delete` is set to true, it removes the logo completely and does not return any `logo_*` attribute.

### Examples

```ruby
require 'time'
require 'todoist'

api_instance = Todoist::WorkspaceApi.new
todoist_apps_api_sync_rest_workspaces_body3 = Todoist::TodoistAppsApiSyncRestWorkspacesBody3.new({workspace_id: 37}) # TodoistAppsApiSyncRestWorkspacesBody3 | 

begin
  # Update Logo
  result = api_instance.update_logo_api_v1_workspaces_logo_post(todoist_apps_api_sync_rest_workspaces_body3)
  p result
rescue Todoist::ApiError => e
  puts "Error when calling WorkspaceApi->update_logo_api_v1_workspaces_logo_post: #{e}"
end
```

#### Using the update_logo_api_v1_workspaces_logo_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Hash&lt;String, Object&gt;, Integer, Hash)> update_logo_api_v1_workspaces_logo_post_with_http_info(todoist_apps_api_sync_rest_workspaces_body3)

```ruby
begin
  # Update Logo
  data, status_code, headers = api_instance.update_logo_api_v1_workspaces_logo_post_with_http_info(todoist_apps_api_sync_rest_workspaces_body3)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Hash&lt;String, Object&gt;
rescue Todoist::ApiError => e
  puts "Error when calling WorkspaceApi->update_logo_api_v1_workspaces_logo_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **todoist_apps_api_sync_rest_workspaces_body3** | [**TodoistAppsApiSyncRestWorkspacesBody3**](TodoistAppsApiSyncRestWorkspacesBody3.md) |  |  |

### Return type

**Hash&lt;String, Object&gt;**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

