=begin
#Knetik Platform API Documentation Latest

#This is the spec for the Knetik API.  Use this in conjunction with the documentation found at https://demo.sandbox.knetikcloud.com

OpenAPI spec version: Latest
Contact: support@knetik.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for SwaggerClient::Localizer
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'Localizer' do
  before do
    # run before each test
    @instance = SwaggerClient::Localizer.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of Localizer' do
    it 'should create an instact of Localizer' do
      expect(@instance).to be_instance_of(SwaggerClient::Localizer)
    end
  end
end

