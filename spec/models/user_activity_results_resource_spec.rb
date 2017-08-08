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

# Unit tests for KnetikCloudClient::UserActivityResultsResource
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'UserActivityResultsResource' do
  before do
    # run before each test
    @instance = KnetikCloudClient::UserActivityResultsResource.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of UserActivityResultsResource' do
    it 'should create an instance of UserActivityResultsResource' do
      expect(@instance).to be_instance_of(KnetikCloudClient::UserActivityResultsResource)
    end
  end
  describe 'test attribute "score"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "tags"' do
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

