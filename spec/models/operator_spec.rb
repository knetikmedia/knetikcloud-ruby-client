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

# Unit tests for KnetikCloudClient::Operator
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'Operator' do
  before do
    # run before each test
    @instance = KnetikCloudClient::Operator.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of Operator' do
    it 'should create an instact of Operator' do
      expect(@instance).to be_instance_of(KnetikCloudClient::Operator)
    end
  end
end

