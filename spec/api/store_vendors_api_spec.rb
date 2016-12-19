=begin
#Knetik Platform API Documentation Latest

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: Latest
Contact: support@knetik.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'spec_helper'
require 'json'

# Unit tests for SwaggerClient::StoreVendorsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'StoreVendorsApi' do
  before do
    # run before each test
    @instance = SwaggerClient::StoreVendorsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of StoreVendorsApi' do
    it 'should create an instact of StoreVendorsApi' do
      expect(@instance).to be_instance_of(SwaggerClient::StoreVendorsApi)
    end
  end

  # unit tests for create_vendor_using_post
  # Create a vendor
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [VendorResource] :vendor The vendor
  # @return [VendorResource]
  describe 'create_vendor_using_post test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_vendor_using_delete
  # Delete a vendor
  # 
  # @param id The id of the vendor
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_vendor_using_delete test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_vendor_using_get
  # Get a single vendor
  # 
  # @param id The id of the vendor
  # @param [Hash] opts the optional parameters
  # @return [VendorResource]
  describe 'get_vendor_using_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_vendors_using_get
  # List and search vendors
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :filter_name Filters vendors by name starting with the text provided in the filter
  # @option opts [Integer] :size The number of objects returned per page
  # @option opts [Integer] :page The number of the page returned, starting with 1
  # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
  # @return [PageVendorResource]
  describe 'get_vendors_using_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_vendor_using_put
  # Update a vendor
  # 
  # @param id The id of the vendor
  # @param [Hash] opts the optional parameters
  # @option opts [VendorResource] :vendor The vendor
  # @return [nil]
  describe 'update_vendor_using_put test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end