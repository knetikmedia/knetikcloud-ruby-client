=begin
#Knetik Platform API Documentation Latest

#This is the spec for the Knetik API.  Use this in conjunction with the documentation found at https://demo.sandbox.knetikcloud.com

OpenAPI spec version: Latest
Contact: support@knetik.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'spec_helper'
require 'json'

# Unit tests for SwaggerClient::ConfigsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ConfigsApi' do
  before do
    # run before each test
    @instance = SwaggerClient::ConfigsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ConfigsApi' do
    it 'should create an instact of ConfigsApi' do
      expect(@instance).to be_instance_of(SwaggerClient::ConfigsApi)
    end
  end

  # unit tests for create_config_using_post
  # Create a new config
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [Config] :config The config object
  # @return [Config]
  describe 'create_config_using_post test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_config_using_delete
  # Delete an existing config
  # 
  # @param name The config name
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_config_using_delete test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_config_using_get
  # Get a single config
  # Only configs that are public readable will be shown without admin access
  # @param name The config name
  # @param [Hash] opts the optional parameters
  # @return [Config]
  describe 'get_config_using_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_configs_using_get
  # List and search configs
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :filter_search Filter for configs whose name contains the given string
  # @option opts [Integer] :size The number of objects returned per page
  # @option opts [Integer] :page The number of the page returned
  # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
  # @return [PageConfig]
  describe 'get_configs_using_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_config_using_put
  # Update an existing config
  # 
  # @param name The config name
  # @param [Hash] opts the optional parameters
  # @option opts [Config] :config The config object
  # @return [nil]
  describe 'update_config_using_put test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
