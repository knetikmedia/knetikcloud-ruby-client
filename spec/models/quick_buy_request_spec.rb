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
require 'date'

# Unit tests for KnetikCloudClient::QuickBuyRequest
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'QuickBuyRequest' do
  before do
    # run before each test
    @instance = KnetikCloudClient::QuickBuyRequest.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of QuickBuyRequest' do
    it 'should create an instance of QuickBuyRequest' do
      expect(@instance).to be_instance_of(KnetikCloudClient::QuickBuyRequest)
    end
  end
  describe 'test attribute "sku"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "user_id"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

