# SwaggerClient::ReportingChallengesApi

All URIs are relative to *https://sandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_challenge_event_leaderboard**](ReportingChallengesApi.md#get_challenge_event_leaderboard) | **GET** /reporting/events/leaderboard | Retrieve a challenge event leaderboard details
[**get_challenge_event_participants**](ReportingChallengesApi.md#get_challenge_event_participants) | **GET** /reporting/events/participants | Retrieve a challenge event participant details


# **get_challenge_event_leaderboard**
> PageResourceChallengeEventParticipantResource get_challenge_event_leaderboard(opts)

Retrieve a challenge event leaderboard details

Lists all leaderboard entries with additional user details

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::ReportingChallengesApi.new

opts = { 
  filter_event: 789 # Integer | A sepecific challenge event id
}

begin
  #Retrieve a challenge event leaderboard details
  result = api_instance.get_challenge_event_leaderboard(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ReportingChallengesApi->get_challenge_event_leaderboard: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_event** | **Integer**| A sepecific challenge event id | [optional] 

### Return type

[**PageResourceChallengeEventParticipantResource**](PageResourceChallengeEventParticipantResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_challenge_event_participants**
> PageResourceChallengeEventParticipantResource get_challenge_event_participants(opts)

Retrieve a challenge event participant details

Lists all user submitted scores sorted by value, including those that do not apear in the leaderboard due to value or aggregation

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::ReportingChallengesApi.new

opts = { 
  filter_event: 789 # Integer | A sepecific challenge event id
}

begin
  #Retrieve a challenge event participant details
  result = api_instance.get_challenge_event_participants(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ReportingChallengesApi->get_challenge_event_participants: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_event** | **Integer**| A sepecific challenge event id | [optional] 

### Return type

[**PageResourceChallengeEventParticipantResource**](PageResourceChallengeEventParticipantResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



