=begin
#Knetik Platform API Documentation latest 

#This is the spec for the Knetik API.  Use this in conjunction with the documentation found at https://knetikcloud.com

OpenAPI spec version: latest 
Contact: support@knetik.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'date'

module SwaggerClient

  class Video
    attr_accessor :active

    attr_accessor :author

    attr_accessor :authored

    attr_accessor :banned

    attr_accessor :category_id

    attr_accessor :category_name

    attr_accessor :contributors

    attr_accessor :created

    attr_accessor :embed

    attr_accessor :extension

    attr_accessor :height

    attr_accessor :id

    attr_accessor :length

    attr_accessor :location

    attr_accessor :long_description

    attr_accessor :mime_type

    attr_accessor :name

    attr_accessor :priority

    attr_accessor :privacy

    attr_accessor :published

    attr_accessor :short_description

    attr_accessor :size

    attr_accessor :tags

    attr_accessor :thumbnail

    attr_accessor :updated

    attr_accessor :uploader

    attr_accessor :views

    attr_accessor :whitelist

    attr_accessor :width

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'active' => :'active',
        :'author' => :'author',
        :'authored' => :'authored',
        :'banned' => :'banned',
        :'category_id' => :'category_id',
        :'category_name' => :'category_name',
        :'contributors' => :'contributors',
        :'created' => :'created',
        :'embed' => :'embed',
        :'extension' => :'extension',
        :'height' => :'height',
        :'id' => :'id',
        :'length' => :'length',
        :'location' => :'location',
        :'long_description' => :'long_description',
        :'mime_type' => :'mime_type',
        :'name' => :'name',
        :'priority' => :'priority',
        :'privacy' => :'privacy',
        :'published' => :'published',
        :'short_description' => :'short_description',
        :'size' => :'size',
        :'tags' => :'tags',
        :'thumbnail' => :'thumbnail',
        :'updated' => :'updated',
        :'uploader' => :'uploader',
        :'views' => :'views',
        :'whitelist' => :'whitelist',
        :'width' => :'width'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'active' => :'BOOLEAN',
        :'author' => :'Artist',
        :'authored' => :'Integer',
        :'banned' => :'BOOLEAN',
        :'category_id' => :'String',
        :'category_name' => :'String',
        :'contributors' => :'CollectionVideoContribution',
        :'created' => :'Integer',
        :'embed' => :'String',
        :'extension' => :'String',
        :'height' => :'Integer',
        :'id' => :'Integer',
        :'length' => :'Integer',
        :'location' => :'String',
        :'long_description' => :'String',
        :'mime_type' => :'String',
        :'name' => :'String',
        :'priority' => :'Integer',
        :'privacy' => :'String',
        :'published' => :'BOOLEAN',
        :'short_description' => :'String',
        :'size' => :'Integer',
        :'tags' => :'Array<VideoTag>',
        :'thumbnail' => :'String',
        :'updated' => :'Integer',
        :'uploader' => :'User',
        :'views' => :'Integer',
        :'whitelist' => :'Array<User>',
        :'width' => :'Integer'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'active')
        self.active = attributes[:'active']
      end

      if attributes.has_key?(:'author')
        self.author = attributes[:'author']
      end

      if attributes.has_key?(:'authored')
        self.authored = attributes[:'authored']
      end

      if attributes.has_key?(:'banned')
        self.banned = attributes[:'banned']
      end

      if attributes.has_key?(:'category_id')
        self.category_id = attributes[:'category_id']
      end

      if attributes.has_key?(:'category_name')
        self.category_name = attributes[:'category_name']
      end

      if attributes.has_key?(:'contributors')
        self.contributors = attributes[:'contributors']
      end

      if attributes.has_key?(:'created')
        self.created = attributes[:'created']
      end

      if attributes.has_key?(:'embed')
        self.embed = attributes[:'embed']
      end

      if attributes.has_key?(:'extension')
        self.extension = attributes[:'extension']
      end

      if attributes.has_key?(:'height')
        self.height = attributes[:'height']
      end

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'length')
        self.length = attributes[:'length']
      end

      if attributes.has_key?(:'location')
        self.location = attributes[:'location']
      end

      if attributes.has_key?(:'long_description')
        self.long_description = attributes[:'long_description']
      end

      if attributes.has_key?(:'mime_type')
        self.mime_type = attributes[:'mime_type']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'priority')
        self.priority = attributes[:'priority']
      end

      if attributes.has_key?(:'privacy')
        self.privacy = attributes[:'privacy']
      end

      if attributes.has_key?(:'published')
        self.published = attributes[:'published']
      end

      if attributes.has_key?(:'short_description')
        self.short_description = attributes[:'short_description']
      end

      if attributes.has_key?(:'size')
        self.size = attributes[:'size']
      end

      if attributes.has_key?(:'tags')
        if (value = attributes[:'tags']).is_a?(Array)
          self.tags = value
        end
      end

      if attributes.has_key?(:'thumbnail')
        self.thumbnail = attributes[:'thumbnail']
      end

      if attributes.has_key?(:'updated')
        self.updated = attributes[:'updated']
      end

      if attributes.has_key?(:'uploader')
        self.uploader = attributes[:'uploader']
      end

      if attributes.has_key?(:'views')
        self.views = attributes[:'views']
      end

      if attributes.has_key?(:'whitelist')
        if (value = attributes[:'whitelist']).is_a?(Array)
          self.whitelist = value
        end
      end

      if attributes.has_key?(:'width')
        self.width = attributes[:'width']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      privacy_validator = EnumAttributeValidator.new('String', ["private", "friends", "public"])
      return false unless privacy_validator.valid?(@privacy)
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] privacy Object to be assigned
    def privacy=(privacy)
      validator = EnumAttributeValidator.new('String', ["private", "friends", "public"])
      unless validator.valid?(privacy)
        fail ArgumentError, "invalid value for 'privacy', must be one of #{validator.allowable_values}."
      end
      @privacy = privacy
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          active == o.active &&
          author == o.author &&
          authored == o.authored &&
          banned == o.banned &&
          category_id == o.category_id &&
          category_name == o.category_name &&
          contributors == o.contributors &&
          created == o.created &&
          embed == o.embed &&
          extension == o.extension &&
          height == o.height &&
          id == o.id &&
          length == o.length &&
          location == o.location &&
          long_description == o.long_description &&
          mime_type == o.mime_type &&
          name == o.name &&
          priority == o.priority &&
          privacy == o.privacy &&
          published == o.published &&
          short_description == o.short_description &&
          size == o.size &&
          tags == o.tags &&
          thumbnail == o.thumbnail &&
          updated == o.updated &&
          uploader == o.uploader &&
          views == o.views &&
          whitelist == o.whitelist &&
          width == o.width
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [active, author, authored, banned, category_id, category_name, contributors, created, embed, extension, height, id, length, location, long_description, mime_type, name, priority, privacy, published, short_description, size, tags, thumbnail, updated, uploader, views, whitelist, width].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map{ |v| _deserialize($1, v) } )
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = SwaggerClient.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map{ |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
