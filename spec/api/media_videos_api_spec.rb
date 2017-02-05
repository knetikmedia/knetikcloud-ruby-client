=begin
#Knetik Platform API Documentation latest 

#This is the spec for the Knetik API.  Use this in conjunction with the documentation found at https://demo.sandbox.knetikcloud.com

OpenAPI spec version: latest 
Contact: support@knetik.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'spec_helper'
require 'json'

# Unit tests for SwaggerClient::MediaVideosApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'MediaVideosApi' do
  before do
    # run before each test
    @instance = SwaggerClient::MediaVideosApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of MediaVideosApi' do
    it 'should create an instact of MediaVideosApi' do
      expect(@instance).to be_instance_of(SwaggerClient::MediaVideosApi)
    end
  end

  # unit tests for add_comment_using_post1
  # Add a new video comment
  # 
  # @param video_id The video id 
  # @param [Hash] opts the optional parameters
  # @option opts [CommentResource] :comment_resource The comment object
  # @return [CommentResource]
  describe 'add_comment_using_post1 test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for add_contributor_using_post
  # Adds a contributor to a video
  # 
  # @param video_id The video id
  # @param [Hash] opts the optional parameters
  # @option opts [ContributionResource] :contribution_resource The contribution object
  # @return [nil]
  describe 'add_contributor_using_post test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for add_disposition_using_post1
  # Add a new Video disposition
  # 
  # @param video_id The video id
  # @param [Hash] opts the optional parameters
  # @option opts [DispositionResource] :disposition_resource The disposition object
  # @return [DispositionResource]
  describe 'add_disposition_using_post1 test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for add_flag_using_post
  # Add a new flag
  # 
  # @param video_id The video id
  # @param [Hash] opts the optional parameters
  # @option opts [String] :reason The flag reason
  # @return [nil]
  describe 'add_flag_using_post test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for add_related_using_post
  # Adds one or more existing videos as related to this one
  # 
  # @param video_id The video id
  # @param [Hash] opts the optional parameters
  # @option opts [VideoRelationshipResource] :video_relationship_resource The video relationship object 
  # @return [VideoRelationshipResource]
  describe 'add_related_using_post test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for add_video_using_post
  # Adds a new video in the system
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [VideoResource] :video_resource The video object
  # @return [VideoResource]
  describe 'add_video_using_post test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for add_whitelist_using_post
  # Adds a user to a video&#39;s whitelist
  # Whitelisted users can view video regardless of privacy setting.
  # @param id The video id
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :user_id The user id
  # @return [nil]
  describe 'add_whitelist_using_post test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_comment_using_delete1
  # Delete a video comment
  # 
  # @param video_id The video id
  # @param id The comment id
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_comment_using_delete1 test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_disposition_using_delete1
  # Delete a video comment
  # 
  # @param disposition_id The disposition id
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_disposition_using_delete1 test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_flag_using_delete
  # Delete a flag
  # 
  # @param video_id The video id
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_flag_using_delete test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_relationship_using_delete1
  # Delete a video&#39;s relationship
  # 
  # @param video_id The video id
  # @param id The relationship id
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_relationship_using_delete1 test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_video_using_delete
  # Removes a video from the system if no resources are attached to it
  # 
  # @param id The video id
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_video_using_delete test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_comments_using_get1
  # Returns a page of comments for a video
  # 
  # @param video_id The video id
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :size The number of objects returned per page
  # @option opts [Integer] :page The number of the page returned, starting with 1
  # @return [PageResourceCommentResource]
  describe 'get_comments_using_get1 test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_dispositions_using_get1
  # Returns a page of dispositions for a video
  # 
  # @param video_id The video id
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :size The number of objects returned per page
  # @option opts [Integer] :page The number of the page returned, starting with 1
  # @return [PageResourceDispositionResource]
  describe 'get_dispositions_using_get1 test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_related_using_get
  # Returns a page of video relationships
  # 
  # @param video_id The video id
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :size The number of objects returned per page
  # @option opts [Integer] :page The number of the page returned, starting with 1
  # @return [PageResourceVideoRelationshipResource]
  describe 'get_related_using_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_user_videos_using_get
  # Get user videos
  # 
  # @param user_id The user id
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :exclude_flagged Skip videos that have been flagged by the current user
  # @option opts [Integer] :size The number of objects returned per page
  # @option opts [Integer] :page The number of the page returned, starting with 1
  # @return [PageResourceVideoResource]
  describe 'get_user_videos_using_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_video_using_get
  # Loads a specific video details
  # 
  # @param id The video id
  # @param [Hash] opts the optional parameters
  # @return [VideoResource]
  describe 'get_video_using_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for remove_contributor_using_delete
  # Removes a contributor from a video
  # 
  # @param video_id The video id
  # @param id The contributor id
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'remove_contributor_using_delete test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for remove_whitelist_using_delete
  # Removes a user from a video&#39;s whitelist
  # Remove the user with the id given in the path from the whitelist of users that can view this video regardless of privacy setting.
  # @param video_id The video id
  # @param id The user id
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'remove_whitelist_using_delete test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for search_videos_using_get
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
  describe 'search_videos_using_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_comment_using_put1
  # Update video comment content 
  # 
  # @param video_id The video id
  # @param id The comment id
  # @param [Hash] opts the optional parameters
  # @option opts [String] :content The comment content
  # @return [nil]
  describe 'update_comment_using_put1 test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_relationship_using_put1
  # Update a video&#39;s relationship details
  # 
  # @param video_id The video id
  # @param relationship_id The relationship id
  # @param [Hash] opts the optional parameters
  # @option opts [String] :details The video relationship details
  # @return [nil]
  describe 'update_relationship_using_put1 test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_video_using_put
  # Modifies a video&#39;s details
  # 
  # @param id The video id
  # @param [Hash] opts the optional parameters
  # @option opts [VideoResource] :video_resource The video object
  # @return [nil]
  describe 'update_video_using_put test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for view_video_using_post
  # Increment a video&#39;s view count
  # 
  # @param id The video id
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'view_video_using_post test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
