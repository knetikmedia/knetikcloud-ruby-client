=begin
#Knetik Platform API Documentation latest 

#This is the spec for the Knetik API.  Use this in conjunction with the documentation found at https://demo.sandbox.knetikcloud.com

OpenAPI spec version: latest 
Contact: support@knetik.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'spec_helper'
require 'json'

# Unit tests for SwaggerClient::BRERuleEngineActionsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'BRERuleEngineActionsApi' do
  before do
    # run before each test
    @instance = SwaggerClient::BRERuleEngineActionsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of BRERuleEngineActionsApi' do
    it 'should create an instact of BRERuleEngineActionsApi' do
      expect(@instance).to be_instance_of(SwaggerClient::BRERuleEngineActionsApi)
    end
  end

  # unit tests for get_actions_using_get
  # Get a list of available actions
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :filter_category Filter for actions that are within a specific category
  # @option opts [String] :filter_name Filter for actions that have names containing the given string
  # @return [Array<ActionResource>]
  describe 'get_actions_using_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
