=begin
#Knetik Platform API Documentation Latest

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: Latest
Contact: support@knetik.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for SwaggerClient::XsollaPaymentRequest
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'XsollaPaymentRequest' do
  before do
    # run before each test
    @instance = SwaggerClient::XsollaPaymentRequest.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of XsollaPaymentRequest' do
    it 'should create an instact of XsollaPaymentRequest' do
      expect(@instance).to be_instance_of(SwaggerClient::XsollaPaymentRequest)
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

