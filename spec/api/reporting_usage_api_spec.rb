=begin
#Knetik Platform API Documentation latest 

#This is the spec for the Knetik API.  Use this in conjunction with the documentation found at https://knetikcloud.com.

OpenAPI spec version: latest 
Contact: support@knetik.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.0-SNAPSHOT

=end

require 'spec_helper'
require 'json'

# Unit tests for KnetikCloudClient::ReportingUsageApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ReportingUsageApi' do
  before do
    # run before each test
    @instance = KnetikCloudClient::ReportingUsageApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ReportingUsageApi' do
    it 'should create an instance of ReportingUsageApi' do
      expect(@instance).to be_instance_of(KnetikCloudClient::ReportingUsageApi)
    end
  end

  # unit tests for get_usage_by_day
  # Returns aggregated endpoint usage information by day
  # &lt;b&gt;Permissions Needed:&lt;/b&gt; USAGE_ADMIN
  # @param start_date The beginning of the range being requested, unix timestamp in seconds
  # @param end_date The ending of the range being requested, unix timestamp in seconds
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :combine_endpoints Whether to combine counts from different endpoint. Removes the url and method from the result object
  # @option opts [String] :method Filter for a certain endpoint method.  Must include url as well to work
  # @option opts [String] :url Filter for a certain endpoint.  Must include method as well to work
  # @option opts [Integer] :size The number of objects returned per page
  # @option opts [Integer] :page The number of the page returned, starting with 1
  # @return [PageResourceUsageInfo]
  describe 'get_usage_by_day test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_usage_by_hour
  # Returns aggregated endpoint usage information by hour
  # &lt;b&gt;Permissions Needed:&lt;/b&gt; USAGE_ADMIN
  # @param start_date The beginning of the range being requested, unix timestamp in seconds
  # @param end_date The ending of the range being requested, unix timestamp in seconds
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :combine_endpoints Whether to combine counts from different endpoint. Removes the url and method from the result object
  # @option opts [String] :method Filter for a certain endpoint method.  Must include url as well to work
  # @option opts [String] :url Filter for a certain endpoint.  Must include method as well to work
  # @option opts [Integer] :size The number of objects returned per page
  # @option opts [Integer] :page The number of the page returned, starting with 1
  # @return [PageResourceUsageInfo]
  describe 'get_usage_by_hour test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_usage_by_minute
  # Returns aggregated endpoint usage information by minute
  # &lt;b&gt;Permissions Needed:&lt;/b&gt; USAGE_ADMIN
  # @param start_date The beginning of the range being requested, unix timestamp in seconds
  # @param end_date The ending of the range being requested, unix timestamp in seconds
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :combine_endpoints Whether to combine counts from different endpoint. Removes the url and method from the result object
  # @option opts [String] :method Filter for a certain endpoint method.  Must include url as well to work
  # @option opts [String] :url Filter for a certain endpoint.  Must include method as well to work
  # @option opts [Integer] :size The number of objects returned per page
  # @option opts [Integer] :page The number of the page returned, starting with 1
  # @return [PageResourceUsageInfo]
  describe 'get_usage_by_minute test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_usage_by_month
  # Returns aggregated endpoint usage information by month
  # &lt;b&gt;Permissions Needed:&lt;/b&gt; USAGE_ADMIN
  # @param start_date The beginning of the range being requested, unix timestamp in seconds
  # @param end_date The ending of the range being requested, unix timestamp in seconds
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :combine_endpoints Whether to combine counts from different endpoint. Removes the url and method from the result object
  # @option opts [String] :method Filter for a certain endpoint method.  Must include url as well to work
  # @option opts [String] :url Filter for a certain endpoint.  Must include method as well to work
  # @option opts [Integer] :size The number of objects returned per page
  # @option opts [Integer] :page The number of the page returned, starting with 1
  # @return [PageResourceUsageInfo]
  describe 'get_usage_by_month test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_usage_by_year
  # Returns aggregated endpoint usage information by year
  # &lt;b&gt;Permissions Needed:&lt;/b&gt; USAGE_ADMIN
  # @param start_date The beginning of the range being requested, unix timestamp in seconds
  # @param end_date The ending of the range being requested, unix timestamp in seconds
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :combine_endpoints Whether to combine counts from different endpoints. Removes the url and method from the result object
  # @option opts [String] :method Filter for a certain endpoint method.  Must include url as well to work
  # @option opts [String] :url Filter for a certain endpoint.  Must include method as well to work
  # @option opts [Integer] :size The number of objects returned per page
  # @option opts [Integer] :page The number of the page returned, starting with 1
  # @return [PageResourceUsageInfo]
  describe 'get_usage_by_year test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_usage_endpoints
  # Returns list of endpoints called (method and url)
  # &lt;b&gt;Permissions Needed:&lt;/b&gt; USAGE_ADMIN
  # @param start_date The beginning of the range being requested, unix timestamp in seconds
  # @param end_date The ending of the range being requested, unix timestamp in seconds
  # @param [Hash] opts the optional parameters
  # @return [Array<String>]
  describe 'get_usage_endpoints test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
