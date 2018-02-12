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

# Unit tests for KnetikCloudClient::ReportingRevenueApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ReportingRevenueApi' do
  before do
    # run before each test
    @instance = KnetikCloudClient::ReportingRevenueApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ReportingRevenueApi' do
    it 'should create an instance of ReportingRevenueApi' do
      expect(@instance).to be_instance_of(KnetikCloudClient::ReportingRevenueApi)
    end
  end

  # unit tests for get_item_revenue
  # Get item revenue info
  # Get basic info about revenue from sales of items and bundles (not subscriptions, shipping, etc), summed up within a time range. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; REPORTING_REVENUE_ADMIN
  # @param currency_code The code for a currency to get sales data for
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :start_date The start of the time range to aggregate, unix timestamp in seconds. Default is beginning of time
  # @option opts [Integer] :end_date The end of the time range to aggregate, unix timestamp in seconds. Default is end of time
  # @return [RevenueReportResource]
  describe 'get_item_revenue test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_refund_revenue
  # Get refund revenue info
  # Get basic info about revenue loss from refunds (for all item types), summed up within a time range. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; REPORTING_REVENUE_ADMIN
  # @param currency_code The code for a currency to get refund data for
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :start_date The start of the time range to aggregate, unix timestamp in seconds. Default is beginning of time
  # @option opts [Integer] :end_date The end of the time range to aggregate, unix timestamp in seconds. Default is end of time
  # @return [RevenueReportResource]
  describe 'get_refund_revenue test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_revenue_by_country
  # Get revenue info by country
  # Get basic info about revenue from sales of all types, summed up within a time range and split out by country. Sorted for largest revenue at the top. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; REPORTING_REVENUE_ADMIN
  # @param currency_code The code for a currency to get sales data for
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :start_date The start of the time range to aggregate, unix timestamp in seconds. Default is beginning of time
  # @option opts [Integer] :end_date The end of the time range to aggregate, unix timestamp in seconds. Default is end of time
  # @option opts [Integer] :size The number of objects returned per page
  # @option opts [Integer] :page The number of the page returned, starting with 1
  # @return [PageResourceRevenueCountryReportResource]
  describe 'get_revenue_by_country test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_revenue_by_item
  # Get revenue info by item
  # Get basic info about revenue from sales of all types, summed up within a time range and split out by specific item. Sorted for largest revenue at the top. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; REPORTING_REVENUE_ADMIN
  # @param currency_code The code for a currency to get sales data for
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :start_date The start of the time range to aggregate, unix timestamp in seconds. Default is beginning of time
  # @option opts [Integer] :end_date The end of the time range to aggregate, unix timestamp in seconds. Default is end of time
  # @option opts [Integer] :size The number of objects returned per page
  # @option opts [Integer] :page The number of the page returned, starting with 1
  # @return [PageResourceRevenueProductReportResource]
  describe 'get_revenue_by_item test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_subscription_revenue
  # Get subscription revenue info
  # Get basic info about revenue from sales of new subscriptions as well as recurring payemnts, summed up within a time range. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; REPORTING_REVENUE_ADMIN
  # @param currency_code The code for a currency to get sales data for
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :start_date The start of the time range to aggregate, unix timestamp in seconds. Default is beginning of time
  # @option opts [Integer] :end_date The end of the time range to aggregate, unix timestamp in seconds. Default is end of time
  # @return [RevenueReportResource]
  describe 'get_subscription_revenue test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
