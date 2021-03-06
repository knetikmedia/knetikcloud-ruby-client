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

# Unit tests for KnetikCloudClient::DevicesApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'DevicesApi' do
  before do
    # run before each test
    @instance = KnetikCloudClient::DevicesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of DevicesApi' do
    it 'should create an instance of DevicesApi' do
      expect(@instance).to be_instance_of(KnetikCloudClient::DevicesApi)
    end
  end

  # unit tests for add_device_users
  # Add device users
  # &lt;b&gt;Permissions Needed:&lt;/b&gt; DEVICES_ADMIN or owner
  # @param user_resources userResources
  # @param id id
  # @param [Hash] opts the optional parameters
  # @return [DeviceResource]
  describe 'add_device_users test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_device
  # Create a device
  # &lt;b&gt;Permissions Needed:&lt;/b&gt; ANY
  # @param device device
  # @param [Hash] opts the optional parameters
  # @return [DeviceResource]
  describe 'create_device test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_device_template
  # Create a device template
  # Device Templates define a type of device and the properties they have. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; TEMPLATE_ADMIN
  # @param [Hash] opts the optional parameters
  # @option opts [TemplateResource] :device_template_resource The device template resource object
  # @return [TemplateResource]
  describe 'create_device_template test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_device
  # Delete a device
  # &lt;b&gt;Permissions Needed:&lt;/b&gt; DEVICES_ADMIN or owner
  # @param id id
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_device test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_device_template
  # Delete an device template
  # If cascade &#x3D; &#39;detach&#39;, it will force delete the template even if it&#39;s attached to other objects. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; TEMPLATE_ADMIN
  # @param id The id of the template
  # @param [Hash] opts the optional parameters
  # @option opts [String] :cascade The value needed to delete used templates
  # @return [nil]
  describe 'delete_device_template test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_device_user
  # Delete a device user
  # &lt;b&gt;Permissions Needed:&lt;/b&gt; DEVICES_ADMIN or owner
  # @param id The id of the device
  # @param user_id The user id of the device user
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_device_user test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_device_users
  # Delete all device users
  # &lt;b&gt;Permissions Needed:&lt;/b&gt; DEVICES_ADMIN or owner
  # @param id The id of the device
  # @param [Hash] opts the optional parameters
  # @option opts [String] :filter_id Filter for device users to delete with a user id in a given comma separated list of ids
  # @return [nil]
  describe 'delete_device_users test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_device
  # Get a single device
  # &lt;b&gt;Permissions Needed:&lt;/b&gt; DEVICES_ADMIN or owner
  # @param id id
  # @param [Hash] opts the optional parameters
  # @return [DeviceResource]
  describe 'get_device test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_device_template
  # Get a single device template
  # &lt;b&gt;Permissions Needed:&lt;/b&gt; description
  # @param id The id of the template
  # @param [Hash] opts the optional parameters
  # @return [TemplateResource]
  describe 'get_device_template test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_device_templates
  # List and search device templates
  # &lt;b&gt;Permissions Needed:&lt;/b&gt; TEMPLATE_ADMIN or DEVICES_ADMIN
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :size The number of objects returned per page
  # @option opts [Integer] :page The number of the page returned, starting with 1
  # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
  # @return [PageResourceTemplateResource]
  describe 'get_device_templates test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_devices
  # List and search devices
  # Get a list of devices with optional filtering. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; DEVICES_ADMIN or user
  # @param [Hash] opts the optional parameters
  # @option opts [String] :filter_make Filter for devices with specified make
  # @option opts [String] :filter_model Filter for devices with specified model
  # @option opts [String] :filter_os Filter for devices with specified OS
  # @option opts [String] :filter_serial Filter for devices with specified serial
  # @option opts [String] :filter_type Filter for devices with specified type
  # @option opts [String] :filter_tag A comma separated list without spaces to filter for devices with specified tags (matches any)
  # @option opts [Integer] :size The number of objects returned per page
  # @option opts [Integer] :page The number of the page returned, starting with 1
  # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
  # @return [PageResourceDeviceResource]
  describe 'get_devices test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_device
  # Update a device
  # &lt;b&gt;Permissions Needed:&lt;/b&gt; CUSTOMERS_ADMIN
  # @param device device
  # @param id id
  # @param [Hash] opts the optional parameters
  # @return [DeviceResource]
  describe 'update_device test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_device_template
  # Update an device template
  # &lt;b&gt;Permissions Needed:&lt;/b&gt; TEMPLATE_ADMIN
  # @param id The id of the template
  # @param [Hash] opts the optional parameters
  # @option opts [TemplateResource] :device_template_resource The device template resource object
  # @return [TemplateResource]
  describe 'update_device_template test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
