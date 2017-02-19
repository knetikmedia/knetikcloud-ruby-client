# SwaggerClient::SubscriptionResource

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**additional_properties** | [**Hash&lt;String, Property&gt;**](Property.md) | A map of item additional properties, keyed on the property name. Must match the names and types defined in the template for this item type. | [optional] 
**availability** | **String** | Who can purchase this subscription | [optional] 
**category** | **String** | A category for filtering items | [optional] 
**consolidation_day_of_month** | **Integer** | The day of the month 1..31 this subscription will renew | [optional] 
**created_date** | **Integer** | The date the item was created, unix timestamp in seconds | [optional] 
**geo_country_list** | **Array&lt;String&gt;** | A list of country iso3 codes to include in the blacklist/whitelist geo policy | [optional] 
**geo_policy_type** | **String** | Whether to use the geo_country_list as a black list or white list for item geographical availability | [optional] 
**id** | **Integer** | The id of the item | [optional] 
**long_description** | **String** | A long description of the subscription | [optional] 
**name** | **String** | The name of the item | 
**plans** | [**Array&lt;SubscriptionPlanResource&gt;**](SubscriptionPlanResource.md) | The billing options for this subscription | [optional] 
**short_description** | **String** | A short description of the subscription.  Max 255 characters | [optional] 
**sort** | **Integer** | A number to use in sorting items.  Default 500 | [optional] 
**store_end** | **Integer** | Used to schedule removal from store.  Null means the subscription will never be removed | [optional] 
**store_start** | **Integer** | Used to schedule appearance in store.  Null means the subscription will appear now | [optional] 
**tags** | **Array&lt;String&gt;** | List of tags used for filtering items | [optional] 
**template** | **String** | An item template this item is validated against. May be null and no validation of additional properties will be done. | [optional] 
**unique_key** | **String** | The unique key for the item | [optional] 
**updated_date** | **Integer** | The date the item was last updated | [optional] 
**vendor_id** | **Integer** | The vendor who provides the item | 


