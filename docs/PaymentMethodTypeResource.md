# KnetikCloudClient::PaymentMethodTypeResource

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** | The id of the payment method type | 
**invoice_processing_hours** | **Integer** | The maximum timelimit in hours for an invoice in the processing status while waiting on this payment method type. Defaults to the global config invoice.processing_expiration_hours if null | [optional] 
**name** | **String** | The name of the payment method type | 
**supports_capture** | **BOOLEAN** | Whether the payment handler supports the authorize and capture flow | [optional] 
**supports_partial** | **BOOLEAN** | Whether the payment handler supports paying for part of an invoice, rather than the full grand_total | [optional] 
**supports_rebill** | **BOOLEAN** | Whether the payment handler supports rebilling the method later (for saved payments or subscriptions) | [optional] 
**supports_refunds** | **BOOLEAN** | Whether the payment handler supports refunding | [optional] 


