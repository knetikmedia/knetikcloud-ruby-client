# SwaggerClient::InventorySubscriptionResource

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**bill_date** | **Integer** | The date the subscription will be billed | [optional] 
**credit** | **Float** | A credit of money already applied to a subscription for the next bill, or a debt if negative | [optional] 
**credit_log** | [**Array&lt;SubscriptionCreditResource&gt;**](SubscriptionCreditResource.md) | A record of past and present credit/debt changes | [optional] 
**grace_end** | **Integer** | The date the grace period ends | [optional] 
**inventory_id** | **Integer** | The id of the inventory | [optional] 
**inventory_status** | **String** | The inventory status object | [optional] 
**item_id** | **Integer** | The id of the item | [optional] 
**payment_method** | [**PaymentMethodResource**](PaymentMethodResource.md) | The payment method object | [optional] 
**recurring_price** | **Float** | The recurring price | [optional] 
**sku** | **String** | The sku of the subscription | [optional] 
**start_date** | **Integer** | The date the subscription will start | [optional] 
**subscription_status** | **Integer** | The status of the subscription | [optional] 
**user** | [**SimpleUserResource**](SimpleUserResource.md) | The user | [optional] 


