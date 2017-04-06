# KnetikCloudClient::FinalizeBillingAgreementRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**invoice_id** | **Integer** | The ID of the invoice being paid along with the creation of this agreement | [optional] 
**new_default** | **BOOLEAN** | Whether the new payment method created should be the user&#39;s default | [optional] 
**payer_id** | **String** | The payer ID from PayPal (passed as a parameter in the return URL). Only required if an invoice ID was included | [optional] 
**token** | **String** | The token from PayPal (passed as a parameter in the return URL) | 
**user_id** | **Integer** | The ID of the user. Defaults to the logged in user | [optional] 


