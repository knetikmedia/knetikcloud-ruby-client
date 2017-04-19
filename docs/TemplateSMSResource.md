# KnetikCloudClient::TemplateSMSResource

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**from** | **String** | The phone number to attribute the outgoing message to. Optional if the config text.out_number is set. | [optional] 
**localizer** | [**Localizer**](Localizer.md) |  | [optional] 
**recipients** | **Array&lt;Integer&gt;** | A list of user ids to send the message to. | 
**template_key** | **String** | The key for the template. | 
**template_vars** | **Array&lt;String&gt;** | A list of values to fill in the template. Order matters. | [optional] 


