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
require 'date'

# Unit tests for KnetikCloudClient::ActionResource
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ActionResource' do
  before do
    # run before each test
    @instance = KnetikCloudClient::ActionResource.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ActionResource' do
    it 'should create an instance of ActionResource' do
      expect(@instance).to be_instance_of(KnetikCloudClient::ActionResource)
    end
  end
  describe 'test attribute "category"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
       #validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["achievement", "behavior", "comment", "disposition", "device", "entitlement", "friends", "fulfillment", "gamification", "inventory", "invoice", "media", "scheduler", "store", "subscription", "user", "wallet", "custom", "challenge", "activity", "campaign", "event"])
       #validator.allowable_values.each do |value|
       #  expect { @instance.category = value }.not_to raise_error
       #end
    end
  end

  describe 'test attribute "description"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "name"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "tags"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "variables"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

