# SwaggerClient::DispositionResource

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**context** | **String** | The context of that resource. Required when passed to /dispositions rather than context specific endpoint | [optional] 
**context_id** | **String** | The context_id of that resource. Required when passed to /dispositions rather than context specific endpoint | [optional] 
**created_date** | **Integer** | The date/time this resource was created in seconds since unix epoch | [optional] 
**id** | **Integer** | The unique ID for that resource | [optional] 
**name** | **String** | The name of the disposition, 1-20 characters. (ex: like/dislike/favorite, etc) | 
**user** | [**SimpleUserResource**](SimpleUserResource.md) | The user | [optional] 


