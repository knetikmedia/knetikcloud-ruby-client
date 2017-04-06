# KnetikCloudClient::GamificationMetricsApi

All URIs are relative to *https://sandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_metric**](GamificationMetricsApi.md#add_metric) | **POST** /metrics | Add a metric


# **add_metric**
> add_metric(opts)

Add a metric

Post a new score/stat for an activity occurrence without ending the occurrence itself

### Example
```ruby
# load the gem
require 'knetikcloud_client'
# setup authorization
KnetikCloudClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = KnetikCloudClient::GamificationMetricsApi.new

opts = { 
  metric: KnetikCloudClient::MetricResource.new # MetricResource | The new metric
}

begin
  #Add a metric
  api_instance.add_metric(opts)
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling GamificationMetricsApi->add_metric: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **metric** | [**MetricResource**](MetricResource.md)| The new metric | [optional] 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



