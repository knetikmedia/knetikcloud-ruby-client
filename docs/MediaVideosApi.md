# KnetikCloudClient::MediaVideosApi

All URIs are relative to *https://sandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_user_to_video_whitelist**](MediaVideosApi.md#add_user_to_video_whitelist) | **POST** /media/videos/{id}/whitelist | Adds a user to a video&#39;s whitelist
[**add_video**](MediaVideosApi.md#add_video) | **POST** /media/videos | Adds a new video in the system
[**add_video_comment**](MediaVideosApi.md#add_video_comment) | **POST** /media/videos/{video_id}/comments | Add a new video comment
[**add_video_contributor**](MediaVideosApi.md#add_video_contributor) | **POST** /media/videos/{video_id}/contributors | Adds a contributor to a video
[**add_video_flag**](MediaVideosApi.md#add_video_flag) | **POST** /media/videos/{video_id}/moderation | Add a new flag
[**add_video_relationships**](MediaVideosApi.md#add_video_relationships) | **POST** /media/videos/{video_id}/related | Adds one or more existing videos as related to this one
[**create_video_disposition**](MediaVideosApi.md#create_video_disposition) | **POST** /media/videos/{video_id}/dispositions | Create a video disposition
[**delete_video**](MediaVideosApi.md#delete_video) | **DELETE** /media/videos/{id} | Deletes a video from the system if no resources are attached to it
[**delete_video_comment**](MediaVideosApi.md#delete_video_comment) | **DELETE** /media/videos/{video_id}/comments/{id} | Delete a video comment
[**delete_video_disposition**](MediaVideosApi.md#delete_video_disposition) | **DELETE** /media/videos/{video_id}/dispositions/{disposition_id} | Delete a video disposition
[**delete_video_flag**](MediaVideosApi.md#delete_video_flag) | **DELETE** /media/videos/{video_id}/moderation | Delete a flag
[**delete_video_relationship**](MediaVideosApi.md#delete_video_relationship) | **DELETE** /media/videos/{video_id}/related/{id} | Delete a video&#39;s relationship
[**get_user_videos**](MediaVideosApi.md#get_user_videos) | **GET** /users/{user_id}/videos | Get user videos
[**get_video**](MediaVideosApi.md#get_video) | **GET** /media/videos/{id} | Loads a specific video details
[**get_video_comments**](MediaVideosApi.md#get_video_comments) | **GET** /media/videos/{video_id}/comments | Returns a page of comments for a video
[**get_video_dispositions**](MediaVideosApi.md#get_video_dispositions) | **GET** /media/videos/{video_id}/dispositions | Returns a page of dispositions for a video
[**get_video_relationships**](MediaVideosApi.md#get_video_relationships) | **GET** /media/videos/{video_id}/related | Returns a page of video relationships
[**get_videos**](MediaVideosApi.md#get_videos) | **GET** /media/videos | Search videos using the documented filters
[**remove_user_from_video_whitelist**](MediaVideosApi.md#remove_user_from_video_whitelist) | **DELETE** /media/videos/{video_id}/whitelist/{id} | Removes a user from a video&#39;s whitelist
[**remove_video_contributor**](MediaVideosApi.md#remove_video_contributor) | **DELETE** /media/videos/{video_id}/contributors/{id} | Removes a contributor from a video
[**update_video**](MediaVideosApi.md#update_video) | **PUT** /media/videos/{id} | Modifies a video&#39;s details
[**update_video_comment**](MediaVideosApi.md#update_video_comment) | **PUT** /media/videos/{video_id}/comments/{id}/content | Update a video comment
[**update_video_relationship**](MediaVideosApi.md#update_video_relationship) | **PUT** /media/videos/{video_id}/related/{id}/relationship_details | Update a video&#39;s relationship details
[**view_video**](MediaVideosApi.md#view_video) | **POST** /media/videos/{id}/views | Increment a video&#39;s view count


# **add_user_to_video_whitelist**
> add_user_to_video_whitelist(id, opts)

Adds a user to a video's whitelist

Whitelisted users can view video regardless of privacy setting.

### Example
```ruby
# load the gem
require 'knetikcloud_client'
# setup authorization
KnetikCloudClient.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
  config.access_token = 'YOUR ACCESS TOKEN'

  # Configure OAuth2 access token for authorization: oauth2_password_grant
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = KnetikCloudClient::MediaVideosApi.new

id = 789 # Integer | The video id

opts = { 
  user_id: KnetikCloudClient::IntWrapper.new # IntWrapper | The user id
}

begin
  #Adds a user to a video's whitelist
  api_instance.add_user_to_video_whitelist(id, opts)
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling MediaVideosApi->add_user_to_video_whitelist: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The video id | 
 **user_id** | [**IntWrapper**](IntWrapper.md)| The user id | [optional] 

### Return type

nil (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **add_video**
> VideoResource add_video(opts)

Adds a new video in the system

### Example
```ruby
# load the gem
require 'knetikcloud_client'
# setup authorization
KnetikCloudClient.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
  config.access_token = 'YOUR ACCESS TOKEN'

  # Configure OAuth2 access token for authorization: oauth2_password_grant
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = KnetikCloudClient::MediaVideosApi.new

opts = { 
  video_resource: KnetikCloudClient::VideoResource.new # VideoResource | The video object
}

begin
  #Adds a new video in the system
  result = api_instance.add_video(opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling MediaVideosApi->add_video: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **video_resource** | [**VideoResource**](VideoResource.md)| The video object | [optional] 

### Return type

[**VideoResource**](VideoResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **add_video_comment**
> CommentResource add_video_comment(video_id, opts)

Add a new video comment

### Example
```ruby
# load the gem
require 'knetikcloud_client'
# setup authorization
KnetikCloudClient.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
  config.access_token = 'YOUR ACCESS TOKEN'

  # Configure OAuth2 access token for authorization: oauth2_password_grant
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = KnetikCloudClient::MediaVideosApi.new

video_id = 56 # Integer | The video id 

opts = { 
  comment_resource: KnetikCloudClient::CommentResource.new # CommentResource | The comment object
}

begin
  #Add a new video comment
  result = api_instance.add_video_comment(video_id, opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling MediaVideosApi->add_video_comment: #{e}"
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

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **add_video_contributor**
> add_video_contributor(video_id, opts)

Adds a contributor to a video

### Example
```ruby
# load the gem
require 'knetikcloud_client'
# setup authorization
KnetikCloudClient.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
  config.access_token = 'YOUR ACCESS TOKEN'

  # Configure OAuth2 access token for authorization: oauth2_password_grant
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = KnetikCloudClient::MediaVideosApi.new

video_id = 789 # Integer | The video id

opts = { 
  contribution_resource: KnetikCloudClient::ContributionResource.new # ContributionResource | The contribution object
}

begin
  #Adds a contributor to a video
  api_instance.add_video_contributor(video_id, opts)
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling MediaVideosApi->add_video_contributor: #{e}"
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

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **add_video_flag**
> FlagResource add_video_flag(video_id, opts)

Add a new flag

### Example
```ruby
# load the gem
require 'knetikcloud_client'
# setup authorization
KnetikCloudClient.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
  config.access_token = 'YOUR ACCESS TOKEN'

  # Configure OAuth2 access token for authorization: oauth2_password_grant
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = KnetikCloudClient::MediaVideosApi.new

video_id = 789 # Integer | The video id

opts = { 
  reason: KnetikCloudClient::StringWrapper.new # StringWrapper | The flag reason
}

begin
  #Add a new flag
  result = api_instance.add_video_flag(video_id, opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling MediaVideosApi->add_video_flag: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **video_id** | **Integer**| The video id | 
 **reason** | [**StringWrapper**](StringWrapper.md)| The flag reason | [optional] 

### Return type

[**FlagResource**](FlagResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **add_video_relationships**
> VideoRelationshipResource add_video_relationships(video_id, opts)

Adds one or more existing videos as related to this one

### Example
```ruby
# load the gem
require 'knetikcloud_client'
# setup authorization
KnetikCloudClient.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
  config.access_token = 'YOUR ACCESS TOKEN'

  # Configure OAuth2 access token for authorization: oauth2_password_grant
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = KnetikCloudClient::MediaVideosApi.new

video_id = 789 # Integer | The video id

opts = { 
  video_relationship_resource: KnetikCloudClient::VideoRelationshipResource.new # VideoRelationshipResource | The video relationship object 
}

begin
  #Adds one or more existing videos as related to this one
  result = api_instance.add_video_relationships(video_id, opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling MediaVideosApi->add_video_relationships: #{e}"
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

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_video_disposition**
> DispositionResource create_video_disposition(video_id, opts)

Create a video disposition

### Example
```ruby
# load the gem
require 'knetikcloud_client'
# setup authorization
KnetikCloudClient.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
  config.access_token = 'YOUR ACCESS TOKEN'

  # Configure OAuth2 access token for authorization: oauth2_password_grant
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = KnetikCloudClient::MediaVideosApi.new

video_id = 56 # Integer | The video id

opts = { 
  disposition_resource: KnetikCloudClient::DispositionResource.new # DispositionResource | The disposition object
}

begin
  #Create a video disposition
  result = api_instance.create_video_disposition(video_id, opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling MediaVideosApi->create_video_disposition: #{e}"
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

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_video**
> delete_video(id)

Deletes a video from the system if no resources are attached to it

### Example
```ruby
# load the gem
require 'knetikcloud_client'
# setup authorization
KnetikCloudClient.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
  config.access_token = 'YOUR ACCESS TOKEN'

  # Configure OAuth2 access token for authorization: oauth2_password_grant
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = KnetikCloudClient::MediaVideosApi.new

id = 789 # Integer | The video id


begin
  #Deletes a video from the system if no resources are attached to it
  api_instance.delete_video(id)
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling MediaVideosApi->delete_video: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The video id | 

### Return type

nil (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_video_comment**
> delete_video_comment(video_id, id)

Delete a video comment

### Example
```ruby
# load the gem
require 'knetikcloud_client'
# setup authorization
KnetikCloudClient.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
  config.access_token = 'YOUR ACCESS TOKEN'

  # Configure OAuth2 access token for authorization: oauth2_password_grant
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = KnetikCloudClient::MediaVideosApi.new

video_id = 789 # Integer | The video id

id = 789 # Integer | The comment id


begin
  #Delete a video comment
  api_instance.delete_video_comment(video_id, id)
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling MediaVideosApi->delete_video_comment: #{e}"
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

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_video_disposition**
> delete_video_disposition(disposition_id)

Delete a video disposition

### Example
```ruby
# load the gem
require 'knetikcloud_client'
# setup authorization
KnetikCloudClient.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
  config.access_token = 'YOUR ACCESS TOKEN'

  # Configure OAuth2 access token for authorization: oauth2_password_grant
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = KnetikCloudClient::MediaVideosApi.new

disposition_id = 789 # Integer | The disposition id


begin
  #Delete a video disposition
  api_instance.delete_video_disposition(disposition_id)
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling MediaVideosApi->delete_video_disposition: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **disposition_id** | **Integer**| The disposition id | 

### Return type

nil (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_video_flag**
> delete_video_flag(video_id)

Delete a flag

### Example
```ruby
# load the gem
require 'knetikcloud_client'
# setup authorization
KnetikCloudClient.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
  config.access_token = 'YOUR ACCESS TOKEN'

  # Configure OAuth2 access token for authorization: oauth2_password_grant
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = KnetikCloudClient::MediaVideosApi.new

video_id = 789 # Integer | The video id


begin
  #Delete a flag
  api_instance.delete_video_flag(video_id)
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling MediaVideosApi->delete_video_flag: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **video_id** | **Integer**| The video id | 

### Return type

nil (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_video_relationship**
> delete_video_relationship(video_id, id)

Delete a video's relationship

### Example
```ruby
# load the gem
require 'knetikcloud_client'
# setup authorization
KnetikCloudClient.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
  config.access_token = 'YOUR ACCESS TOKEN'

  # Configure OAuth2 access token for authorization: oauth2_password_grant
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = KnetikCloudClient::MediaVideosApi.new

video_id = 789 # Integer | The video id

id = 789 # Integer | The relationship id


begin
  #Delete a video's relationship
  api_instance.delete_video_relationship(video_id, id)
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling MediaVideosApi->delete_video_relationship: #{e}"
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

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_user_videos**
> PageResourceVideoResource get_user_videos(user_id, opts)

Get user videos

### Example
```ruby
# load the gem
require 'knetikcloud_client'
# setup authorization
KnetikCloudClient.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
  config.access_token = 'YOUR ACCESS TOKEN'

  # Configure OAuth2 access token for authorization: oauth2_password_grant
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = KnetikCloudClient::MediaVideosApi.new

user_id = 56 # Integer | The user id

opts = { 
  exclude_flagged: true, # BOOLEAN | Skip videos that have been flagged by the current user
  size: 25, # Integer | The number of objects returned per page
  page: 1 # Integer | The number of the page returned, starting with 1
}

begin
  #Get user videos
  result = api_instance.get_user_videos(user_id, opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling MediaVideosApi->get_user_videos: #{e}"
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

[**PageResourceVideoResource**](PageResourceVideoResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_video**
> VideoResource get_video(id)

Loads a specific video details

### Example
```ruby
# load the gem
require 'knetikcloud_client'
# setup authorization
KnetikCloudClient.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
  config.access_token = 'YOUR ACCESS TOKEN'

  # Configure OAuth2 access token for authorization: oauth2_password_grant
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = KnetikCloudClient::MediaVideosApi.new

id = 789 # Integer | The video id


begin
  #Loads a specific video details
  result = api_instance.get_video(id)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling MediaVideosApi->get_video: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The video id | 

### Return type

[**VideoResource**](VideoResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_video_comments**
> PageResourceCommentResource get_video_comments(video_id, opts)

Returns a page of comments for a video

### Example
```ruby
# load the gem
require 'knetikcloud_client'

api_instance = KnetikCloudClient::MediaVideosApi.new

video_id = 56 # Integer | The video id

opts = { 
  size: 25, # Integer | The number of objects returned per page
  page: 1 # Integer | The number of the page returned, starting with 1
}

begin
  #Returns a page of comments for a video
  result = api_instance.get_video_comments(video_id, opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling MediaVideosApi->get_video_comments: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **video_id** | **Integer**| The video id | 
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned, starting with 1 | [optional] [default to 1]

### Return type

[**PageResourceCommentResource**](PageResourceCommentResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_video_dispositions**
> PageResourceDispositionResource get_video_dispositions(video_id, opts)

Returns a page of dispositions for a video

### Example
```ruby
# load the gem
require 'knetikcloud_client'

api_instance = KnetikCloudClient::MediaVideosApi.new

video_id = 56 # Integer | The video id

opts = { 
  size: 25, # Integer | The number of objects returned per page
  page: 1 # Integer | The number of the page returned, starting with 1
}

begin
  #Returns a page of dispositions for a video
  result = api_instance.get_video_dispositions(video_id, opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling MediaVideosApi->get_video_dispositions: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **video_id** | **Integer**| The video id | 
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned, starting with 1 | [optional] [default to 1]

### Return type

[**PageResourceDispositionResource**](PageResourceDispositionResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_video_relationships**
> PageResourceVideoRelationshipResource get_video_relationships(video_id, opts)

Returns a page of video relationships

### Example
```ruby
# load the gem
require 'knetikcloud_client'

api_instance = KnetikCloudClient::MediaVideosApi.new

video_id = 789 # Integer | The video id

opts = { 
  size: 25, # Integer | The number of objects returned per page
  page: 1 # Integer | The number of the page returned, starting with 1
}

begin
  #Returns a page of video relationships
  result = api_instance.get_video_relationships(video_id, opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling MediaVideosApi->get_video_relationships: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **video_id** | **Integer**| The video id | 
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned, starting with 1 | [optional] [default to 1]

### Return type

[**PageResourceVideoRelationshipResource**](PageResourceVideoRelationshipResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_videos**
> PageResourceVideoResource get_videos(opts)

Search videos using the documented filters

### Example
```ruby
# load the gem
require 'knetikcloud_client'

api_instance = KnetikCloudClient::MediaVideosApi.new

opts = { 
  exclude_flagged: true, # BOOLEAN | Skip videos that have been flagged by the current user
  filter_videos_by_uploader: 56, # Integer | Filter for videos by uploader id
  filter_category: "filter_category_example", # String | Filter for videos from a specific category by id
  filter_tagset: "filter_tagset_example", # String | Filter for videos with specified tags (separated by comma)
  filter_videos_by_name: "filter_videos_by_name_example", # String | Filter for videos which name *STARTS* with the given string
  filter_videos_by_contributor: 56, # Integer | Filter for videos with contribution from the artist specified by ID
  filter_videos_by_author: 56, # Integer | Filter for videos with an artist as author specified by ID
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
  result = api_instance.get_videos(opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling MediaVideosApi->get_videos: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exclude_flagged** | **BOOLEAN**| Skip videos that have been flagged by the current user | [optional] [default to true]
 **filter_videos_by_uploader** | **Integer**| Filter for videos by uploader id | [optional] 
 **filter_category** | **String**| Filter for videos from a specific category by id | [optional] 
 **filter_tagset** | **String**| Filter for videos with specified tags (separated by comma) | [optional] 
 **filter_videos_by_name** | **String**| Filter for videos which name *STARTS* with the given string | [optional] 
 **filter_videos_by_contributor** | **Integer**| Filter for videos with contribution from the artist specified by ID | [optional] 
 **filter_videos_by_author** | **Integer**| Filter for videos with an artist as author specified by ID | [optional] 
 **filter_has_author** | **BOOLEAN**| Filter for videos that have an author set if true, or that have no author if false | [optional] 
 **filter_has_uploader** | **BOOLEAN**| Filter for videos that have an uploader set if true, or that have no uploader if false | [optional] 
 **filter_related_to** | **String**| Filter for videos that have designated a particular video as the TO of a relationship. Pattern should match VIDEO_ID or VIDEO_ID:DETAILS to match with a specific details string as well | [optional] 
 **filter_friends** | **BOOLEAN**| Filter for videos uploaded by friends. &#39;true&#39; for friends of the caller (requires user token) or a user id for a specific user&#39;s friends (requires VIDEOS_ADMIN permission) | [optional] 
 **filter_disposition** | **String**| Filter for videos a given user has a given disposition towards. USER_ID:DISPOSITION where USER_ID is the id of the user who has this disposition or &#39;me&#39; for the caller (requires user token for &#39;me&#39;) and DISPOSITION is the name of the disposition. E.G. filter_disposition&#x3D;123:like or filter_disposition&#x3D;me:favorite | [optional] 
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to author:ASC]

### Return type

[**PageResourceVideoResource**](PageResourceVideoResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **remove_user_from_video_whitelist**
> remove_user_from_video_whitelist(video_id, id)

Removes a user from a video's whitelist

Remove the user with the id given in the path from the whitelist of users that can view this video regardless of privacy setting.

### Example
```ruby
# load the gem
require 'knetikcloud_client'
# setup authorization
KnetikCloudClient.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
  config.access_token = 'YOUR ACCESS TOKEN'

  # Configure OAuth2 access token for authorization: oauth2_password_grant
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = KnetikCloudClient::MediaVideosApi.new

video_id = 789 # Integer | The video id

id = 56 # Integer | The user id


begin
  #Removes a user from a video's whitelist
  api_instance.remove_user_from_video_whitelist(video_id, id)
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling MediaVideosApi->remove_user_from_video_whitelist: #{e}"
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

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **remove_video_contributor**
> remove_video_contributor(video_id, id)

Removes a contributor from a video

### Example
```ruby
# load the gem
require 'knetikcloud_client'
# setup authorization
KnetikCloudClient.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
  config.access_token = 'YOUR ACCESS TOKEN'

  # Configure OAuth2 access token for authorization: oauth2_password_grant
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = KnetikCloudClient::MediaVideosApi.new

video_id = 789 # Integer | The video id

id = 56 # Integer | The contributor id


begin
  #Removes a contributor from a video
  api_instance.remove_video_contributor(video_id, id)
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling MediaVideosApi->remove_video_contributor: #{e}"
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

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_video**
> update_video(id, opts)

Modifies a video's details

### Example
```ruby
# load the gem
require 'knetikcloud_client'
# setup authorization
KnetikCloudClient.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
  config.access_token = 'YOUR ACCESS TOKEN'

  # Configure OAuth2 access token for authorization: oauth2_password_grant
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = KnetikCloudClient::MediaVideosApi.new

id = 789 # Integer | The video id

opts = { 
  video_resource: KnetikCloudClient::VideoResource.new # VideoResource | The video object
}

begin
  #Modifies a video's details
  api_instance.update_video(id, opts)
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling MediaVideosApi->update_video: #{e}"
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

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_video_comment**
> update_video_comment(video_id, id, opts)

Update a video comment

### Example
```ruby
# load the gem
require 'knetikcloud_client'
# setup authorization
KnetikCloudClient.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
  config.access_token = 'YOUR ACCESS TOKEN'

  # Configure OAuth2 access token for authorization: oauth2_password_grant
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = KnetikCloudClient::MediaVideosApi.new

video_id = 789 # Integer | The video id

id = 789 # Integer | The comment id

opts = { 
  content: KnetikCloudClient::StringWrapper.new # StringWrapper | The comment content
}

begin
  #Update a video comment
  api_instance.update_video_comment(video_id, id, opts)
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling MediaVideosApi->update_video_comment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **video_id** | **Integer**| The video id | 
 **id** | **Integer**| The comment id | 
 **content** | [**StringWrapper**](StringWrapper.md)| The comment content | [optional] 

### Return type

nil (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_video_relationship**
> update_video_relationship(video_id, relationship_id, opts)

Update a video's relationship details

### Example
```ruby
# load the gem
require 'knetikcloud_client'
# setup authorization
KnetikCloudClient.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
  config.access_token = 'YOUR ACCESS TOKEN'

  # Configure OAuth2 access token for authorization: oauth2_password_grant
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = KnetikCloudClient::MediaVideosApi.new

video_id = 789 # Integer | The video id

relationship_id = 789 # Integer | The relationship id

opts = { 
  details: KnetikCloudClient::StringWrapper.new # StringWrapper | The video relationship details
}

begin
  #Update a video's relationship details
  api_instance.update_video_relationship(video_id, relationship_id, opts)
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling MediaVideosApi->update_video_relationship: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **video_id** | **Integer**| The video id | 
 **relationship_id** | **Integer**| The relationship id | 
 **details** | [**StringWrapper**](StringWrapper.md)| The video relationship details | [optional] 

### Return type

nil (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **view_video**
> view_video(id)

Increment a video's view count

### Example
```ruby
# load the gem
require 'knetikcloud_client'
# setup authorization
KnetikCloudClient.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
  config.access_token = 'YOUR ACCESS TOKEN'

  # Configure OAuth2 access token for authorization: oauth2_password_grant
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = KnetikCloudClient::MediaVideosApi.new

id = 789 # Integer | The video id


begin
  #Increment a video's view count
  api_instance.view_video(id)
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling MediaVideosApi->view_video: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The video id | 

### Return type

nil (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



