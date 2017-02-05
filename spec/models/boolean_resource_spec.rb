=begin
#Knetik Platform API Documentation latest 

#This is the spec for the Knetik API.  Use this in conjunction with the documentation found at https://demo.sandbox.knetikcloud.com

OpenAPI spec version: latest 
Contact: support@knetik.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for SwaggerClient::BooleanResource
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'BooleanResource' do
  before do
    # run before each test
    @instance = SwaggerClient::BooleanResource.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of BooleanResource' do
    it 'should create an instact of BooleanResource' do
      expect(@instance).to be_instance_of(SwaggerClient::BooleanResource)
    end
  end
  describe 'test attribute "value"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

