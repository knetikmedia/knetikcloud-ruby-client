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

# Unit tests for KnetikCloudClient::UtilMaintenanceApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'UtilMaintenanceApi' do
  before do
    # run before each test
    @instance = KnetikCloudClient::UtilMaintenanceApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of UtilMaintenanceApi' do
    it 'should create an instance of UtilMaintenanceApi' do
      expect(@instance).to be_instance_of(KnetikCloudClient::UtilMaintenanceApi)
    end
  end

  # unit tests for delete_maintenance
  # Delete maintenance info
  # &lt;b&gt;Permissions Needed:&lt;/b&gt; MAINTENANCE_ADMIN
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_maintenance test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_maintenance
  # Get current maintenance info
  # Get current maintenance info. 404 if no maintenance. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; ANY
  # @param [Hash] opts the optional parameters
  # @return [Maintenance]
  describe 'get_maintenance test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for set_maintenance
  # Set current maintenance info
  # &lt;b&gt;Permissions Needed:&lt;/b&gt; MAINTENANCE_ADMIN
  # @param [Hash] opts the optional parameters
  # @option opts [Maintenance] :maintenance The maintenance object
  # @return [nil]
  describe 'set_maintenance test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_maintenance
  # Update current maintenance info
  # &lt;b&gt;Permissions Needed:&lt;/b&gt; MAINTENANCE_ADMIN
  # @param [Hash] opts the optional parameters
  # @option opts [Maintenance] :maintenance The maintenance object
  # @return [nil]
  describe 'update_maintenance test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
