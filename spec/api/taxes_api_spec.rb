=begin
#Knetik Platform API Documentation latest 

#This is the spec for the Knetik API.  Use this in conjunction with the documentation found at https://knetikcloud.com.

OpenAPI spec version: latest 
Contact: support@knetik.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'spec_helper'
require 'json'

# Unit tests for KnetikCloudClient::TaxesApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'TaxesApi' do
  before do
    # run before each test
    @instance = KnetikCloudClient::TaxesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of TaxesApi' do
    it 'should create an instance of TaxesApi' do
      expect(@instance).to be_instance_of(KnetikCloudClient::TaxesApi)
    end
  end

  # unit tests for create_country_tax
  # Create a country tax
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [CountryTaxResource] :tax_resource The tax object
  # @return [CountryTaxResource]
  describe 'create_country_tax test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_state_tax
  # Create a state tax
  # 
  # @param country_code_iso3 The iso3 code of the country
  # @param [Hash] opts the optional parameters
  # @option opts [StateTaxResource] :tax_resource The tax object
  # @return [StateTaxResource]
  describe 'create_state_tax test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_country_tax
  # Delete an existing tax
  # 
  # @param country_code_iso3 The iso3 code of the country
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_country_tax test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_state_tax
  # Delete an existing state tax
  # 
  # @param country_code_iso3 The iso3 code of the country
  # @param state_code The code of the state
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_state_tax test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_country_tax
  # Get a single tax
  # 
  # @param country_code_iso3 The iso3 code of the country
  # @param [Hash] opts the optional parameters
  # @return [CountryTaxResource]
  describe 'get_country_tax test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_country_taxes
  # List and search taxes
  # Get a list of taxes
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :size The number of objects returned per page
  # @option opts [Integer] :page The number of the page returned
  # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
  # @return [PageResourceCountryTaxResource]
  describe 'get_country_taxes test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_state_tax
  # Get a single state tax
  # 
  # @param country_code_iso3 The iso3 code of the country
  # @param state_code The code of the state
  # @param [Hash] opts the optional parameters
  # @return [StateTaxResource]
  describe 'get_state_tax test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_state_taxes_for_countries
  # List and search taxes across all countries
  # Get a list of taxes
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :size The number of objects returned per page
  # @option opts [Integer] :page The number of the page returned
  # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
  # @return [PageResourceStateTaxResource]
  describe 'get_state_taxes_for_countries test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_state_taxes_for_country
  # List and search taxes within a country
  # Get a list of taxes
  # @param country_code_iso3 The iso3 code of the country
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :size The number of objects returned per page
  # @option opts [Integer] :page The number of the page returned
  # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
  # @return [PageResourceStateTaxResource]
  describe 'get_state_taxes_for_country test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_country_tax
  # Create or update a tax
  # 
  # @param country_code_iso3 The iso3 code of the country
  # @param [Hash] opts the optional parameters
  # @option opts [CountryTaxResource] :tax_resource The tax object
  # @return [CountryTaxResource]
  describe 'update_country_tax test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_state_tax
  # Create or update a state tax
  # 
  # @param country_code_iso3 The iso3 code of the country
  # @param state_code The code of the state
  # @param [Hash] opts the optional parameters
  # @option opts [StateTaxResource] :tax_resource The tax object
  # @return [StateTaxResource]
  describe 'update_state_tax test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
