# KnetikCloudClient::StripePaymentRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**amount** | **Float** | The amount to pay, if not the full remaining balance (leave out to pay in full, but be careful no other partial payment has been started) | [optional] 
**invoice_id** | **Integer** | The id of the invoice to pay | 
**token** | **String** | A token from Stripe to identify payment info to be tied to the customer | 


