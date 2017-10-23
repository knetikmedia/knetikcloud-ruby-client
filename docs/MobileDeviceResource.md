# KnetikCloudClient::MobileDeviceResource

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**additional_properties** | [**Hash&lt;String, Property&gt;**](Property.md) | A map of additional properties, keyed on the property name.  Must match the names and types defined in the template if one is specified | [optional] 
**created_date** | **Integer** | The date the device log was created | [optional] 
**description** | **String** | The description of the device | [optional] 
**device_type** | **String** | The type of device. Use mobile to specifically register mobile devices. This particular type will be used to send and receive notifications | [optional] 
**id** | **String** | The unique ID for this device | [optional] 
**location** | **String** | The physical location of the device, coordinates or named place (office, living room, etc) | [optional] 
**mac_address** | **String** | The MAC (media access control) address of the device | [optional] 
**make** | **String** | The make of the device | [optional] 
**model** | **String** | The model of the device | [optional] 
**name** | **String** | The name of the device | [optional] 
**os** | **String** | The OS (operating system) on the device | [optional] 
**owner** | [**SimpleUserResource**](SimpleUserResource.md) | The user that owns the device | [optional] 
**serial** | **String** | The serial number of the device | [optional] 
**tags** | **Array&lt;String&gt;** | Random tags to facilitate search | [optional] 
**template** | **String** | Use to describe and validate custom properties (custom schema). May be null and no validation of additional_properties will be done | [optional] 
**updated_date** | **Integer** | The date the device log was updated | [optional] 
**users** | [**Array&lt;SimpleUserResource&gt;**](SimpleUserResource.md) | The users currently using the device | [optional] 
**authorization** | **String** | The authorization code for push notifications provided by the provider platform (APNS, GCM, etc). | [optional] 
**imei** | **String** |  | [optional] 
**notification_platform** | **String** | The platform used for push notifications. Only Apple and Android are supported at the moment. | [optional] 
**number** | **String** | The phone number associated with this device if applicable, in international format | [optional] 


