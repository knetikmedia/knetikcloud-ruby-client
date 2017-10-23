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

# Unit tests for KnetikCloudClient::ContentPollsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ContentPollsApi' do
  before do
    # run before each test
    @instance = KnetikCloudClient::ContentPollsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ContentPollsApi' do
    it 'should create an instance of ContentPollsApi' do
      expect(@instance).to be_instance_of(KnetikCloudClient::ContentPollsApi)
    end
  end

  # unit tests for answer_poll
  # Add your vote to a poll
  # 
  # @param id The poll id
  # @param [Hash] opts the optional parameters
  # @option opts [StringWrapper] :answer_key The answer key
  # @return [PollResponseResource]
  describe 'answer_poll test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_poll
  # Create a new poll
  # Polls are blobs of text with titles, a category and assets. Formatting and display of the text is in the hands of the front end.
  # @param [Hash] opts the optional parameters
  # @option opts [PollResource] :poll_resource The poll object
  # @return [PollResource]
  describe 'create_poll test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_poll_template
  # Create a poll template
  # Poll templates define a type of poll and the properties they have
  # @param [Hash] opts the optional parameters
  # @option opts [TemplateResource] :poll_template_resource The poll template resource object
  # @return [TemplateResource]
  describe 'create_poll_template test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_poll
  # Delete an existing poll
  # 
  # @param id The poll id
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_poll test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_poll_template
  # Delete a poll template
  # If cascade &#x3D; &#39;detach&#39;, it will force delete the template even if it&#39;s attached to other objects
  # @param id The id of the template
  # @param [Hash] opts the optional parameters
  # @option opts [String] :cascade The value needed to delete used templates
  # @return [nil]
  describe 'delete_poll_template test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_poll
  # Get a single poll
  # 
  # @param id The poll id
  # @param [Hash] opts the optional parameters
  # @return [PollResource]
  describe 'get_poll test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_poll_answer
  # Get poll answer
  # 
  # @param id The poll id
  # @param [Hash] opts the optional parameters
  # @return [PollResponseResource]
  describe 'get_poll_answer test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_poll_template
  # Get a single poll template
  # 
  # @param id The id of the template
  # @param [Hash] opts the optional parameters
  # @return [TemplateResource]
  describe 'get_poll_template test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_poll_templates
  # List and search poll templates
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :size The number of objects returned per page
  # @option opts [Integer] :page The number of the page returned, starting with 1
  # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
  # @return [PageResourceTemplateResource]
  describe 'get_poll_templates test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_polls
  # List and search polls
  # Get a list of polls with optional filtering. Assets will not be filled in on the resources returned. Use &#39;Get a single poll&#39; to retrieve the full resource with assets for a given item as needed.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :filter_category Filter for polls from a specific category by id
  # @option opts [String] :filter_tagset Filter for polls with specified tags (separated by comma)
  # @option opts [String] :filter_text Filter for polls whose text contains a string
  # @option opts [Integer] :size The number of objects returned per page
  # @option opts [Integer] :page The number of the page returned
  # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
  # @return [PageResourcePollResource]
  describe 'get_polls test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_poll
  # Update an existing poll
  # 
  # @param id The poll id
  # @param [Hash] opts the optional parameters
  # @option opts [PollResource] :poll_resource The poll object
  # @return [PollResource]
  describe 'update_poll test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_poll_template
  # Update a poll template
  # 
  # @param id The id of the template
  # @param [Hash] opts the optional parameters
  # @option opts [TemplateResource] :poll_template_resource The poll template resource object
  # @return [TemplateResource]
  describe 'update_poll_template test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
