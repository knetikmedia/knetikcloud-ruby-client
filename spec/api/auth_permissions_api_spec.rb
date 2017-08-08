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

# Unit tests for KnetikCloudClient::AuthPermissionsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'AuthPermissionsApi' do
  before do
    # run before each test
    @instance = KnetikCloudClient::AuthPermissionsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AuthPermissionsApi' do
    it 'should create an instance of AuthPermissionsApi' do
      expect(@instance).to be_instance_of(KnetikCloudClient::AuthPermissionsApi)
    end
  end

  # unit tests for create_permission
  # Create a new permission
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [PermissionResource] :permission_resource The permission resource object
  # @return [PermissionResource]
  describe 'create_permission test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_permission
  # Delete a permission
  # 
  # @param permission The permission value
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :force If true, removes permission assigned to roles
  # @return [nil]
  describe 'delete_permission test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_permission
  # Get a single permission
  # 
  # @param permission The permission value
  # @param [Hash] opts the optional parameters
  # @return [PermissionResource]
  describe 'get_permission test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_permissions
  # List and search permissions
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :size The number of objects returned per page
  # @option opts [Integer] :page The number of the page returned, starting with 1
  # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
  # @return [PageResourcePermissionResource]
  describe 'get_permissions test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_permission
  # Update a permission
  # 
  # @param permission The permission value
  # @param [Hash] opts the optional parameters
  # @option opts [PermissionResource] :permission_resource The permission resource object
  # @return [PermissionResource]
  describe 'update_permission test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
