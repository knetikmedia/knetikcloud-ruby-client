# SwaggerClient::PaymentAuthorizationResource

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**captured** | **BOOLEAN** | Whether this authorization has been captured | [optional] 
**created** | **Integer** | The date this authorization was received, unix timestamp in seconds | [optional] 
**details** | **Object** | The details for this authorization. Format dependent on payment provider | [optional] 
**id** | **Integer** | The id of the authorization | [optional] 
**invoice** | **Integer** | The invoice this authorization is intended to pay | [optional] 
**payment_type** | [**SimpleReferenceResourceint**](SimpleReferenceResourceint.md) | The payment type (which provider) this payment is through | 


