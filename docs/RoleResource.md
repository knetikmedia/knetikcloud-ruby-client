# SwaggerClient::RoleResource

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**client_count** | **Integer** | The number of clients this role is assigned to | [optional] 
**created_date** | **Integer** | The date the role was added. Unix timestamp in seconds | [optional] 
**locked** | **BOOLEAN** | Whether a role is locked from being deleted | [optional] 
**name** | **String** | The name of the role used for display purposes | [optional] 
**role** | **String** | The keyword that defines the role | [optional] 
**role_permission** | [**Array&lt;PermissionResource&gt;**](PermissionResource.md) | The list of permissions this role has | [optional] 
**user_count** | **Integer** | The number of users this role is assigned to | [optional] 


