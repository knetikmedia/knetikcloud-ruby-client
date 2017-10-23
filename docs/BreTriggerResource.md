# KnetikCloudClient::BreTriggerResource

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**category** | **String** | The category this trigger belongs to. See endpoints for related asset information. All new triggers are in category &#39;custom&#39; | [optional] 
**event_name** | **String** | The unique name for the event. This serves as the unique identifier. Cannot be changed after creation | 
**parameters** | [**Array&lt;BreTriggerParameterDefinition&gt;**](BreTriggerParameterDefinition.md) | A list of parameters that will be sent with the event when the trigger is fired. These must be included in the event and match the described types | [optional] 
**system_trigger** | **BOOLEAN** | Where this trigger came from. System triggers cannot be removed or updated | [optional] 
**tags** | **Array&lt;String&gt;** | A list of tags for filtering | [optional] 
**trigger_description** | **String** | A description of the trigger | 
**trigger_name** | **String** | A human readable name for this trigger | 


