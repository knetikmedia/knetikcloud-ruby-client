# SwaggerClient::MediaArtistsApi

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_artist_using_post**](MediaArtistsApi.md#add_artist_using_post) | **POST** /media/artists | Adds a new artist in the system
[**create_artist_template_using_post**](MediaArtistsApi.md#create_artist_template_using_post) | **POST** /media/artists/templates | Create an artist template
[**delete_artist_template_using_delete**](MediaArtistsApi.md#delete_artist_template_using_delete) | **DELETE** /media/artists/templates/{id} | Delete an artist template
[**delete_artist_using_delete**](MediaArtistsApi.md#delete_artist_using_delete) | **DELETE** /media/artists/{id} | Removes an artist from the system IF no resources are attached to it
[**get_artist_template_using_get**](MediaArtistsApi.md#get_artist_template_using_get) | **GET** /media/artists/templates/{id} | Get a single artist template
[**get_artist_templates_using_get**](MediaArtistsApi.md#get_artist_templates_using_get) | **GET** /media/artists/templates | List and search artist templates
[**get_artist_using_get**](MediaArtistsApi.md#get_artist_using_get) | **GET** /media/artists/{id} | Loads a specific artist details
[**search_artists_using_get**](MediaArtistsApi.md#search_artists_using_get) | **GET** /media/artists | Search for artists
[**update_artist_template_using_put**](MediaArtistsApi.md#update_artist_template_using_put) | **PUT** /media/artists/templates/{id} | Update an artist template
[**update_artist_using_put**](MediaArtistsApi.md#update_artist_using_put) | **PUT** /media/artists/{id} | Modifies an artist details


# **add_artist_using_post**
> ArtistResource add_artist_using_post(opts)

Adds a new artist in the system

Adds a new artist in the system. Use specific media contributions endpoint to add contributions

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::MediaArtistsApi.new

opts = { 
  artist_resource: SwaggerClient::ArtistResource.new # ArtistResource | The new artist
}

begin
  #Adds a new artist in the system
  result = api_instance.add_artist_using_post(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MediaArtistsApi->add_artist_using_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **artist_resource** | [**ArtistResource**](ArtistResource.md)| The new artist | [optional] 

### Return type

[**ArtistResource**](ArtistResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_artist_template_using_post**
> TemplateResource create_artist_template_using_post(opts)

Create an artist template

Artist Templates define a type of artist and the properties they have

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::MediaArtistsApi.new

opts = { 
  artist_template_resource: SwaggerClient::TemplateResource.new # TemplateResource | The artist template resource object
}

begin
  #Create an artist template
  result = api_instance.create_artist_template_using_post(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MediaArtistsApi->create_artist_template_using_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **artist_template_resource** | [**TemplateResource**](TemplateResource.md)| The artist template resource object | [optional] 

### Return type

[**TemplateResource**](TemplateResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_artist_template_using_delete**
> delete_artist_template_using_delete(id, opts)

Delete an artist template

If cascade = 'detach', it will force delete the template even if it's attached to other objects

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::MediaArtistsApi.new

id = "id_example" # String | The id of the template

opts = { 
  cascade: "cascade_example" # String | The value needed to delete used templates
}

begin
  #Delete an artist template
  api_instance.delete_artist_template_using_delete(id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MediaArtistsApi->delete_artist_template_using_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the template | 
 **cascade** | **String**| The value needed to delete used templates | [optional] 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_artist_using_delete**
> delete_artist_using_delete(id)

Removes an artist from the system IF no resources are attached to it

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::MediaArtistsApi.new

id = 789 # Integer | The artist id


begin
  #Removes an artist from the system IF no resources are attached to it
  api_instance.delete_artist_using_delete(id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MediaArtistsApi->delete_artist_using_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The artist id | 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_artist_template_using_get**
> TemplateResource get_artist_template_using_get(id)

Get a single artist template

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::MediaArtistsApi.new

id = "id_example" # String | The id of the template


begin
  #Get a single artist template
  result = api_instance.get_artist_template_using_get(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MediaArtistsApi->get_artist_template_using_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the template | 

### Return type

[**TemplateResource**](TemplateResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_artist_templates_using_get**
> PageResourceTemplateResource get_artist_templates_using_get(opts)

List and search artist templates

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::MediaArtistsApi.new

opts = { 
  size: 25, # Integer | The number of objects returned per page
  page: 1, # Integer | The number of the page returned, starting with 1
  order: "id:ASC" # String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
}

begin
  #List and search artist templates
  result = api_instance.get_artist_templates_using_get(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MediaArtistsApi->get_artist_templates_using_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**PageResourceTemplateResource**](PageResourceTemplateResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_artist_using_get**
> ArtistResource get_artist_using_get(id, opts)

Loads a specific artist details

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::MediaArtistsApi.new

id = 789 # Integer | The artist id

opts = { 
  show_contributions: 56 # Integer | The number of contributions to show fetch
}

begin
  #Loads a specific artist details
  result = api_instance.get_artist_using_get(id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MediaArtistsApi->get_artist_using_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The artist id | 
 **show_contributions** | **Integer**| The number of contributions to show fetch | [optional] 

### Return type

[**ArtistResource**](ArtistResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **search_artists_using_get**
> PageResourceArtistResource search_artists_using_get(opts)

Search for artists

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::MediaArtistsApi.new

opts = { 
  filter_artists_by_name: "filter_artists_by_name_example", # String | Filter for artists which name *STARTS* with the given string
  size: 25, # Integer | The number of objects returned per page
  page: 1, # Integer | The number of the page returned, starting with 1
  order: "id:ASC" # String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
}

begin
  #Search for artists
  result = api_instance.search_artists_using_get(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MediaArtistsApi->search_artists_using_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_artists_by_name** | **String**| Filter for artists which name *STARTS* with the given string | [optional] 
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**PageResourceArtistResource**](PageResourceArtistResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_artist_template_using_put**
> update_artist_template_using_put(id, opts)

Update an artist template

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::MediaArtistsApi.new

id = "id_example" # String | The id of the template

opts = { 
  artist_template_resource: SwaggerClient::TemplateResource.new # TemplateResource | The artist template resource object
}

begin
  #Update an artist template
  api_instance.update_artist_template_using_put(id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MediaArtistsApi->update_artist_template_using_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the template | 
 **artist_template_resource** | [**TemplateResource**](TemplateResource.md)| The artist template resource object | [optional] 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_artist_using_put**
> update_artist_using_put(id, opts)

Modifies an artist details

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::MediaArtistsApi.new

id = 789 # Integer | The artist id

opts = { 
  artist_resource: SwaggerClient::ArtistResource.new # ArtistResource | The new artist
}

begin
  #Modifies an artist details
  api_instance.update_artist_using_put(id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MediaArtistsApi->update_artist_using_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The artist id | 
 **artist_resource** | [**ArtistResource**](ArtistResource.md)| The new artist | [optional] 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



