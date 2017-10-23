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

# Unit tests for KnetikCloudClient::FinalizePayPalPaymentRequest
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'FinalizePayPalPaymentRequest' do
  before do
    # run before each test
    @instance = KnetikCloudClient::FinalizePayPalPaymentRequest.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of FinalizePayPalPaymentRequest' do
    it 'should create an instance of FinalizePayPalPaymentRequest' do
      expect(@instance).to be_instance_of(KnetikCloudClient::FinalizePayPalPaymentRequest)
    end
  end
  describe 'test attribute "invoice_id"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "payer_id"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "token"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

