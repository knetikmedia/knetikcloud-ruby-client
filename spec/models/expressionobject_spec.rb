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

# Unit tests for SwaggerClient::Expressionobject
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'Expressionobject' do
  before do
    # run before each test
    @instance = SwaggerClient::Expressionobject.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of Expressionobject' do
    it 'should create an instact of Expressionobject' do
      expect(@instance).to be_instance_of(SwaggerClient::Expressionobject)
    end
  end
end

