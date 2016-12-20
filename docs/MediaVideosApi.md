# SwaggerClient::MediaVideosApi

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_comment_using_post1**](MediaVideosApi.md#add_comment_using_post1) | **POST** /media/videos/{video_id}/comments | Add a new video comment
[**add_contributor_using_post**](MediaVideosApi.md#add_contributor_using_post) | **POST** /media/videos/{video_id}/contributors | Adds a contributor to a video
[**add_disposition_using_post1**](MediaVideosApi.md#add_disposition_using_post1) | **POST** /media/videos/{video_id}/dispositions | Add a new Video disposition
[**add_flag_using_post**](MediaVideosApi.md#add_flag_using_post) | **POST** /media/videos/{video_id}/moderation | Add a new flag
[**add_related_using_post**](MediaVideosApi.md#add_related_using_post) | **POST** /media/videos/{video_id}/related | Adds one or more existing videos as related to this one
[**add_video_using_post**](MediaVideosApi.md#add_video_using_post) | **POST** /media/videos | Adds a new video in the system
[**add_whitelist_using_post**](MediaVideosApi.md#add_whitelist_using_post) | **POST** /media/videos/{id}/whitelist | Adds a user to a video&#39;s whitelist
[**delete_comment_using_delete1**](MediaVideosApi.md#delete_comment_using_delete1) | **DELETE** /media/videos/{video_id}/comments/{id} | Delete a video comment
[**delete_disposition_using_delete1**](MediaVideosApi.md#delete_disposition_using_delete1) | **DELETE** /media/videos/{video_id}/dispositions/{disposition_id} | Delete a video comment
[**delete_flag_using_delete**](MediaVideosApi.md#delete_flag_using_delete) | **DELETE** /media/videos/{video_id}/moderation | Delete a flag
[**delete_relationship_using_delete1**](MediaVideosApi.md#delete_relationship_using_delete1) | **DELETE** /media/videos/{video_id}/related/{id} | Delete a video&#39;s relationship
[**delete_video_using_delete**](MediaVideosApi.md#delete_video_using_delete) | **DELETE** /media/videos/{id} | Removes a video from the system if no resources are attached to it
[**get_comments_using_get1**](MediaVideosApi.md#get_comments_using_get1) | **GET** /media/videos/{video_id}/comments | Returns a page of comments for a video
[**get_dispositions_using_get1**](MediaVideosApi.md#get_dispositions_using_get1) | **GET** /media/videos/{video_id}/dispositions | Returns a page of dispositions for a video
[**get_related_using_get**](MediaVideosApi.md#get_related_using_get) | **GET** /media/videos/{video_id}/related | Returns a page of video relationships
[**get_user_videos_using_get**](MediaVideosApi.md#get_user_videos_using_get) | **GET** /users/{user_id}/videos | Get user videos
[**get_video_using_get**](MediaVideosApi.md#get_video_using_get) | **GET** /media/videos/{id} | Loads a specific video details
[**remove_contributor_using_delete**](MediaVideosApi.md#remove_contributor_using_delete) | **DELETE** /media/videos/{video_id}/contributors/{id} | Removes a contributor from a video
[**remove_whitelist_using_delete**](MediaVideosApi.md#remove_whitelist_using_delete) | **DELETE** /media/videos/{video_id}/whitelist/{id} | Removes a user from a video&#39;s whitelist
[**search_videos_using_get**](MediaVideosApi.md#search_videos_using_get) | **GET** /media/videos | Search videos using the documented filters
[**update_comment_using_put1**](MediaVideosApi.md#update_comment_using_put1) | **PUT** /media/videos/{video_id}/comments/{id}/content | Update video comment content 
[**update_relationship_using_put1**](MediaVideosApi.md#update_relationship_using_put1) | **PUT** /media/videos/{video_id}/related/{id}/relationship_details | Update a video&#39;s relationship details
[**update_video_using_put**](MediaVideosApi.md#update_video_using_put) | **PUT** /media/videos/{id} | Modifies a video&#39;s details
[**view_video_using_post**](MediaVideosApi.md#view_video_using_post) | **POST** /media/videos/{id}/views | Increment a video&#39;s view count


# **add_comment_using_post1**
> CommentResource add_comment_using_post1(video_id, opts)

Add a new video comment

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::MediaVideosApi.new

video_id = 56 # Integer | The video id 

opts = { 
  comment_resource: SwaggerClient::CommentResource.new # CommentResource | The comment object
}

begin
  #Add a new video comment
  result = api_instance.add_comment_using_post1(video_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MediaVideosApi->add_comment_using_post1: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **video_id** | **Integer**| The video id  | 
 **comment_resource** | [**CommentResource**](CommentResource.md)| The comment object | [optional] 

### Return type

[**CommentResource**](CommentResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **add_contributor_using_post**
> add_contributor_using_post(video_id, opts)

Adds a contributor to a video

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::MediaVideosApi.new

video_id = 789 # Integer | The video id

opts = { 
  contribution_resource: SwaggerClient::ContributionResource.new # ContributionResource | The contribution object
}

begin
  #Adds a contributor to a video
  api_instance.add_contributor_using_post(video_id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MediaVideosApi->add_contributor_using_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **video_id** | **Integer**| The video id | 
 **contribution_resource** | [**ContributionResource**](ContributionResource.md)| The contribution object | [optional] 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **add_disposition_using_post1**
> DispositionResource add_disposition_using_post1(video_id, opts)

Add a new Video disposition

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::MediaVideosApi.new

video_id = 56 # Integer | The video id

opts = { 
  disposition_resource: SwaggerClient::DispositionResource.new # DispositionResource | The disposition object
}

begin
  #Add a new Video disposition
  result = api_instance.add_disposition_using_post1(video_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MediaVideosApi->add_disposition_using_post1: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **video_id** | **Integer**| The video id | 
 **disposition_resource** | [**DispositionResource**](DispositionResource.md)| The disposition object | [optional] 

### Return type

[**DispositionResource**](DispositionResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **add_flag_using_post**
> add_flag_using_post(video_id, opts)

Add a new flag

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::MediaVideosApi.new

video_id = 789 # Integer | The video id

opts = { 
  reason: "reason_example" # String | The flag reason
}

begin
  #Add a new flag
  api_instance.add_flag_using_post(video_id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MediaVideosApi->add_flag_using_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **video_id** | **Integer**| The video id | 
 **reason** | **String**| The flag reason | [optional] 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **add_related_using_post**
> VideoRelationshipResource add_related_using_post(video_id, opts)

Adds one or more existing videos as related to this one

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::MediaVideosApi.new

video_id = 789 # Integer | The video id

opts = { 
  video_relationship_resource: SwaggerClient::VideoRelationshipResource.new # VideoRelationshipResource | The video relationship object 
}

begin
  #Adds one or more existing videos as related to this one
  result = api_instance.add_related_using_post(video_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MediaVideosApi->add_related_using_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **video_id** | **Integer**| The video id | 
 **video_relationship_resource** | [**VideoRelationshipResource**](VideoRelationshipResource.md)| The video relationship object  | [optional] 

### Return type

[**VideoRelationshipResource**](VideoRelationshipResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **add_video_using_post**
> VideoResource add_video_using_post(opts)

Adds a new video in the system

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::MediaVideosApi.new

opts = { 
  video_resource: SwaggerClient::VideoResource.new # VideoResource | The video object
}

begin
  #Adds a new video in the system
  result = api_instance.add_video_using_post(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MediaVideosApi->add_video_using_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **video_resource** | [**VideoResource**](VideoResource.md)| The video object | [optional] 

### Return type

[**VideoResource**](VideoResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **add_whitelist_using_post**
> add_whitelist_using_post(id, opts)

Adds a user to a video's whitelist

Whitelisted users can view video regardless of privacy setting.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::MediaVideosApi.new

id = 789 # Integer | The video id

opts = { 
  user_id: 56 # Integer | The user id
}

begin
  #Adds a user to a video's whitelist
  api_instance.add_whitelist_using_post(id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MediaVideosApi->add_whitelist_using_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The video id | 
 **user_id** | **Integer**| The user id | [optional] 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_comment_using_delete1**
> delete_comment_using_delete1(video_id, id)

Delete a video comment

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::MediaVideosApi.new

video_id = 789 # Integer | The video id

id = 789 # Integer | The comment id


begin
  #Delete a video comment
  api_instance.delete_comment_using_delete1(video_id, id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MediaVideosApi->delete_comment_using_delete1: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **video_id** | **Integer**| The video id | 
 **id** | **Integer**| The comment id | 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_disposition_using_delete1**
> delete_disposition_using_delete1(disposition_id)

Delete a video comment

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::MediaVideosApi.new

disposition_id = 789 # Integer | The disposition id


begin
  #Delete a video comment
  api_instance.delete_disposition_using_delete1(disposition_id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MediaVideosApi->delete_disposition_using_delete1: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **disposition_id** | **Integer**| The disposition id | 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_flag_using_delete**
> delete_flag_using_delete(video_id)

Delete a flag

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::MediaVideosApi.new

video_id = 789 # Integer | The video id


begin
  #Delete a flag
  api_instance.delete_flag_using_delete(video_id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MediaVideosApi->delete_flag_using_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **video_id** | **Integer**| The video id | 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_relationship_using_delete1**
> delete_relationship_using_delete1(video_id, id)

Delete a video's relationship

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::MediaVideosApi.new

video_id = 789 # Integer | The video id

id = 789 # Integer | The relationship id


begin
  #Delete a video's relationship
  api_instance.delete_relationship_using_delete1(video_id, id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MediaVideosApi->delete_relationship_using_delete1: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **video_id** | **Integer**| The video id | 
 **id** | **Integer**| The relationship id | 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_video_using_delete**
> delete_video_using_delete(id)

Removes a video from the system if no resources are attached to it

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::MediaVideosApi.new

id = 789 # Integer | The video id


begin
  #Removes a video from the system if no resources are attached to it
  api_instance.delete_video_using_delete(id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MediaVideosApi->delete_video_using_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The video id | 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_comments_using_get1**
> PageCommentResource get_comments_using_get1(video_id, opts)

Returns a page of comments for a video

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::MediaVideosApi.new

video_id = 56 # Integer | The video id

opts = { 
  size: 25, # Integer | The number of objects returned per page
  page: 1 # Integer | The number of the page returned, starting with 1
}

begin
  #Returns a page of comments for a video
  result = api_instance.get_comments_using_get1(video_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MediaVideosApi->get_comments_using_get1: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **video_id** | **Integer**| The video id | 
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned, starting with 1 | [optional] [default to 1]

### Return type

[**PageCommentResource**](PageCommentResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_dispositions_using_get1**
> PageDispositionResource get_dispositions_using_get1(video_id, opts)

Returns a page of dispositions for a video

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::MediaVideosApi.new

video_id = 56 # Integer | The video id

opts = { 
  size: 25, # Integer | The number of objects returned per page
  page: 1 # Integer | The number of the page returned, starting with 1
}

begin
  #Returns a page of dispositions for a video
  result = api_instance.get_dispositions_using_get1(video_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MediaVideosApi->get_dispositions_using_get1: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **video_id** | **Integer**| The video id | 
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned, starting with 1 | [optional] [default to 1]

### Return type

[**PageDispositionResource**](PageDispositionResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_related_using_get**
> PageVideoRelationshipResource get_related_using_get(video_id, opts)

Returns a page of video relationships

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::MediaVideosApi.new

video_id = 789 # Integer | The video id

opts = { 
  size: 25, # Integer | The number of objects returned per page
  page: 1 # Integer | The number of the page returned, starting with 1
}

begin
  #Returns a page of video relationships
  result = api_instance.get_related_using_get(video_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MediaVideosApi->get_related_using_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **video_id** | **Integer**| The video id | 
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned, starting with 1 | [optional] [default to 1]

### Return type

[**PageVideoRelationshipResource**](PageVideoRelationshipResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_user_videos_using_get**
> PageVideoResource get_user_videos_using_get(user_id, opts)

Get user videos

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::MediaVideosApi.new

user_id = 56 # Integer | The user id

opts = { 
  exclude_flagged: true, # BOOLEAN | Skip videos that have been flagged by the current user
  size: 25, # Integer | The number of objects returned per page
  page: 1 # Integer | The number of the page returned, starting with 1
}

begin
  #Get user videos
  result = api_instance.get_user_videos_using_get(user_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MediaVideosApi->get_user_videos_using_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **Integer**| The user id | 
 **exclude_flagged** | **BOOLEAN**| Skip videos that have been flagged by the current user | [optional] [default to true]
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned, starting with 1 | [optional] [default to 1]

### Return type

[**PageVideoResource**](PageVideoResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_video_using_get**
> VideoResource get_video_using_get(id)

Loads a specific video details

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::MediaVideosApi.new

id = 789 # Integer | The video id


begin
  #Loads a specific video details
  result = api_instance.get_video_using_get(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MediaVideosApi->get_video_using_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The video id | 

### Return type

[**VideoResource**](VideoResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **remove_contributor_using_delete**
> remove_contributor_using_delete(video_id, id)

Removes a contributor from a video

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::MediaVideosApi.new

video_id = 789 # Integer | The video id

id = 56 # Integer | The contributor id


begin
  #Removes a contributor from a video
  api_instance.remove_contributor_using_delete(video_id, id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MediaVideosApi->remove_contributor_using_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **video_id** | **Integer**| The video id | 
 **id** | **Integer**| The contributor id | 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **remove_whitelist_using_delete**
> remove_whitelist_using_delete(video_id, id)

Removes a user from a video's whitelist

Remove the user with the id given in the path from the whitelist of users that can view this video regardless of privacy setting.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::MediaVideosApi.new

video_id = 789 # Integer | The video id

id = 56 # Integer | The user id


begin
  #Removes a user from a video's whitelist
  api_instance.remove_whitelist_using_delete(video_id, id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MediaVideosApi->remove_whitelist_using_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **video_id** | **Integer**| The video id | 
 **id** | **Integer**| The user id | 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **search_videos_using_get**
> PageVideoResource search_videos_using_get(opts)

Search videos using the documented filters

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::MediaVideosApi.new

opts = { 
  exclude_flagged: true, # BOOLEAN | Skip videos that have been flagged by the current user
  filter_videos_by_uploader: "filter_videos_by_uploader_example", # String | Filter for videos by uploader id
  filter_category: "filter_category_example", # String | Filter for videos from a specific category by id
  filter_tagset: "filter_tagset_example", # String | Filter for videos with specified tags (separated by comma)
  filter_videos_by_name: "filter_videos_by_name_example", # String | Filter for videos which name *STARTS* with the given string
  filter_videos_by_contributor: "filter_videos_by_contributor_example", # String | Filter for videos with contribution from the artist specified by ID
  filter_videos_by_author: "filter_videos_by_author_example", # String | Filter for videos with an artist as author specified by ID
  filter_has_author: true, # BOOLEAN | Filter for videos that have an author set if true, or that have no author if false
  filter_has_uploader: true, # BOOLEAN | Filter for videos that have an uploader set if true, or that have no uploader if false
  filter_related_to: "filter_related_to_example", # String | Filter for videos that have designated a particular video as the TO of a relationship. Pattern should match VIDEO_ID or VIDEO_ID:DETAILS to match with a specific details string as well
  filter_friends: true, # BOOLEAN | Filter for videos uploaded by friends. 'true' for friends of the caller (requires user token) or a user id for a specific user's friends (requires VIDEOS_ADMIN permission)
  filter_disposition: "filter_disposition_example", # String | Filter for videos a given user has a given disposition towards. USER_ID:DISPOSITION where USER_ID is the id of the user who has this disposition or 'me' for the caller (requires user token for 'me') and DISPOSITION is the name of the disposition. E.G. filter_disposition=123:like or filter_disposition=me:favorite
  size: 25, # Integer | The number of objects returned per page
  page: 1, # Integer | The number of the page returned, starting with 1
  order: "author:ASC" # String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
}

begin
  #Search videos using the documented filters
  result = api_instance.search_videos_using_get(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MediaVideosApi->search_videos_using_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exclude_flagged** | **BOOLEAN**| Skip videos that have been flagged by the current user | [optional] [default to true]
 **filter_videos_by_uploader** | **String**| Filter for videos by uploader id | [optional] 
 **filter_category** | **String**| Filter for videos from a specific category by id | [optional] 
 **filter_tagset** | **String**| Filter for videos with specified tags (separated by comma) | [optional] 
 **filter_videos_by_name** | **String**| Filter for videos which name *STARTS* with the given string | [optional] 
 **filter_videos_by_contributor** | **String**| Filter for videos with contribution from the artist specified by ID | [optional] 
 **filter_videos_by_author** | **String**| Filter for videos with an artist as author specified by ID | [optional] 
 **filter_has_author** | **BOOLEAN**| Filter for videos that have an author set if true, or that have no author if false | [optional] 
 **filter_has_uploader** | **BOOLEAN**| Filter for videos that have an uploader set if true, or that have no uploader if false | [optional] 
 **filter_related_to** | **String**| Filter for videos that have designated a particular video as the TO of a relationship. Pattern should match VIDEO_ID or VIDEO_ID:DETAILS to match with a specific details string as well | [optional] 
 **filter_friends** | **BOOLEAN**| Filter for videos uploaded by friends. &#39;true&#39; for friends of the caller (requires user token) or a user id for a specific user&#39;s friends (requires VIDEOS_ADMIN permission) | [optional] 
 **filter_disposition** | **String**| Filter for videos a given user has a given disposition towards. USER_ID:DISPOSITION where USER_ID is the id of the user who has this disposition or &#39;me&#39; for the caller (requires user token for &#39;me&#39;) and DISPOSITION is the name of the disposition. E.G. filter_disposition&#x3D;123:like or filter_disposition&#x3D;me:favorite | [optional] 
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to author:ASC]

### Return type

[**PageVideoResource**](PageVideoResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_comment_using_put1**
> update_comment_using_put1(video_id, id, opts)

Update video comment content 

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::MediaVideosApi.new

video_id = 789 # Integer | The video id

id = 789 # Integer | The comment id

opts = { 
  content: "content_example" # String | The comment content
}

begin
  #Update video comment content 
  api_instance.update_comment_using_put1(video_id, id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MediaVideosApi->update_comment_using_put1: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **video_id** | **Integer**| The video id | 
 **id** | **Integer**| The comment id | 
 **content** | **String**| The comment content | [optional] 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_relationship_using_put1**
> update_relationship_using_put1(video_id, relationship_id, opts)

Update a video's relationship details

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::MediaVideosApi.new

video_id = 789 # Integer | The video id

relationship_id = 789 # Integer | The relationship id

opts = { 
  details: "details_example" # String | The video relationship details
}

begin
  #Update a video's relationship details
  api_instance.update_relationship_using_put1(video_id, relationship_id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MediaVideosApi->update_relationship_using_put1: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **video_id** | **Integer**| The video id | 
 **relationship_id** | **Integer**| The relationship id | 
 **details** | **String**| The video relationship details | [optional] 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_video_using_put**
> update_video_using_put(id, opts)

Modifies a video's details

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::MediaVideosApi.new

id = 789 # Integer | The video id

opts = { 
  video_resource: SwaggerClient::VideoResource.new # VideoResource | The video object
}

begin
  #Modifies a video's details
  api_instance.update_video_using_put(id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MediaVideosApi->update_video_using_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The video id | 
 **video_resource** | [**VideoResource**](VideoResource.md)| The video object | [optional] 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **view_video_using_post**
> view_video_using_post(id)

Increment a video's view count

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::MediaVideosApi.new

id = 789 # Integer | The video id


begin
  #Increment a video's view count
  api_instance.view_video_using_post(id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MediaVideosApi->view_video_using_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The video id | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



