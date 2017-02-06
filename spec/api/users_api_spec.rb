=begin
#Knetik Platform API Documentation latest 

#This is the spec for the Knetik API.  Use this in conjunction with the documentation found at https://knetikcloud.com

OpenAPI spec version: latest 
Contact: support@knetik.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'spec_helper'
require 'json'

# Unit tests for SwaggerClient::UsersApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'UsersApi' do
  before do
    # run before each test
    @instance = SwaggerClient::UsersApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of UsersApi' do
    it 'should create an instact of UsersApi' do
      expect(@instance).to be_instance_of(SwaggerClient::UsersApi)
    end
  end

  # unit tests for add_user_tag
  # Add a tag to a user
  # 
  # @param user_id The id of the user
  # @param tag tag
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'add_user_tag test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_user_template
  # Create a user template
  # User Templates define a type of user and the properties they have
  # @param [Hash] opts the optional parameters
  # @option opts [TemplateResource] :user_template_resource The user template resource object
  # @return [TemplateResource]
  describe 'create_user_template test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_user_template
  # Delete a user template
  # If cascade &#x3D; &#39;detach&#39;, it will force delete the template even if it&#39;s attached to other objects
  # @param id The id of the template
  # @param [Hash] opts the optional parameters
  # @option opts [String] :cascade The value needed to delete used templates
  # @return [nil]
  describe 'delete_user_template test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_user
  # Get a single user
  # Additional private info is included as USERS_ADMIN
  # @param id The id of the user or &#39;me&#39;
  # @param [Hash] opts the optional parameters
  # @return [UserResource]
  describe 'get_user test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_user_tags
  # List tags for a user
  # 
  # @param user_id The id of the user
  # @param [Hash] opts the optional parameters
  # @return [Array<String>]
  describe 'get_user_tags test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_user_template
  # Get a single user template
  # 
  # @param id The id of the template
  # @param [Hash] opts the optional parameters
  # @return [TemplateResource]
  describe 'get_user_template test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_user_templates
  # List and search user templates
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :size The number of objects returned per page
  # @option opts [Integer] :page The number of the page returned, starting with 1
  # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
  # @return [PageResourceTemplateResource]
  describe 'get_user_templates test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_users
  # List and search users
  # Additional private info is included as USERS_ADMIN
  # @param [Hash] opts the optional parameters
  # @option opts [String] :filter_displayname Filter for users whose display name starts with provided string.
  # @option opts [String] :filter_email Filter for users whose email starts with provided string. Requires USERS_ADMIN permission
  # @option opts [String] :filter_firstname Filter for users whose first name starts with provided string. Requires USERS_ADMIN permission
  # @option opts [String] :filter_fullname Filter for users whose full name starts with provided string. Requires USERS_ADMIN permission
  # @option opts [String] :filter_lastname Filter for users whose last name starts with provided string. Requires USERS_ADMIN permission
  # @option opts [String] :filter_username Filter for users whose username starts with the provided string. Requires USERS_ADMIN permission
  # @option opts [String] :filter_tag Filter for users who have a given tag
  # @option opts [String] :filter_group Filter for users in a given group, by unique name
  # @option opts [Integer] :size The number of objects returned per page
  # @option opts [Integer] :page The number of the page returned, starting with 1
  # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
  # @return [PageResourceUserBaseResource]
  describe 'get_users test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for password_reset
  # Choose a new password after a reset
  # Finish resetting a user&#39;s password using the secret provided from the password-reset endpoint.  Password should be in plain text and will be encrypted on receipt. Use SSL for security.
  # @param id The id of the user
  # @param [Hash] opts the optional parameters
  # @option opts [NewPasswordRequest] :new_password_request The new password request object
  # @return [nil]
  describe 'password_reset test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for register_user
  # Register a new user
  # Password should be in plain text and will be encrypted on receipt. Use SSL for security
  # @param [Hash] opts the optional parameters
  # @option opts [UserResource] :user_resource The user resource object
  # @return [UserResource]
  describe 'register_user test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for remove_user_tag
  # Remove a tag from a user
  # 
  # @param user_id The id of the user
  # @param tag The tag to remove
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'remove_user_tag test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for set_password
  # Set a user&#39;s password
  # Password should be in plain text and will be encrypted on receipt. Use SSL for security.
  # @param id The id of the user
  # @param [Hash] opts the optional parameters
  # @option opts [String] :password The new plain text password
  # @return [nil]
  describe 'set_password test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for start_password_reset
  # Reset a user&#39;s password
  # A reset code will be generated and a &#39;forgot_password&#39; BRE event will be fired with that code; this can be routed to the user as needed and submitted to the &#39;choose a new password&#39; endpoint.
  # @param id The id of the user
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'start_password_reset test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_user
  # Update a user
  # Password will not be edited on this endpoint, use password specific endpoints.
  # @param id The id of the user or &#39;me&#39;
  # @param [Hash] opts the optional parameters
  # @option opts [UserResource] :user_resource The user resource object
  # @return [nil]
  describe 'update_user test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_user_template
  # Update a user template
  # 
  # @param id The id of the template
  # @param [Hash] opts the optional parameters
  # @option opts [TemplateResource] :user_template_resource The user template resource object
  # @return [nil]
  describe 'update_user_template test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
