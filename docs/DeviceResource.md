# SwaggerClient::DeviceResource

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**authorization** | **String** | The authorization code for the device | [optional] 
**condition** | **String** | The current condition of the device (New, Defective, Reconditioned) | [optional] 
**created_date** | **Integer** | The date the device log was created | [optional] 
**data** | **Hash&lt;String, String&gt;** | The key/value pairs for extended data | [optional] 
**description** | **String** | The description of the device | [optional] 
**device_type** | **String** | The type of the device | [optional] 
**id** | **Integer** | The unique ID for this device. Cannot be changed once created | 
**location** | **String** | The location of the device | [optional] 
**mac_address** | **String** | The MAC (media access control) address of the device | [optional] 
**make** | **String** | The make of the device | [optional] 
**model** | **String** | The model of the device | [optional] 
**name** | **String** | The name of the device | [optional] 
**os** | **String** | The OS (operating system) on the device | [optional] 
**serial** | **String** | The serial number of the device | [optional] 
**status** | **String** | The current status the device (Active, Pending Active, Inactive, Repair | [optional] 
**updated_date** | **Integer** | The date the device log was updated | [optional] 
**user** | [**SimpleUserResource**](SimpleUserResource.md) | The user that owns the device | [optional] 


