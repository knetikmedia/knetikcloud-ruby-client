# KnetikCloudClient::SubscriptionResource

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**additional_properties** | [**Hash&lt;String, Property&gt;**](Property.md) | The additional properties for the subscription | [optional] 
**availability** | **String** | Who can purchase this subscription | [optional] 
**behaviors** | [**Array&lt;Behavior&gt;**](Behavior.md) | The behaviors linked to the item, describing various options and interactions. May not be included in item lists | [optional] 
**category** | **String** | The category of the subscription | [optional] 
**consolidation_day_of_month** | **Integer** | The day of the month 1..31 this subscription will renew | [optional] 
**created_date** | **Integer** | The date the item was created, unix timestamp in seconds | [optional] 
**displayable** | **BOOLEAN** | Whether or not the item is currently visible to users. Does not block purchase; Use store_start or store_end to block purchase.  Default &#x3D; true | [optional] 
**geo_country_list** | **Array&lt;String&gt;** | The geo country list for the subscription | [optional] 
**geo_policy_type** | **String** | The geo policy type for the subscription | [optional] 
**id** | **Integer** | The id of the item | [optional] 
**long_description** | **String** | A long description of the subscription | [optional] 
**name** | **String** | The name of the item | 
**plans** | [**Array&lt;SubscriptionPlanResource&gt;**](SubscriptionPlanResource.md) | The billing options for this subscription | [optional] 
**short_description** | **String** | A short description of the subscription.  Max 255 characters | [optional] 
**sort** | **Integer** | A number to use in sorting items.  Default 500 | [optional] 
**store_end** | **Integer** | Used to schedule removal from store.  Null means the subscription will never be removed | [optional] 
**store_start** | **Integer** | Used to schedule appearance in store.  Null means the subscription will appear now | [optional] 
**tags** | **Array&lt;String&gt;** | The tags for the subscription | [optional] 
**template** | **String** | The template being used | [optional] 
**unique_key** | **String** | The unique key of the subscription | [optional] 
**updated_date** | **Integer** | The date the item was last updated | [optional] 
**vendor_id** | **Integer** | The id of the vendor | 


