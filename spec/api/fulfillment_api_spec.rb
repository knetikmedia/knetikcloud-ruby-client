=begin
#Knetik Platform API Documentation Latest

#This is the spec for the Knetik API.  Use this in conjunction with the documentation found at https://demo.sandbox.knetikcloud.com

OpenAPI spec version: Latest
Contact: support@knetik.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'spec_helper'
require 'json'

# Unit tests for SwaggerClient::FulfillmentApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'FulfillmentApi' do
  before do
    # run before each test
    @instance = SwaggerClient::FulfillmentApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of FulfillmentApi' do
    it 'should create an instact of FulfillmentApi' do
      expect(@instance).to be_instance_of(SwaggerClient::FulfillmentApi)
    end
  end

  # unit tests for create_fulfillment_type_using_post
  # Create a fulfillment type
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [FulfillmentType] :type The fulfillment type
  # @return [FulfillmentType]
  describe 'create_fulfillment_type_using_post test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_fulfillment_type_using_delete
  # Delete a fulfillment type
  # 
  # @param id The id
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_fulfillment_type_using_delete test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_fulfillment_type_using_get
  # Get a single fulfillment type
  # 
  # @param id The id
  # @param [Hash] opts the optional parameters
  # @return [FulfillmentType]
  describe 'get_fulfillment_type_using_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_fulfillments_using_get
  # List and search fulfillment types
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :size The number of objects returned per page
  # @option opts [Integer] :page The number of the page returned, starting with 1
  # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
  # @return [PageResourceFulfillmentType]
  describe 'get_fulfillments_using_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_fulfillment_type_using_put
  # Update a fulfillment type
  # 
  # @param id The id
  # @param [Hash] opts the optional parameters
  # @option opts [FulfillmentType] :fulfillment_type The fulfillment type
  # @return [nil]
  describe 'update_fulfillment_type_using_put test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
