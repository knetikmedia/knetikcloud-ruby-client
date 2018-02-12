# KnetikCloudClient::ReportingChallengesApi

All URIs are relative to *https://sandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_challenge_event_leaderboard**](ReportingChallengesApi.md#get_challenge_event_leaderboard) | **GET** /reporting/events/leaderboard | Retrieve a challenge event leaderboard details
[**get_challenge_event_participants**](ReportingChallengesApi.md#get_challenge_event_participants) | **GET** /reporting/events/participants | Retrieve a challenge event participant details


# **get_challenge_event_leaderboard**
> PageResourceChallengeEventParticipantResource get_challenge_event_leaderboard(opts)

Retrieve a challenge event leaderboard details

Lists all leaderboard entries with additional user details. <br><br><b>Permissions Needed:</b> REPORTING_CHALLENGES_ADMIN

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

api_instance = KnetikCloudClient::ReportingChallengesApi.new

opts = { 
  filter_event: 789, # Integer | A sepecific challenge event id
  size: 25, # Integer | The number of objects returned per page
  page: 1, # Integer | The number of the page returned
  order: "order_example" # String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
}

begin
  #Retrieve a challenge event leaderboard details
  result = api_instance.get_challenge_event_leaderboard(opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling ReportingChallengesApi->get_challenge_event_leaderboard: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_event** | **Integer**| A sepecific challenge event id | [optional] 
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] 

### Return type

[**PageResourceChallengeEventParticipantResource**](PageResourceChallengeEventParticipantResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_challenge_event_participants**
> PageResourceChallengeEventParticipantResource get_challenge_event_participants(opts)

Retrieve a challenge event participant details

Lists all user submitted scores sorted by value, including those that do not apear in the leaderboard due to value or aggregation. <br><br><b>Permissions Needed:</b> REPORTING_CHALLENGES_ADMIN

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

api_instance = KnetikCloudClient::ReportingChallengesApi.new

opts = { 
  filter_event: 789, # Integer | A sepecific challenge event id
  size: 25, # Integer | The number of objects returned per page
  page: 1, # Integer | The number of the page returned
  order: "order_example" # String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
}

begin
  #Retrieve a challenge event participant details
  result = api_instance.get_challenge_event_participants(opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling ReportingChallengesApi->get_challenge_event_participants: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_event** | **Integer**| A sepecific challenge event id | [optional] 
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] 

### Return type

[**PageResourceChallengeEventParticipantResource**](PageResourceChallengeEventParticipantResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



