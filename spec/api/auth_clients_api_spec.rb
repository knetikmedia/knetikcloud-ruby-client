=begin
#Knetik Platform API Documentation latest 

#This is the spec for the Knetik API.  Use this in conjunction with the documentation found at https://knetikcloud.com

OpenAPI spec version: latest 
Contact: support@knetik.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'spec_helper'
require 'json'

# Unit tests for SwaggerClient::AuthClientsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'AuthClientsApi' do
  before do
    # run before each test
    @instance = SwaggerClient::AuthClientsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AuthClientsApi' do
    it 'should create an instact of AuthClientsApi' do
      expect(@instance).to be_instance_of(SwaggerClient::AuthClientsApi)
    end
  end

  # unit tests for create_client
  # Create a new client
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [ClientResource] :client_resource The client resource object
  # @return [ClientResource]
  describe 'create_client test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_client
  # Delete a client
  # 
  # @param client_key The key of the client
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_client test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_client
  # Get a single client
  # 
  # @param client_key The key of the client
  # @param [Hash] opts the optional parameters
  # @return [ClientResource]
  describe 'get_client test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_client_grant_types
  # List available client grant types
  # 
  # @param [Hash] opts the optional parameters
  # @return [Array<GrantTypeResource>]
  describe 'get_client_grant_types test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_clients
  # List and search clients
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :size The number of objects returned per page
  # @option opts [Integer] :page The number of the page returned, starting with 1
  # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
  # @return [PageResourceClientResource]
  describe 'get_clients test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for set_client_grant_types
  # Set grant types for a client
  # 
  # @param client_key The key of the client
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :grant_list A list of unique grant types
  # @return [nil]
  describe 'set_client_grant_types test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for set_client_redirect_uris
  # Set redirect uris for a client
  # 
  # @param client_key The key of the client
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :redirect_list A list of unique redirect uris
  # @return [nil]
  describe 'set_client_redirect_uris test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_client
  # Update a client
  # 
  # @param client_key The key of the client
  # @param [Hash] opts the optional parameters
  # @option opts [ClientResource] :client_resource The client resource object
  # @return [ClientResource]
  describe 'update_client test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end