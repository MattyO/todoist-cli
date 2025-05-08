# Todoist::PlanDetailsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **current_member_count** | **Integer** |  |  |
| **current_plan** | **String** |  |  |
| **current_plan_status** | **String** |  |  |
| **downgrade_at** | **String** |  |  |
| **current_active_projects** | **Integer** |  |  |
| **maximum_active_projects** | **Integer** |  |  |
| **price_list** | [**Array&lt;FormattedPriceListing&gt;**](FormattedPriceListing.md) |  |  |
| **workspace_id** | **Integer** |  |  |
| **is_trialing** | **Boolean** |  |  |
| **trial_ends_at** | **String** |  |  |
| **cancel_at_period_end** | **Boolean** |  |  |
| **has_trialed** | **Boolean** |  |  |
| **plan_price** | [**PlanPrice**](PlanPrice.md) |  |  |
| **has_billing_portal** | **Boolean** |  |  |
| **has_billing_portal_switch_to_annual** | **Boolean** |  |  |

## Example

```ruby
require 'todoist'

instance = Todoist::PlanDetailsResponse.new(
  current_member_count: null,
  current_plan: null,
  current_plan_status: null,
  downgrade_at: null,
  current_active_projects: null,
  maximum_active_projects: null,
  price_list: null,
  workspace_id: null,
  is_trialing: null,
  trial_ends_at: null,
  cancel_at_period_end: null,
  has_trialed: null,
  plan_price: null,
  has_billing_portal: null,
  has_billing_portal_switch_to_annual: null
)
```

