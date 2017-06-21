# KnetikCloudClient::PaymentMethodResource

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**created_date** | **Integer** | The date/time this resource was created in seconds since unix epoch | [optional] 
**default** | **BOOLEAN** |  | [optional] 
**disabled** | **BOOLEAN** | Whether this payment method is disabled or not | [optional] 
**expiration_date** | **Integer** | The expiration date for the payment method, expressed as seconds since epoch. Typically used for credit card payment methods | [optional] 
**expiration_month** | **Integer** | The expiration month (1 - 12) for the payment method. Typically used for credit card payment methods | [optional] 
**expiration_year** | **Integer** | The expiration year for the payment method. Typically used for credit card payment methods | [optional] 
**id** | **Integer** | The unique ID for that resource | [optional] 
**last4** | **String** | The last 4 digits of the account number for the payment method. Typically used for credit card payment methods | [optional] 
**long_description** | **String** | The user friendly name of that resource. Defaults to blank string | [optional] 
**name** | **String** | The user friendly name of that resource | 
**payment_method_type** | [**PaymentMethodTypeResource**](PaymentMethodTypeResource.md) | The type of payment method. Must be a pre-existing value | 
**payment_type** | **String** | The generic payment type. Default is card | [optional] 
**short_description** | **String** | The user friendly name of that resource. Defaults to blank string | [optional] 
**sort** | **Integer** | The sort value for the payment method | [optional] 
**token** | **String** | The unique token for the payment method | [optional] 
**unique_key** | **String** | An optional unique identifier | [optional] 
**updated_date** | **Integer** | The date/time this resource was last updated in seconds since unix epoch | [optional] 
**user_id** | **Integer** | The user&#39;s id. If null, indicates a shared payment method that any user can use (i.e., &#39;wallet&#39;) | [optional] 
**verified** | **BOOLEAN** |  | [optional] 


