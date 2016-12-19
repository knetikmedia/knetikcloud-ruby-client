=begin
#Knetik Platform API Documentation Latest

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: Latest
Contact: support@knetik.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'spec_helper'
require 'json'

# Unit tests for SwaggerClient::AuthPermissionsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'AuthPermissionsApi' do
  before do
    # run before each test
    @instance = SwaggerClient::AuthPermissionsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AuthPermissionsApi' do
    it 'should create an instact of AuthPermissionsApi' do
      expect(@instance).to be_instance_of(SwaggerClient::AuthPermissionsApi)
    end
  end

  # unit tests for create_permission_using_post
  # Create a new permission
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [PermissionResource] :permission_resource The permission resource object
  # @return [PermissionResource]
  describe 'create_permission_using_post test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_permission_using_delete
  # Delete a permission
  # 
  # @param permission The permission value
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :force If true, removes permission assigned to roles
  # @return [nil]
  describe 'delete_permission_using_delete test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_permission_using_get
  # Get a single permission
  # 
  # @param permission The permission value
  # @param [Hash] opts the optional parameters
  # @return [PermissionResource]
  describe 'get_permission_using_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_permission_using_get1
  # List and search permissions
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :size The number of objects returned per page
  # @option opts [Integer] :page The number of the page returned, starting with 1
  # @option opts [String] :order a comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
  # @return [PagePermissionResource]
  describe 'get_permission_using_get1 test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_permission_using_put
  # Update a permission
  # 
  # @param permission The permission value
  # @param [Hash] opts the optional parameters
  # @option opts [PermissionResource] :permission_resource The permission resource object
  # @return [nil]
  describe 'update_permission_using_put test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end