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

# Unit tests for KnetikCloudClient::ContentCommentsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ContentCommentsApi' do
  before do
    # run before each test
    @instance = KnetikCloudClient::ContentCommentsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ContentCommentsApi' do
    it 'should create an instance of ContentCommentsApi' do
      expect(@instance).to be_instance_of(KnetikCloudClient::ContentCommentsApi)
    end
  end

  # unit tests for add_comment
  # Add a new comment
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [CommentResource] :comment_resource The comment to be added
  # @return [CommentResource]
  describe 'add_comment test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_comment
  # Delete a comment
  # 
  # @param id The comment id
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_comment test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_comment
  # Return a comment
  # 
  # @param id The comment id
  # @param [Hash] opts the optional parameters
  # @return [CommentResource]
  describe 'get_comment test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_comments
  # Returns a page of comments
  # 
  # @param context Get comments by context type
  # @param context_id Get comments by context id
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :size The number of objects returned per page
  # @option opts [Integer] :page The number of the page returned, starting with 1
  # @return [PageResourceCommentResource]
  describe 'get_comments test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for search_comments
  # Search the comment index
  # The body is an ElasticSearch query json. Please see their &lt;a href&#x3D;&#39;https://www.elastic.co/guide/en/elasticsearch/reference/current/index.html&#39;&gt;documentation&lt;/a&gt; for details on the format and search options
  # @param [Hash] opts the optional parameters
  # @option opts [Object] :query The search query
  # @option opts [Integer] :size The number of objects returned per page
  # @option opts [Integer] :page The number of the page returned, starting with 1
  # @return [CommentSearch]
  describe 'search_comments test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_comment
  # Update a comment
  # 
  # @param id The comment id
  # @param [Hash] opts the optional parameters
  # @option opts [String] :content The comment content
  # @return [nil]
  describe 'update_comment test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
