=begin
#Knetik Platform API Documentation latest 

#This is the spec for the Knetik API.  Use this in conjunction with the documentation found at https://demo.sandbox.knetikcloud.com

OpenAPI spec version: latest 
Contact: support@knetik.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'date'

module SwaggerClient

  class CommentResource
    # The comment content of that resource
    attr_accessor :content

    # The type of object this comment applies to (ex: video, article, etc). Required when passed to /comments
    attr_accessor :context

    # The id of the object this comment applies to.  Required when passed to /comments
    attr_accessor :context_id

    # The date/time this resource was created in seconds since epoch
    attr_accessor :created_date

    # The unique ID for that resource
    attr_accessor :id

    # The summary of that resource
    attr_accessor :summary

    # The date/time this resource was last updated in seconds since epoch
    attr_accessor :updated_date

    # The user who created the comment
    attr_accessor :user


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'content' => :'content',
        :'context' => :'context',
        :'context_id' => :'context_id',
        :'created_date' => :'created_date',
        :'id' => :'id',
        :'summary' => :'summary',
        :'updated_date' => :'updated_date',
        :'user' => :'user'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'content' => :'String',
        :'context' => :'String',
        :'context_id' => :'Integer',
        :'created_date' => :'Integer',
        :'id' => :'Integer',
        :'summary' => :'String',
        :'updated_date' => :'Integer',
        :'user' => :'SimpleUserResource'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'content')
        self.content = attributes[:'content']
      end

      if attributes.has_key?(:'context')
        self.context = attributes[:'context']
      end

      if attributes.has_key?(:'context_id')
        self.context_id = attributes[:'context_id']
      end

      if attributes.has_key?(:'created_date')
        self.created_date = attributes[:'created_date']
      end

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'summary')
        self.summary = attributes[:'summary']
      end

      if attributes.has_key?(:'updated_date')
        self.updated_date = attributes[:'updated_date']
      end

      if attributes.has_key?(:'user')
        self.user = attributes[:'user']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @content.nil?
        invalid_properties.push("invalid value for 'content', content cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @content.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          content == o.content &&
          context == o.context &&
          context_id == o.context_id &&
          created_date == o.created_date &&
          id == o.id &&
          summary == o.summary &&
          updated_date == o.updated_date &&
          user == o.user
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [content, context, context_id, created_date, id, summary, updated_date, user].hash
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
