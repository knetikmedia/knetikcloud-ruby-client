# SwaggerClient::CommentResource

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**content** | **String** | The comment content of that resource | 
**context** | **String** | The type of object this comment applies to (ex: video, article, etc). Required when passed to /comments | [optional] 
**context_id** | **Integer** | The id of the object this comment applies to.  Required when passed to /comments | [optional] 
**created_date** | **Integer** | The date/time this resource was created in seconds since epoch | [optional] 
**id** | **Integer** | The unique ID for that resource | [optional] 
**summary** | **String** | The summary of that resource | [optional] 
**updated_date** | **Integer** | The date/time this resource was last updated in seconds since epoch | [optional] 
**user** | [**SimpleUserResource**](SimpleUserResource.md) | The user who created the comment | [optional] 


