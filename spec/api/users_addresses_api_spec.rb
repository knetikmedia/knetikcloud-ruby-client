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

# Unit tests for KnetikCloudClient::UsersAddressesApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'UsersAddressesApi' do
  before do
    # run before each test
    @instance = KnetikCloudClient::UsersAddressesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of UsersAddressesApi' do
    it 'should create an instance of UsersAddressesApi' do
      expect(@instance).to be_instance_of(KnetikCloudClient::UsersAddressesApi)
    end
  end

  # unit tests for create_address
  # Create a new address
  # &lt;b&gt;Permissions Needed:&lt;/b&gt; USERS_ADMIN or owner
  # @param user_id The id of the user
  # @param [Hash] opts the optional parameters
  # @option opts [SavedAddressResource] :saved_address_resource The new address
  # @return [SavedAddressResource]
  describe 'create_address test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_address
  # Delete an address
  # &lt;b&gt;Permissions Needed:&lt;/b&gt; USERS_ADMIN or owner
  # @param user_id The id of the user
  # @param id The id of the address
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_address test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_address
  # Get a single address
  # &lt;b&gt;Permissions Needed:&lt;/b&gt; USERS_ADMIN or owner
  # @param user_id The id of the user
  # @param id The id of the address
  # @param [Hash] opts the optional parameters
  # @return [SavedAddressResource]
  describe 'get_address test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_addresses
  # List and search addresses
  # &lt;b&gt;Permissions Needed:&lt;/b&gt; USERS_ADMIN or owner
  # @param user_id The id of the user
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :size The number of objects returned per page
  # @option opts [Integer] :page The number of the page returned, starting with 1
  # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
  # @return [PageResourceSavedAddressResource]
  describe 'get_addresses test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_address
  # Update an address
  # &lt;b&gt;Permissions Needed:&lt;/b&gt; USERS_ADMIN or owner
  # @param user_id The id of the user
  # @param id The id of the address
  # @param [Hash] opts the optional parameters
  # @option opts [SavedAddressResource] :saved_address_resource The saved address resource object
  # @return [SavedAddressResource]
  describe 'update_address test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
