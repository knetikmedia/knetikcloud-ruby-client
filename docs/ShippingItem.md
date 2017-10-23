# KnetikCloudClient::ShippingItem

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**additional_properties** | [**Hash&lt;String, Property&gt;**](Property.md) | A map of additional properties, keyed on the property name.  Must match the names and types defined in the template for this item type, or be an extra not from the template | [optional] 
**behaviors** | [**Array&lt;Behavior&gt;**](Behavior.md) | The behaviors linked to the item, describing various options and interactions. May not be included in item lists | [optional] 
**category** | **String** | A category for filtering items | [optional] 
**created_date** | **Integer** | The date the item was created, unix timestamp in seconds | [optional] 
**id** | **Integer** | The id of the item | [optional] 
**long_description** | **String** | A long description of the item | [optional] 
**name** | **String** | The name of the item | 
**short_description** | **String** | A short description of the item, max 255 chars | [optional] 
**sort** | **Integer** | A number to use in sorting items.  Default 500 | [optional] 
**tags** | **Array&lt;String&gt;** | List of tags used for filtering items | [optional] 
**template** | **String** | An item template this item is validated against.  May be null and no validation of additional_properties will be done.  Default &#x3D; null | [optional] 
**type_hint** | **String** | The type of the item | 
**unique_key** | **String** | The unique key for the item | [optional] 
**updated_date** | **Integer** | The date the item was last updated, unix timestamp in seconds | [optional] 
**displayable** | **BOOLEAN** | Whether or not the item is currently visible to users. Does not block purchase; Use store_start or store_end to block purchase.  Default &#x3D; true | [optional] 
**geo_country_list** | **Array&lt;String&gt;** | A list of country ID to include in the blacklist/whitelist geo policy | [optional] 
**geo_policy_type** | **String** | Whether to use the geo_country_list as a black list or white list for item geographical availability | [optional] 
**shipping_tier** | **Integer** | Provides the abstract shipping needs if this item is physical and can be shipped.  A value of zero means no shipping needed.  Default &#x3D; 0 | [optional] 
**skus** | [**Array&lt;Sku&gt;**](Sku.md) | The skus for the item. Each defines a unique configuration for the item to be purchased (Large-Blue, Small-Green, etc). These are what is ultimately selected in the store and added to the cart | 
**store_end** | **Integer** | The date the item will become hidden and unavailable for purchase, unix timestamp in seconds.  If set to null, item will never leave the store | [optional] 
**store_start** | **Integer** | The date the item will become visible (if displayable) and available for purchase, unix timestamp in seconds.  If set to null, item will appear in store immediately | [optional] 
**vendor_id** | **Integer** | The vendor who provides the item | 
**countries** | **Array&lt;String&gt;** | A unique list of country iso3 codes that allow the shipping option | [optional] 
**max_tier_total** | **Integer** | An abstract max value that the values of item&#39;s shipping_tier work against to decide whether an order can be fulfilled | 
**taxable** | **BOOLEAN** | Whether tax should be applied to the shipping price.  Default &#x3D; false | [optional] 


