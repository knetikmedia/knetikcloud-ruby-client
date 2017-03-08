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

# Unit tests for SwaggerClient::InvoiceCreateRequest
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'InvoiceCreateRequest' do
  before do
    # run before each test
    @instance = SwaggerClient::InvoiceCreateRequest.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of InvoiceCreateRequest' do
    it 'should create an instact of InvoiceCreateRequest' do
      expect(@instance).to be_instance_of(SwaggerClient::InvoiceCreateRequest)
    end
  end
  describe 'test attribute "cart_guid"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

