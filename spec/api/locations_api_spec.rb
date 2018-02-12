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

# Unit tests for KnetikCloudClient::LocationsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'LocationsApi' do
  before do
    # run before each test
    @instance = KnetikCloudClient::LocationsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of LocationsApi' do
    it 'should create an instance of LocationsApi' do
      expect(@instance).to be_instance_of(KnetikCloudClient::LocationsApi)
    end
  end

  # unit tests for get_countries
  # Get a list of countries
  # &lt;b&gt;Permissions Needed:&lt;/b&gt; ANY
  # @param [Hash] opts the optional parameters
  # @return [Array<CountryResource>]
  describe 'get_countries test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_country_by_geo_location
  # Get the iso3 code of your country
  # Determined by geo ip location. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; ANY
  # @param [Hash] opts the optional parameters
  # @return [String]
  describe 'get_country_by_geo_location test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_country_states
  # Get a list of a country&#39;s states
  # &lt;b&gt;Permissions Needed:&lt;/b&gt; ANY
  # @param country_code_iso3 The iso3 code of the country
  # @param [Hash] opts the optional parameters
  # @return [Array<StateResource>]
  describe 'get_country_states test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_currency_by_geo_location
  # Get the currency information of your country
  # Determined by geo ip location, currency to country mapping and a fallback setting. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; ANY
  # @param [Hash] opts the optional parameters
  # @return [CurrencyResource]
  describe 'get_currency_by_geo_location test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
