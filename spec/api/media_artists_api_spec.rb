=begin
#Knetik Platform API Documentation Latest

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: Latest
Contact: support@knetik.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'spec_helper'
require 'json'

# Unit tests for SwaggerClient::MediaArtistsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'MediaArtistsApi' do
  before do
    # run before each test
    @instance = SwaggerClient::MediaArtistsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of MediaArtistsApi' do
    it 'should create an instact of MediaArtistsApi' do
      expect(@instance).to be_instance_of(SwaggerClient::MediaArtistsApi)
    end
  end

  # unit tests for add_artist_using_post
  # Adds a new artist in the system
  # Adds a new artist in the system. Use specific media contributions endpoint to add contributions
  # @param [Hash] opts the optional parameters
  # @option opts [ArtistResource] :artist_resource The new artist
  # @return [ArtistResource]
  describe 'add_artist_using_post test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_artist_template_using_post
  # Create an artist template
  # Artist Templates define a type of artist and the properties they have
  # @param [Hash] opts the optional parameters
  # @option opts [TemplateResource] :artist_template_resource The artist template resource object
  # @return [TemplateResource]
  describe 'create_artist_template_using_post test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_artist_template_using_delete
  # Delete an artist template
  # If cascade &#x3D; &#39;detach&#39;, it will force delete the template even if it&#39;s attached to other objects
  # @param id The id of the template
  # @param [Hash] opts the optional parameters
  # @option opts [String] :cascade The value needed to delete used templates
  # @return [nil]
  describe 'delete_artist_template_using_delete test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_artist_using_delete
  # Removes an artist from the system IF no resources are attached to it
  # 
  # @param id The artist id
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_artist_using_delete test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_artist_template_using_get
  # Get a single artist template
  # 
  # @param id The id of the template
  # @param [Hash] opts the optional parameters
  # @return [TemplateResource]
  describe 'get_artist_template_using_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_artist_templates_using_get
  # List and search artist templates
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :size The number of objects returned per page
  # @option opts [Integer] :page The number of the page returned, starting with 1
  # @option opts [String] :order a comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
  # @return [PageTemplateResource]
  describe 'get_artist_templates_using_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_artist_using_get
  # Loads a specific artist details
  # 
  # @param id The artist id
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :show_contributions The number of contributions to show fetch
  # @return [ArtistResource]
  describe 'get_artist_using_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for search_artists_using_get
  # Search for artists
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :filter_artists_by_name Filter for artists which name *STARTS* with the given string
  # @option opts [Integer] :size The number of objects returned per page
  # @option opts [Integer] :page The number of the page returned, starting with 1
  # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
  # @return [PageArtistResource]
  describe 'search_artists_using_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_artist_template_using_put
  # Update an artist template
  # 
  # @param id The id of the template
  # @param [Hash] opts the optional parameters
  # @option opts [TemplateResource] :artist_template_resource The artist template resource object
  # @return [nil]
  describe 'update_artist_template_using_put test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_artist_using_put
  # Modifies an artist details
  # 
  # @param id The artist id
  # @param [Hash] opts the optional parameters
  # @option opts [ArtistResource] :artist_resource The new artist
  # @return [nil]
  describe 'update_artist_using_put test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
