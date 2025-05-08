# Todoist::TodoistAppsAppPlatformControllersAccessTokenBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_id** | **String** | The unique Client ID of the Todoist application that you registered |  |
| **client_secret** | **String** | The unique Client Secret of the Todoist application that you registered |  |
| **scope** | **String** | Scopes of the OAuth token. Please refer to the [Authorization](#tag/Authorization) guide for the detailed list of available scopes. |  |

## Example

```ruby
require 'todoist'

instance = Todoist::TodoistAppsAppPlatformControllersAccessTokenBody.new(
  client_id: null,
  client_secret: null,
  scope: null
)
```

