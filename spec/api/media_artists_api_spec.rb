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

# Unit tests for KnetikCloudClient::MediaArtistsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'MediaArtistsApi' do
  before do
    # run before each test
    @instance = KnetikCloudClient::MediaArtistsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of MediaArtistsApi' do
    it 'should create an instance of MediaArtistsApi' do
      expect(@instance).to be_instance_of(KnetikCloudClient::MediaArtistsApi)
    end
  end

  # unit tests for add_artist
  # Adds a new artist in the system
  # Adds a new artist in the system. Use specific media contributions endpoint to add contributions
  # @param [Hash] opts the optional parameters
  # @option opts [ArtistResource] :artist_resource The new artist
  # @return [ArtistResource]
  describe 'add_artist test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_artist_template
  # Create an artist template
  # Artist Templates define a type of artist and the properties they have
  # @param [Hash] opts the optional parameters
  # @option opts [TemplateResource] :artist_template_resource The artist template resource object
  # @return [TemplateResource]
  describe 'create_artist_template test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_artist
  # Removes an artist from the system IF no resources are attached to it
  # 
  # @param id The artist id
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_artist test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_artist_template
  # Delete an artist template
  # If cascade &#x3D; &#39;detach&#39;, it will force delete the template even if it&#39;s attached to other objects
  # @param id The id of the template
  # @param [Hash] opts the optional parameters
  # @option opts [String] :cascade The value needed to delete used templates
  # @return [nil]
  describe 'delete_artist_template test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_artist
  # Loads a specific artist details
  # 
  # @param id The artist id
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :show_contributions The number of contributions to show fetch
  # @return [ArtistResource]
  describe 'get_artist test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_artist_template
  # Get a single artist template
  # 
  # @param id The id of the template
  # @param [Hash] opts the optional parameters
  # @return [TemplateResource]
  describe 'get_artist_template test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_artist_templates
  # List and search artist templates
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :size The number of objects returned per page
  # @option opts [Integer] :page The number of the page returned, starting with 1
  # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
  # @return [PageResourceTemplateResource]
  describe 'get_artist_templates test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_artists
  # Search for artists
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :filter_artists_by_name Filter for artists which name *STARTS* with the given string
  # @option opts [Integer] :size The number of objects returned per page
  # @option opts [Integer] :page The number of the page returned, starting with 1
  # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
  # @return [PageResourceArtistResource]
  describe 'get_artists test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_artist
  # Modifies an artist details
  # 
  # @param id The artist id
  # @param [Hash] opts the optional parameters
  # @option opts [ArtistResource] :artist_resource The new artist
  # @return [nil]
  describe 'update_artist test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_artist_template
  # Update an artist template
  # 
  # @param id The id of the template
  # @param [Hash] opts the optional parameters
  # @option opts [TemplateResource] :artist_template_resource The artist template resource object
  # @return [TemplateResource]
  describe 'update_artist_template test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
