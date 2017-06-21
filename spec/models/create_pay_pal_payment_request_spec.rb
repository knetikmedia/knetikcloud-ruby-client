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

# Unit tests for KnetikCloudClient::CreatePayPalPaymentRequest
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'CreatePayPalPaymentRequest' do
  before do
    # run before each test
    @instance = KnetikCloudClient::CreatePayPalPaymentRequest.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CreatePayPalPaymentRequest' do
    it 'should create an instact of CreatePayPalPaymentRequest' do
      expect(@instance).to be_instance_of(KnetikCloudClient::CreatePayPalPaymentRequest)
    end
  end
  describe 'test attribute "cancel_url"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "invoice_id"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "return_url"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

