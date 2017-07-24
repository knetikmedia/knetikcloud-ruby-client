=begin
#Knetik Platform API Documentation latest 

#This is the spec for the Knetik API.  Use this in conjunction with the documentation found at https://knetikcloud.com.

OpenAPI spec version: latest 
Contact: support@knetik.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'spec_helper'
require 'json'

# Unit tests for KnetikCloudClient::BRERuleEngineCategoriesApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'BRERuleEngineCategoriesApi' do
  before do
    # run before each test
    @instance = KnetikCloudClient::BRERuleEngineCategoriesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of BRERuleEngineCategoriesApi' do
    it 'should create an instance of BRERuleEngineCategoriesApi' do
      expect(@instance).to be_instance_of(KnetikCloudClient::BRERuleEngineCategoriesApi)
    end
  end

  # unit tests for create_bre_category_template
  # Create a BRE category template
  # Templates define a type of BRE category and the properties they have
  # @param [Hash] opts the optional parameters
  # @option opts [TemplateResource] :template The category template to create
  # @return [TemplateResource]
  describe 'create_bre_category_template test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_bre_category_template
  # Delete a BRE category template
  # If cascade &#x3D; &#39;detach&#39;, it will force delete the template even if it&#39;s attached to other objects
  # @param id The id of the template
  # @param [Hash] opts the optional parameters
  # @option opts [String] :cascade The value needed to delete used templates
  # @return [nil]
  describe 'delete_bre_category_template test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_bre_categories
  # List categories
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :size The number of objects returned per page
  # @option opts [Integer] :page The number of the page returned, starting with 1
  # @return [PageResourceBreCategoryResource]
  describe 'get_bre_categories test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_bre_category
  # Get a single category
  # 
  # @param name The category name
  # @param [Hash] opts the optional parameters
  # @return [BreCategoryResource]
  describe 'get_bre_category test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_bre_category_template
  # Get a single BRE category template
  # 
  # @param id The id of the template
  # @param [Hash] opts the optional parameters
  # @return [TemplateResource]
  describe 'get_bre_category_template test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_bre_category_templates
  # List and search BRE category templates
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :size The number of objects returned per page
  # @option opts [Integer] :page The number of the page returned, starting with 1
  # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
  # @return [PageResourceTemplateResource]
  describe 'get_bre_category_templates test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_bre_category
  # Update a category
  # 
  # @param name The category name
  # @param [Hash] opts the optional parameters
  # @option opts [BreCategoryResource] :category The updated BRE category information
  # @return [BreCategoryResource]
  describe 'update_bre_category test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_bre_category_template
  # Update a BRE category template
  # 
  # @param id The id of the template
  # @param [Hash] opts the optional parameters
  # @option opts [TemplateResource] :template The updated category template definition
  # @return [TemplateResource]
  describe 'update_bre_category_template test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
