=begin
#Knetik Platform API Documentation latest 

#This is the spec for the Knetik API.  Use this in conjunction with the documentation found at https://demo.sandbox.knetikcloud.com

OpenAPI spec version: latest 
Contact: support@knetik.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'spec_helper'
require 'json'

# Unit tests for SwaggerClient::StoreSalesApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'StoreSalesApi' do
  before do
    # run before each test
    @instance = SwaggerClient::StoreSalesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of StoreSalesApi' do
    it 'should create an instact of StoreSalesApi' do
      expect(@instance).to be_instance_of(SwaggerClient::StoreSalesApi)
    end
  end

  # unit tests for create_catalog_sale_using_post
  # Create a sale
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [CatalogSale] :catalog_sale The catalog sale object
  # @return [CatalogSale]
  describe 'create_catalog_sale_using_post test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_catalog_sale_using_delete
  # Delete a sale
  # 
  # @param id The id of the sale
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_catalog_sale_using_delete test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_catalog_sale_using_get
  # Get a single sale
  # 
  # @param id The id of the sale
  # @param [Hash] opts the optional parameters
  # @return [CatalogSale]
  describe 'get_catalog_sale_using_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_catalog_sales_using_get
  # List and search sales
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :size The number of objects returned per page
  # @option opts [Integer] :page The number of the page returned, starting with 1
  # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
  # @return [PageResourceCatalogSale]
  describe 'get_catalog_sales_using_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_catalog_sale_using_put
  # Update a sale
  # 
  # @param id The id of the sale
  # @param [Hash] opts the optional parameters
  # @option opts [CatalogSale] :catalog_sale The catalog sale object
  # @return [nil]
  describe 'update_catalog_sale_using_put test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
