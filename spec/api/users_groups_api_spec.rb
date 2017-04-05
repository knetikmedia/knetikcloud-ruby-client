=begin
#Knetik Platform API Documentation latest 

#This is the spec for the Knetik API.  Use this in conjunction with the documentation found at https://knetikcloud.com

OpenAPI spec version: latest 
Contact: support@knetik.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'spec_helper'
require 'json'

# Unit tests for SwaggerClient::UsersGroupsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'UsersGroupsApi' do
  before do
    # run before each test
    @instance = SwaggerClient::UsersGroupsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of UsersGroupsApi' do
    it 'should create an instact of UsersGroupsApi' do
      expect(@instance).to be_instance_of(SwaggerClient::UsersGroupsApi)
    end
  end

  # unit tests for add_member_to_group
  # Adds a new member to the group
  # 
  # @param unique_name The group unique name
  # @param username The username of a user to add to the group
  # @param [Hash] opts the optional parameters
  # @return [GroupMemberResource]
  describe 'add_member_to_group test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_group
  # Create a group
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [GroupResource] :group_resource The new group
  # @return [GroupResource]
  describe 'create_group test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_group_template
  # Create a group template
  # Group Templates define a type of group and the properties they have
  # @param [Hash] opts the optional parameters
  # @option opts [TemplateResource] :group_template_resource The group template resource object
  # @return [TemplateResource]
  describe 'create_group_template test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_group
  # Removes a group from the system IF no resources are attached to it
  # 
  # @param unique_name The group unique name
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_group test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_group_template
  # Delete a group template
  # If cascade &#x3D; &#39;detach&#39;, it will force delete the template even if it&#39;s attached to other objects
  # @param id The id of the template
  # @param [Hash] opts the optional parameters
  # @option opts [String] :cascade The value needed to delete used templates
  # @return [nil]
  describe 'delete_group_template test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_group
  # Loads a specific group&#39;s details
  # 
  # @param unique_name The group unique name
  # @param [Hash] opts the optional parameters
  # @return [GroupResource]
  describe 'get_group test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_group_member
  # Get a user from a group
  # 
  # @param unique_name The group unique name
  # @param user_id The id of the user
  # @param [Hash] opts the optional parameters
  # @return [GroupMemberResource]
  describe 'get_group_member test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_group_members
  # Lists members of the group
  # 
  # @param unique_name The group unique name
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :size The number of objects returned per page
  # @option opts [Integer] :page The number of the page returned, starting with 1
  # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
  # @return [PageResourceGroupMemberResource]
  describe 'get_group_members test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_group_template
  # Get a single group template
  # 
  # @param id The id of the template
  # @param [Hash] opts the optional parameters
  # @return [TemplateResource]
  describe 'get_group_template test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_group_templates
  # List and search group templates
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :size The number of objects returned per page
  # @option opts [Integer] :page The number of the page returned, starting with 1
  # @option opts [String] :order a comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
  # @return [PageResourceTemplateResource]
  describe 'get_group_templates test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_groups_for_user
  # List groups a user is in
  # 
  # @param user_id The id of the user
  # @param [Hash] opts the optional parameters
  # @return [Array<String>]
  describe 'get_groups_for_user test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for remove_group_member
  # Removes a user from a group
  # 
  # @param unique_name The group unique name
  # @param user_id The id of the user to remove
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'remove_group_member test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_group
  # Update a group
  # 
  # @param unique_name The group unique name
  # @param [Hash] opts the optional parameters
  # @option opts [GroupResource] :group_resource The updated group
  # @return [nil]
  describe 'update_group test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_group_member_status
  # Change a user&#39;s status
  # 
  # @param unique_name The group unique name
  # @param user_id The user id of the member to modify
  # @param status The new status for the user
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'update_group_member_status test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_group_template
  # Update a group template
  # 
  # @param id The id of the template
  # @param [Hash] opts the optional parameters
  # @option opts [TemplateResource] :group_template_resource The group template resource object
  # @return [TemplateResource]
  describe 'update_group_template test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_groups
  # List and search groups
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :filter_template Filter for groups using a specific template, by id
  # @option opts [String] :filter_member_count Filters groups by member count. Multiple values possible for range search. Format: filter_member_count&#x3D;OP,ts&amp;... where OP in (GT, LT, GOE, LOE, EQ). Ex: filter_member_count&#x3D;GT,14,LT,17
  # @option opts [String] :filter_name Filter for groups with names starting with the given string
  # @option opts [String] :filter_unique_name Filter for groups whose unique_name starts with provided string
  # @option opts [String] :filter_parent Filter for groups with a specific parent, by unique name
  # @option opts [String] :filter_status Filter for groups with a certain status
  # @option opts [Integer] :size The number of objects returned per page
  # @option opts [Integer] :page The number of the page returned, starting with 1
  # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
  # @return [PageResourceGroupResource]
  describe 'update_groups test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
