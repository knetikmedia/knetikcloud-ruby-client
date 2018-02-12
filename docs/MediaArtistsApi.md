# KnetikCloudClient::MediaArtistsApi

All URIs are relative to *https://sandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_artist**](MediaArtistsApi.md#add_artist) | **POST** /media/artists | Adds a new artist in the system
[**create_artist_template**](MediaArtistsApi.md#create_artist_template) | **POST** /media/artists/templates | Create an artist template
[**delete_artist**](MediaArtistsApi.md#delete_artist) | **DELETE** /media/artists/{id} | Removes an artist from the system IF no resources are attached to it
[**delete_artist_template**](MediaArtistsApi.md#delete_artist_template) | **DELETE** /media/artists/templates/{id} | Delete an artist template
[**get_artist**](MediaArtistsApi.md#get_artist) | **GET** /media/artists/{id} | Loads a specific artist details
[**get_artist_template**](MediaArtistsApi.md#get_artist_template) | **GET** /media/artists/templates/{id} | Get a single artist template
[**get_artist_templates**](MediaArtistsApi.md#get_artist_templates) | **GET** /media/artists/templates | List and search artist templates
[**get_artists**](MediaArtistsApi.md#get_artists) | **GET** /media/artists | Search for artists
[**update_artist**](MediaArtistsApi.md#update_artist) | **PUT** /media/artists/{id} | Modifies an artist details
[**update_artist_template**](MediaArtistsApi.md#update_artist_template) | **PUT** /media/artists/templates/{id} | Update an artist template


# **add_artist**
> ArtistResource add_artist(opts)

Adds a new artist in the system

Adds a new artist in the system. Use specific media contributions endpoint to add contributions. <br><br><b>Permissions Needed:</b> ANY

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

api_instance = KnetikCloudClient::MediaArtistsApi.new

opts = { 
  artist_resource: KnetikCloudClient::ArtistResource.new # ArtistResource | The new artist
}

begin
  #Adds a new artist in the system
  result = api_instance.add_artist(opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling MediaArtistsApi->add_artist: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **artist_resource** | [**ArtistResource**](ArtistResource.md)| The new artist | [optional] 

### Return type

[**ArtistResource**](ArtistResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_artist_template**
> TemplateResource create_artist_template(opts)

Create an artist template

Artist Templates define a type of artist and the properties they have. <br><br><b>Permissions Needed:</b> TEMPLATE_ADMIN

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

api_instance = KnetikCloudClient::MediaArtistsApi.new

opts = { 
  artist_template_resource: KnetikCloudClient::TemplateResource.new # TemplateResource | The artist template resource object
}

begin
  #Create an artist template
  result = api_instance.create_artist_template(opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling MediaArtistsApi->create_artist_template: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **artist_template_resource** | [**TemplateResource**](TemplateResource.md)| The artist template resource object | [optional] 

### Return type

[**TemplateResource**](TemplateResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_artist**
> delete_artist(id)

Removes an artist from the system IF no resources are attached to it

<b>Permissions Needed:</b> ARTISTS_ADMIN

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

api_instance = KnetikCloudClient::MediaArtistsApi.new

id = 789 # Integer | The artist id


begin
  #Removes an artist from the system IF no resources are attached to it
  api_instance.delete_artist(id)
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling MediaArtistsApi->delete_artist: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The artist id | 

### Return type

nil (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **delete_artist_template**
> delete_artist_template(id, opts)

Delete an artist template

If cascade = 'detach', it will force delete the template even if it's attached to other objects. <br><br><b>Permissions Needed:</b> TEMPLATE_ADMIN

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

api_instance = KnetikCloudClient::MediaArtistsApi.new

id = "id_example" # String | The id of the template

opts = { 
  cascade: "cascade_example" # String | The value needed to delete used templates
}

begin
  #Delete an artist template
  api_instance.delete_artist_template(id, opts)
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling MediaArtistsApi->delete_artist_template: #{e}"
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

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_artist**
> ArtistResource get_artist(id, opts)

Loads a specific artist details

<b>Permissions Needed:</b> ANY

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

api_instance = KnetikCloudClient::MediaArtistsApi.new

id = 789 # Integer | The artist id

opts = { 
  show_contributions: 56 # Integer | The number of contributions to show fetch
}

begin
  #Loads a specific artist details
  result = api_instance.get_artist(id, opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling MediaArtistsApi->get_artist: #{e}"
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

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_artist_template**
> TemplateResource get_artist_template(id)

Get a single artist template

<b>Permissions Needed:</b> TEMPLATE_ADMIN or ARTISTS_ADMIN

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

api_instance = KnetikCloudClient::MediaArtistsApi.new

id = "id_example" # String | The id of the template


begin
  #Get a single artist template
  result = api_instance.get_artist_template(id)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling MediaArtistsApi->get_artist_template: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the template | 

### Return type

[**TemplateResource**](TemplateResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_artist_templates**
> PageResourceTemplateResource get_artist_templates(opts)

List and search artist templates

<b>Permissions Needed:</b> TEMPLATE_ADMIN or ARTISTS_ADMIN

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

api_instance = KnetikCloudClient::MediaArtistsApi.new

opts = { 
  size: 25, # Integer | The number of objects returned per page
  page: 1, # Integer | The number of the page returned, starting with 1
  order: "id:ASC" # String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
}

begin
  #List and search artist templates
  result = api_instance.get_artist_templates(opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling MediaArtistsApi->get_artist_templates: #{e}"
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

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_artists**
> PageResourceArtistResource get_artists(opts)

Search for artists

<b>Permissions Needed:</b> ANY

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

api_instance = KnetikCloudClient::MediaArtistsApi.new

opts = { 
  filter_artists_by_name: "filter_artists_by_name_example", # String | Filter for artists which name *STARTS* with the given string
  size: 25, # Integer | The number of objects returned per page
  page: 1, # Integer | The number of the page returned, starting with 1
  order: "id:ASC" # String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
}

begin
  #Search for artists
  result = api_instance.get_artists(opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling MediaArtistsApi->get_artists: #{e}"
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

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_artist**
> update_artist(id, opts)

Modifies an artist details

<b>Permissions Needed:</b> ARTISTS_ADMIN

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

api_instance = KnetikCloudClient::MediaArtistsApi.new

id = 789 # Integer | The artist id

opts = { 
  artist_resource: KnetikCloudClient::ArtistResource.new # ArtistResource | The new artist
}

begin
  #Modifies an artist details
  api_instance.update_artist(id, opts)
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling MediaArtistsApi->update_artist: #{e}"
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

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_artist_template**
> TemplateResource update_artist_template(id, opts)

Update an artist template

<b>Permissions Needed:</b> TEMPLATE_ADMIN

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

api_instance = KnetikCloudClient::MediaArtistsApi.new

id = "id_example" # String | The id of the template

opts = { 
  artist_template_resource: KnetikCloudClient::TemplateResource.new # TemplateResource | The artist template resource object
}

begin
  #Update an artist template
  result = api_instance.update_artist_template(id, opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling MediaArtistsApi->update_artist_template: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the template | 
 **artist_template_resource** | [**TemplateResource**](TemplateResource.md)| The artist template resource object | [optional] 

### Return type

[**TemplateResource**](TemplateResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



