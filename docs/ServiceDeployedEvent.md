# KnetikCloudClient::ServiceDeployedEvent

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**client** | **String** |  | [optional] 
**customer** | **String** |  | [optional] 
**do_not_broadcast** | **BOOLEAN** |  | [optional] 
**section** | **String** |  | [optional] 
**source** | **Object** |  | [optional] 
**specifics** | **String** |  | [optional] 
**synchronous** | **BOOLEAN** |  | [optional] 
**timestamp** | **Integer** |  | [optional] 
**type** | **String** | The type of the event. Used for polymorphic type recognition and thus must match an expected type | 
**events** | [**Array&lt;BreTriggerResource&gt;**](BreTriggerResource.md) | The events fired by this service | 
**resources** | [**Array&lt;ResourceTypeDescription&gt;**](ResourceTypeDescription.md) | The resources managed by this service | 
**service_name** | **String** | The unique name for the service. This serves as the unique identifier. Cannot be changed after creation | 
**swagger_url** | **String** | The url of the swagger doc | 


