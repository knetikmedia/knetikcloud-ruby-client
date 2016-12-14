# SwaggerClient::ContentCommentsApi

All URIs are relative to *https://devsandbox.knetikcloud.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_comment_using_post**](ContentCommentsApi.md#add_comment_using_post) | **POST** /comments | Add a new comment
[**delete_comment_using_delete**](ContentCommentsApi.md#delete_comment_using_delete) | **DELETE** /comments/{id} | Delete a comment
[**get_comment_using_get**](ContentCommentsApi.md#get_comment_using_get) | **GET** /comments/{id} | Returns a comment by comment id
[**get_comments_using_get**](ContentCommentsApi.md#get_comments_using_get) | **GET** /comments | Returns a page of comments
[**search_comments_using_post**](ContentCommentsApi.md#search_comments_using_post) | **POST** /comments/search | Search the comment index
[**update_comment_using_put**](ContentCommentsApi.md#update_comment_using_put) | **PUT** /comments/{id}/content | Update comment content


# **add_comment_using_post**
> CommentResource add_comment_using_post(opts)

Add a new comment

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ContentCommentsApi.new

opts = { 
  comment_resource: SwaggerClient::CommentResource.new # CommentResource | The comment to be added
}

begin
  #Add a new comment
  result = api_instance.add_comment_using_post(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ContentCommentsApi->add_comment_using_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **comment_resource** | [**CommentResource**](CommentResource.md)| The comment to be added | [optional] 

### Return type

[**CommentResource**](CommentResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **delete_comment_using_delete**
> delete_comment_using_delete(id)

Delete a comment

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ContentCommentsApi.new

id = 789 # Integer | The comment id


begin
  #Delete a comment
  api_instance.delete_comment_using_delete(id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ContentCommentsApi->delete_comment_using_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The comment id | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **get_comment_using_get**
> CommentResource get_comment_using_get(id)

Returns a comment by comment id

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ContentCommentsApi.new

id = 789 # Integer | The comment id


begin
  #Returns a comment by comment id
  result = api_instance.get_comment_using_get(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ContentCommentsApi->get_comment_using_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The comment id | 

### Return type

[**CommentResource**](CommentResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **get_comments_using_get**
> PageCommentResource get_comments_using_get(context, context_id, opts)

Returns a page of comments

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ContentCommentsApi.new

context = "context_example" # String | Get comments by context type

context_id = 56 # Integer | Get comments by context id

opts = { 
  size: 25, # Integer | The number of objects returned per page
  page: 1 # Integer | The number of the page returned, starting with 1
}

begin
  #Returns a page of comments
  result = api_instance.get_comments_using_get(context, context_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ContentCommentsApi->get_comments_using_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **context** | **String**| Get comments by context type | 
 **context_id** | **Integer**| Get comments by context id | 
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned, starting with 1 | [optional] [default to 1]

### Return type

[**PageCommentResource**](PageCommentResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **search_comments_using_post**
> CommentSearch search_comments_using_post(opts)

Search the comment index

The body is an ElasticSearch query json. Please see their <a href='https://www.elastic.co/guide/en/elasticsearch/reference/current/index.html'>documentation</a> for details on the format and search options

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ContentCommentsApi.new

opts = { 
  query: nil, # Object | The search query
  size: 25, # Integer | The number of objects returned per page
  page: 1 # Integer | The number of the page returned, starting with 1
}

begin
  #Search the comment index
  result = api_instance.search_comments_using_post(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ContentCommentsApi->search_comments_using_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **Object**| The search query | [optional] 
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned, starting with 1 | [optional] [default to 1]

### Return type

[**CommentSearch**](CommentSearch.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **update_comment_using_put**
> update_comment_using_put(id, opts)

Update comment content

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ContentCommentsApi.new

id = 789 # Integer | The comment id

opts = { 
  content: "content_example" # String | The comment content
}

begin
  #Update comment content
  api_instance.update_comment_using_put(id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ContentCommentsApi->update_comment_using_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The comment id | 
 **content** | **String**| The comment content | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



