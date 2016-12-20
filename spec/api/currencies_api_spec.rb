=begin
#Knetik Platform API Documentation Latest

#This is the spec for the Knetik API.  Use this in conjunction with the documentation found at https://demo.sandbox.knetikcloud.com

OpenAPI spec version: Latest
Contact: support@knetik.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'spec_helper'
require 'json'

# Unit tests for SwaggerClient::CurrenciesApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'CurrenciesApi' do
  before do
    # run before each test
    @instance = SwaggerClient::CurrenciesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CurrenciesApi' do
    it 'should create an instact of CurrenciesApi' do
      expect(@instance).to be_instance_of(SwaggerClient::CurrenciesApi)
    end
  end

  # unit tests for create_currency_using_post
  # Create a currency
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [CurrencyResource] :currency The currency object
  # @return [CurrencyResource]
  describe 'create_currency_using_post test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_currency_using_delete
  # Delete a currency
  # 
  # @param code The currency code
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_currency_using_delete test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_currencies_using_get
  # List and search currencies
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :filter_enabled_currencies Filter for alternate currencies setup explicitely in system config
  # @option opts [String] :filter_type Filter currencies by type.  Allowable values: (&#39;virtual&#39;, &#39;real&#39;)
  # @option opts [Integer] :size The number of objects returned per page
  # @option opts [Integer] :page The number of the page returned, starting with 1
  # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
  # @return [PageCurrencyResource]
  describe 'get_currencies_using_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_currency_using_get
  # Get a single currency
  # 
  # @param code The currency code
  # @param [Hash] opts the optional parameters
  # @return [CurrencyResource]
  describe 'get_currency_using_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_currency_using_put
  # Update a currency
  # 
  # @param code The currency code
  # @param [Hash] opts the optional parameters
  # @option opts [CurrencyResource] :currency The currency object
  # @return [nil]
  describe 'update_currency_using_put test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
