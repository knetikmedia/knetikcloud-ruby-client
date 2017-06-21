=begin
#Knetik Platform API Documentation latest 

#This is the spec for the Knetik API.  Use this in conjunction with the documentation found at https://knetikcloud.com

OpenAPI spec version: latest 
Contact: support@knetik.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for KnetikCloudClient::GlobalCheckAndIncrementResource
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'GlobalCheckAndIncrementResource' do
  before do
    # run before each test
    @instance = KnetikCloudClient::GlobalCheckAndIncrementResource.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of GlobalCheckAndIncrementResource' do
    it 'should create an instact of GlobalCheckAndIncrementResource' do
      expect(@instance).to be_instance_of(KnetikCloudClient::GlobalCheckAndIncrementResource)
    end
  end
  describe 'test attribute "check_value_resource"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "global_resource"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "type"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

