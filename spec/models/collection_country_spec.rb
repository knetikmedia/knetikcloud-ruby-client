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

# Unit tests for KnetikCloudClient::CollectionCountry
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'CollectionCountry' do
  before do
    # run before each test
    @instance = KnetikCloudClient::CollectionCountry.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CollectionCountry' do
    it 'should create an instance of CollectionCountry' do
      expect(@instance).to be_instance_of(KnetikCloudClient::CollectionCountry)
    end
  end
end

