# SwaggerClient::AchievementDefinitionResource

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**additional_properties** | [**Hash&lt;String, Property&gt;**](Property.md) | A map of additional properties, keyed on the property name.  Must match the names and types defined in the template for this resource type | [optional] 
**created_date** | **Integer** | The date/time this resource was created in seconds since unix epoch | [optional] 
**description** | **String** | The description of the achievement. Must be at least 2 characters in length. | [optional] 
**hidden** | **BOOLEAN** | Whether the achievement is hidden from the user | 
**name** | **String** | The name of the achievement. Must be at least 6 characters in length. IMMUTABLE | 
**required_progress** | **Integer** | The required progress for the achievement definition | 
**rule_id** | **String** | The id of the rule generated for this achievement | [optional] 
**tags** | **Array&lt;String&gt;** | The tags for the achievement definition | [optional] 
**template** | **String** | An achievement template this achievement is validated against (private). May be null and no validation of additional_properties will be done | [optional] 
**trigger_event_name** | **String** | The name of the trigger event associated with this achievement | [optional] 
**updated_date** | **Integer** | The date/time this resource was last updated in seconds since unix epoch | [optional] 


