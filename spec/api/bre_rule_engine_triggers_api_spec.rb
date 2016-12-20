=begin
#Knetik Platform API Documentation Latest

#This is the spec for the Knetik API.  Use this in conjunction with the documentation found at https://demo.sandbox.knetikcloud.com

OpenAPI spec version: Latest
Contact: support@knetik.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'spec_helper'
require 'json'

# Unit tests for SwaggerClient::BRERuleEngineTriggersApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'BRERuleEngineTriggersApi' do
  before do
    # run before each test
    @instance = SwaggerClient::BRERuleEngineTriggersApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of BRERuleEngineTriggersApi' do
    it 'should create an instact of BRERuleEngineTriggersApi' do
      expect(@instance).to be_instance_of(SwaggerClient::BRERuleEngineTriggersApi)
    end
  end

  # unit tests for create_trigger_using_post
  # Create a trigger
  # Customer added triggers will not be fired automatically or have rules associated with them by default. Custom rules must be added to get use from the trigger and it must then be fired from the outside. See the Bre Event services
  # @param [Hash] opts the optional parameters
  # @option opts [BreTriggerResource] :bre_trigger_resource The BRE trigger resource object
  # @return [BreTriggerResource]
  describe 'create_trigger_using_post test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_trigger_using_delete
  # Delete a trigger
  # May fail if there are existing rules against it. Cannot delete core triggers
  # @param event_name The trigger event name
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_trigger_using_delete test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_trigger_using_get
  # Get a single trigger
  # 
  # @param event_name The trigger event name
  # @param [Hash] opts the optional parameters
  # @return [BreTriggerResource]
  describe 'get_trigger_using_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_triggers_using_get
  # List triggers
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :filter_system Filter for triggers that are system triggers when true, or not when false. Leave off for both mixed
  # @option opts [String] :filter_category Filter for triggers that are within a specific category
  # @option opts [String] :filter_name Filter for triggers that have names containing the given string
  # @option opts [Integer] :size The number of objects returned per page
  # @option opts [Integer] :page The number of the page returned, starting with 1
  # @return [PageBreTriggerResource]
  describe 'get_triggers_using_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_trigger_using_put
  # Update a trigger
  # May fail if new parameters mismatch requirements of existing rules. Cannot update core triggers
  # @param event_name The trigger event name
  # @param [Hash] opts the optional parameters
  # @option opts [BreTriggerResource] :bre_trigger_resource The BRE trigger resource object
  # @return [nil]
  describe 'update_trigger_using_put test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
