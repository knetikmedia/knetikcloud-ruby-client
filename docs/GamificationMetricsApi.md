# SwaggerClient::GamificationMetricsApi

All URIs are relative to *https://devsandbox.knetikcloud.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_metric_using_post**](GamificationMetricsApi.md#add_metric_using_post) | **POST** /metrics | Add a metric


# **add_metric_using_post**
> add_metric_using_post(opts)

Add a metric

Post a new score/stat for an activity occurrence without ending the occurrence itself

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::GamificationMetricsApi.new

opts = { 
  metric: SwaggerClient::MetricResource.new # MetricResource | The new metric
}

begin
  #Add a metric
  api_instance.add_metric_using_post(opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling GamificationMetricsApi->add_metric_using_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **metric** | [**MetricResource**](MetricResource.md)| The new metric | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



