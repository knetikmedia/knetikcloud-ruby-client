=begin
#Knetik Platform API Documentation Latest

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: Latest
Contact: support@knetik.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'spec_helper'
require 'json'

# Unit tests for SwaggerClient::ReportingUsersApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ReportingUsersApi' do
  before do
    # run before each test
    @instance = SwaggerClient::ReportingUsersApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ReportingUsersApi' do
    it 'should create an instact of ReportingUsersApi' do
      expect(@instance).to be_instance_of(SwaggerClient::ReportingUsersApi)
    end
  end

  # unit tests for executive_revenue_item_sales_using_get1
  # Get user registration info
  # Get user registration counts grouped by time range
  # @param [Hash] opts the optional parameters
  # @option opts [String] :granularity The time duration to aggregate by
  # @option opts [Integer] :start_date The start of the time range to aggregate, unix timestamp in seconds. Default is beginning of time
  # @option opts [Integer] :end_date The end of the time range to aggregate, unix timestamp in seconds. Default is end of time
  # @return [PageAggregateCountResource]
  describe 'executive_revenue_item_sales_using_get1 test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
