=begin
#Knetik Platform API Documentation latest 

#This is the spec for the Knetik API.  Use this in conjunction with the documentation found at https://knetikcloud.com

OpenAPI spec version: latest 
Contact: support@knetik.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'spec_helper'
require 'json'

# Unit tests for KnetikCloudClient::MediaVideosApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'MediaVideosApi' do
  before do
    # run before each test
    @instance = KnetikCloudClient::MediaVideosApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of MediaVideosApi' do
    it 'should create an instact of MediaVideosApi' do
      expect(@instance).to be_instance_of(KnetikCloudClient::MediaVideosApi)
    end
  end

  # unit tests for add_user_to_video_whitelist
  # Adds a user to a video&#39;s whitelist
  # Whitelisted users can view video regardless of privacy setting.
  # @param id The video id
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :user_id The user id
  # @return [nil]
  describe 'add_user_to_video_whitelist test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for add_video
  # Adds a new video in the system
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [VideoResource] :video_resource The video object
  # @return [VideoResource]
  describe 'add_video test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for add_video_comment
  # Add a new video comment
  # 
  # @param video_id The video id 
  # @param [Hash] opts the optional parameters
  # @option opts [CommentResource] :comment_resource The comment object
  # @return [CommentResource]
  describe 'add_video_comment test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for add_video_contributor
  # Adds a contributor to a video
  # 
  # @param video_id The video id
  # @param [Hash] opts the optional parameters
  # @option opts [ContributionResource] :contribution_resource The contribution object
  # @return [nil]
  describe 'add_video_contributor test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for add_video_flag
  # Add a new flag
  # 
  # @param video_id The video id
  # @param [Hash] opts the optional parameters
  # @option opts [String] :reason The flag reason
  # @return [FlagResource]
  describe 'add_video_flag test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for add_video_relationships
  # Adds one or more existing videos as related to this one
  # 
  # @param video_id The video id
  # @param [Hash] opts the optional parameters
  # @option opts [VideoRelationshipResource] :video_relationship_resource The video relationship object 
  # @return [VideoRelationshipResource]
  describe 'add_video_relationships test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_video_disposition
  # Create a video disposition
  # 
  # @param video_id The video id
  # @param [Hash] opts the optional parameters
  # @option opts [DispositionResource] :disposition_resource The disposition object
  # @return [DispositionResource]
  describe 'create_video_disposition test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_video
  # Deletes a video from the system if no resources are attached to it
  # 
  # @param id The video id
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_video test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_video_comment
  # Delete a video comment
  # 
  # @param video_id The video id
  # @param id The comment id
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_video_comment test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_video_disposition
  # Delete a video disposition
  # 
  # @param disposition_id The disposition id
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_video_disposition test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_video_flag
  # Delete a flag
  # 
  # @param video_id The video id
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_video_flag test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_video_relationship
  # Delete a video&#39;s relationship
  # 
  # @param video_id The video id
  # @param id The relationship id
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_video_relationship test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_user_videos
  # Get user videos
  # 
  # @param user_id The user id
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :exclude_flagged Skip videos that have been flagged by the current user
  # @option opts [Integer] :size The number of objects returned per page
  # @option opts [Integer] :page The number of the page returned, starting with 1
  # @return [PageResourceVideoResource]
  describe 'get_user_videos test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_video
  # Loads a specific video details
  # 
  # @param id The video id
  # @param [Hash] opts the optional parameters
  # @return [VideoResource]
  describe 'get_video test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_video_comments
  # Returns a page of comments for a video
  # 
  # @param video_id The video id
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :size The number of objects returned per page
  # @option opts [Integer] :page The number of the page returned, starting with 1
  # @return [PageResourceCommentResource]
  describe 'get_video_comments test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_video_dispositions
  # Returns a page of dispositions for a video
  # 
  # @param video_id The video id
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :size The number of objects returned per page
  # @option opts [Integer] :page The number of the page returned, starting with 1
  # @return [PageResourceDispositionResource]
  describe 'get_video_dispositions test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_video_relationships
  # Returns a page of video relationships
  # 
  # @param video_id The video id
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :size The number of objects returned per page
  # @option opts [Integer] :page The number of the page returned, starting with 1
  # @return [PageResourceVideoRelationshipResource]
  describe 'get_video_relationships test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_videos
  # Search videos using the documented filters
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :exclude_flagged Skip videos that have been flagged by the current user
  # @option opts [String] :filter_videos_by_uploader Filter for videos by uploader id
  # @option opts [String] :filter_category Filter for videos from a specific category by id
  # @option opts [String] :filter_tagset Filter for videos with specified tags (separated by comma)
  # @option opts [String] :filter_videos_by_name Filter for videos which name *STARTS* with the given string
  # @option opts [String] :filter_videos_by_contributor Filter for videos with contribution from the artist specified by ID
  # @option opts [String] :filter_videos_by_author Filter for videos with an artist as author specified by ID
  # @option opts [BOOLEAN] :filter_has_author Filter for videos that have an author set if true, or that have no author if false
  # @option opts [BOOLEAN] :filter_has_uploader Filter for videos that have an uploader set if true, or that have no uploader if false
  # @option opts [String] :filter_related_to Filter for videos that have designated a particular video as the TO of a relationship. Pattern should match VIDEO_ID or VIDEO_ID:DETAILS to match with a specific details string as well
  # @option opts [BOOLEAN] :filter_friends Filter for videos uploaded by friends. &#39;true&#39; for friends of the caller (requires user token) or a user id for a specific user&#39;s friends (requires VIDEOS_ADMIN permission)
  # @option opts [String] :filter_disposition Filter for videos a given user has a given disposition towards. USER_ID:DISPOSITION where USER_ID is the id of the user who has this disposition or &#39;me&#39; for the caller (requires user token for &#39;me&#39;) and DISPOSITION is the name of the disposition. E.G. filter_disposition&#x3D;123:like or filter_disposition&#x3D;me:favorite
  # @option opts [Integer] :size The number of objects returned per page
  # @option opts [Integer] :page The number of the page returned, starting with 1
  # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
  # @return [PageResourceVideoResource]
  describe 'get_videos test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for remove_user_from_video_whitelist
  # Removes a user from a video&#39;s whitelist
  # Remove the user with the id given in the path from the whitelist of users that can view this video regardless of privacy setting.
  # @param video_id The video id
  # @param id The user id
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'remove_user_from_video_whitelist test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for remove_video_contributor
  # Removes a contributor from a video
  # 
  # @param video_id The video id
  # @param id The contributor id
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'remove_video_contributor test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_video
  # Modifies a video&#39;s details
  # 
  # @param id The video id
  # @param [Hash] opts the optional parameters
  # @option opts [VideoResource] :video_resource The video object
  # @return [nil]
  describe 'update_video test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_video_comment
  # Update a video comment
  # 
  # @param video_id The video id
  # @param id The comment id
  # @param [Hash] opts the optional parameters
  # @option opts [String] :content The comment content
  # @return [nil]
  describe 'update_video_comment test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_video_relationship
  # Update a video&#39;s relationship details
  # 
  # @param video_id The video id
  # @param relationship_id The relationship id
  # @param [Hash] opts the optional parameters
  # @option opts [String] :details The video relationship details
  # @return [nil]
  describe 'update_video_relationship test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for view_video
  # Increment a video&#39;s view count
  # 
  # @param id The video id
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'view_video test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
