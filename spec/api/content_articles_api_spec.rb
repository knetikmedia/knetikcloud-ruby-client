=begin
#Knetik Platform API Documentation latest 

#This is the spec for the Knetik API.  Use this in conjunction with the documentation found at https://demo.sandbox.knetikcloud.com

OpenAPI spec version: latest 
Contact: support@knetik.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'spec_helper'
require 'json'

# Unit tests for SwaggerClient::ContentArticlesApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ContentArticlesApi' do
  before do
    # run before each test
    @instance = SwaggerClient::ContentArticlesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ContentArticlesApi' do
    it 'should create an instact of ContentArticlesApi' do
      expect(@instance).to be_instance_of(SwaggerClient::ContentArticlesApi)
    end
  end

  # unit tests for create_article_template_using_post
  # Create an article template
  # Article Templates define a type of article and the properties they have
  # @param [Hash] opts the optional parameters
  # @option opts [TemplateResource] :article_template_resource The article template resource object
  # @return [TemplateResource]
  describe 'create_article_template_using_post test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_article_using_post
  # Create a new article
  # Articles are blobs of text with titles, a category and assets. Formatting and display of the text is in the hands of the front end.
  # @param [Hash] opts the optional parameters
  # @option opts [ArticleResource] :article_resource The new article
  # @return [ArticleResource]
  describe 'create_article_using_post test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_article_template_using_delete
  # Delete an article template
  # If cascade &#x3D; &#39;detach&#39;, it will force delete the template even if it&#39;s attached to other objects
  # @param id The id of the template
  # @param [Hash] opts the optional parameters
  # @option opts [String] :cascade The value needed to delete used templates
  # @return [nil]
  describe 'delete_article_template_using_delete test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_article_using_delete
  # Delete an existing article
  # 
  # @param id The article id
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_article_using_delete test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_article_template_using_get
  # Get a single article template
  # 
  # @param id The id of the template
  # @param [Hash] opts the optional parameters
  # @return [TemplateResource]
  describe 'get_article_template_using_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_article_templates_using_get
  # List and search article templates
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :size The number of objects returned per page
  # @option opts [Integer] :page The number of the page returned, starting with 1
  # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
  # @return [PageResourceTemplateResource]
  describe 'get_article_templates_using_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_article_using_get
  # Get a single article
  # 
  # @param id The article id
  # @param [Hash] opts the optional parameters
  # @return [ArticleResource]
  describe 'get_article_using_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_articles_using_get
  # List and search articles
  # Get a list of articles with optional filtering. Assets will not be filled in on the resources returned. Use &#39;Get a single article&#39; to retrieve the full resource with assets for a given item as needed.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :filter_category Filter for articles from a specific category by id
  # @option opts [String] :filter_tagset Filter for articles with specified tags (separated by comma)
  # @option opts [String] :filter_title Filter for articles whose title contains a string
  # @option opts [Integer] :size The number of objects returned per page
  # @option opts [Integer] :page The number of the page returned, starting with 1
  # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
  # @return [PageResourceArticleResource]
  describe 'get_articles_using_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_article_template_using_put
  # Update an article template
  # 
  # @param id The id of the template
  # @param [Hash] opts the optional parameters
  # @option opts [TemplateResource] :article_template_resource The article template resource object
  # @return [nil]
  describe 'update_article_template_using_put test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_article_using_put
  # Update an existing article
  # 
  # @param id The article id
  # @param [Hash] opts the optional parameters
  # @option opts [ArticleResource] :article_resource The article object
  # @return [nil]
  describe 'update_article_using_put test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
