# KnetikCloudClient::VideoResource

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**active** | **BOOLEAN** | Whether the video is available, based on various factors | [optional] 
**author** | [**SimpleReferenceResourcelong**](SimpleReferenceResourcelong.md) | The original artist of the media | [optional] 
**authored** | **Integer** | The date the media was created as a unix timestamp in seconds | [optional] 
**banned** | **BOOLEAN** | Whether the video has been banned or not | [optional] 
**category** | [**SimpleReferenceResourcestring**](SimpleReferenceResourcestring.md) | The category of the video | 
**comments** | [**Array&lt;CommentResource&gt;**](CommentResource.md) | The comments of the video | [optional] 
**contributors** | [**Array&lt;ContributionResource&gt;**](ContributionResource.md) | Artists that contributed to the creation. See separate endpoint to add to list | [optional] 
**created_date** | **Integer** | The date/time this resource was created in seconds since unix epoch | [optional] 
**embed** | **String** | The country of an embedable version | [optional] 
**extension** | **String** | The file extension of the media file. 1-5 characters | 
**height** | **Integer** | The height of the video in px | 
**id** | **Integer** | The unique ID for that resource | [optional] 
**length** | **Integer** | The length of the video in seconds | 
**location** | **String** | The country of the media. Typically a url. Cannot be blank | 
**long_description** | **String** | The user friendly name of that resource. Defaults to blank string | [optional] 
**mime_type** | **String** | The mime-type of the media | [optional] 
**name** | **String** | The user friendly name of that resource | 
**priority** | **Integer** | The sort order of the video. default: 100 | [optional] 
**privacy** | **String** | The privacy setting. default: private | [optional] 
**published** | **BOOLEAN** | Whether the video has been made public. Default true | [optional] 
**short_description** | **String** | The user friendly name of that resource. Defaults to blank string | [optional] 
**size** | **Integer** | The size of the media. Minimum 0 if supplied | [optional] 
**tags** | **Array&lt;String&gt;** | The tags for the video | [optional] 
**thumbnail** | **String** | The country of a thumbnail version. Typically a url | [optional] 
**updated_date** | **Integer** | The date/time this resource was last updated in seconds since unix epoch | [optional] 
**uploader** | [**SimpleUserResource**](SimpleUserResource.md) | The user the media was uploaded by. May be null for system uploaded media. May only be set to a user other than the current caller if VIDEOS_ADMIN permission. Null will mean the caller is the uploader unless the caller has VIDEOS_ADMIN permission, in which case it will be set to null | [optional] 
**views** | **Integer** | The view count of the video | [optional] 
**width** | **Integer** | The width of the video in px | 


