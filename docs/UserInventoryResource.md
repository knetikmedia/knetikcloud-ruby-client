# SwaggerClient::UserInventoryResource

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**behavior_data** | **Object** | A map of data for behaviors | [optional] 
**created_date** | **Integer** | The date/time this resource was created in seconds since epoch | [optional] 
**expires** | **Integer** | The date/time this resource exires in seconds since epoch. Null for no expiration. For subscriptions, this is the end of the &#39;grace period&#39; if left unpaid | [optional] 
**id** | **Integer** | The id of the inventory | [optional] 
**invoice_id** | **Integer** | The id of the invoice that resulted in this inventory, if any | [optional] 
**item_id** | **Integer** | The id of the item | [optional] 
**item_name** | **String** | The name of the item | [optional] 
**item_type_hint** | **String** | The type hint of the item | [optional] 
**status** | **String** | The status of the inventory. Pending inventory is not yet ready for use. Inactive inventory has expired or been used up | [optional] 
**updated_date** | **Integer** | The date/time this resource was last updated in seconds since epoch | [optional] 
**user** | [**SimpleUserResource**](SimpleUserResource.md) | The id of the user this inventory belongs to | [optional] 


