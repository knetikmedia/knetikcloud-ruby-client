# KnetikCloudClient::RawEmailResource

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**body** | **String** | The body of the outgoing message. | 
**from** | **String** | Address to attribute the outgoing message to. Optional if the config email.out_address is set. | [optional] 
**html** | **BOOLEAN** | Whether the body is to be treated as html. Default false. | [optional] 
**recipients** | **Array&lt;Integer&gt;** | A list of user ids to send the message to. | 
**subject** | **String** | The subject of the outgoing message. | 


