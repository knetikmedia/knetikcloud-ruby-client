# SwaggerClient::ReportingChallengesApi

All URIs are relative to *https://integration.knetikcloud.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_challenge_event_leaderboard_using_get**](ReportingChallengesApi.md#get_challenge_event_leaderboard_using_get) | **GET** /reporting/events/leaderboard | Retrieve a challenge event leaderboard details
[**get_challenge_event_participants_using_get**](ReportingChallengesApi.md#get_challenge_event_participants_using_get) | **GET** /reporting/events/participants | Retrieve a challenge event participant details


# **get_challenge_event_leaderboard_using_get**
> PageResourceChallengeEventParticipantResource get_challenge_event_leaderboard_using_get(opts)

Retrieve a challenge event leaderboard details

Lists all leaderboard entries with additional user details

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: knetik_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::ReportingChallengesApi.new

opts = { 
  filter_event: 789 # Integer | A sepecific challenge event id
}

begin
  #Retrieve a challenge event leaderboard details
  result = api_instance.get_challenge_event_leaderboard_using_get(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ReportingChallengesApi->get_challenge_event_leaderboard_using_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_event** | **Integer**| A sepecific challenge event id | [optional] 

### Return type

[**PageResourceChallengeEventParticipantResource**](PageResourceChallengeEventParticipantResource.md)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_challenge_event_participants_using_get**
> PageResourceChallengeEventParticipantResource get_challenge_event_participants_using_get(opts)

Retrieve a challenge event participant details

Lists all user submitted scores sorted by value, including those that do not apear in the leaderboard due to value or aggregation

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: knetik_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::ReportingChallengesApi.new

opts = { 
  filter_event: 789 # Integer | A sepecific challenge event id
}

begin
  #Retrieve a challenge event participant details
  result = api_instance.get_challenge_event_participants_using_get(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ReportingChallengesApi->get_challenge_event_participants_using_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_event** | **Integer**| A sepecific challenge event id | [optional] 

### Return type

[**PageResourceChallengeEventParticipantResource**](PageResourceChallengeEventParticipantResource.md)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



