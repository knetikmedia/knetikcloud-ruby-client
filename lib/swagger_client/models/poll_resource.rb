=begin
#Knetik Platform API Documentation latest 

#This is the spec for the Knetik API.  Use this in conjunction with the documentation found at https://knetikcloud.com

OpenAPI spec version: latest 
Contact: support@knetik.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'date'

module SwaggerClient

  class PollResource
    # Whether the poll is active
    attr_accessor :active

    # A map of additional properties, keyed on the property name.  Must match the names and types defined in the template for this item type
    attr_accessor :additional_properties

    # The answers to the poll
    attr_accessor :answers

    # The category for the poll
    attr_accessor :category

    # The date/time this resource was created in seconds since unix epoch
    attr_accessor :created_date

    # The id of the poll
    attr_accessor :id

    # The tags for the poll
    attr_accessor :tags

    # A poll template this poll is validated against (private). May be null and no validation of additional_properties will be done
    attr_accessor :template

    # The text of the poll
    attr_accessor :text

    # The media type of the poll
    attr_accessor :type

    # The date/time this resource was last updated in seconds since unix epoch
    attr_accessor :updated_date

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
        :'additional_properties' => :'additional_properties',
        :'answers' => :'answers',
        :'category' => :'category',
        :'created_date' => :'created_date',
        :'id' => :'id',
        :'tags' => :'tags',
        :'template' => :'template',
        :'text' => :'text',
        :'type' => :'type',
        :'updated_date' => :'updated_date'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'active' => :'BOOLEAN',
        :'additional_properties' => :'Hash<String, Property>',
        :'answers' => :'Array<PollAnswerResource>',
        :'category' => :'NestedCategory',
        :'created_date' => :'Integer',
        :'id' => :'String',
        :'tags' => :'Array<String>',
        :'template' => :'String',
        :'text' => :'String',
        :'type' => :'String',
        :'updated_date' => :'Integer'
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

      if attributes.has_key?(:'additional_properties')
        if (value = attributes[:'additional_properties']).is_a?(Array)
          self.additional_properties = value
        end
      end

      if attributes.has_key?(:'answers')
        if (value = attributes[:'answers']).is_a?(Array)
          self.answers = value
        end
      end

      if attributes.has_key?(:'category')
        self.category = attributes[:'category']
      end

      if attributes.has_key?(:'created_date')
        self.created_date = attributes[:'created_date']
      end

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'tags')
        if (value = attributes[:'tags']).is_a?(Array)
          self.tags = value
        end
      end

      if attributes.has_key?(:'template')
        self.template = attributes[:'template']
      end

      if attributes.has_key?(:'text')
        self.text = attributes[:'text']
      end

      if attributes.has_key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.has_key?(:'updated_date')
        self.updated_date = attributes[:'updated_date']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @active.nil?
        invalid_properties.push("invalid value for 'active', active cannot be nil.")
      end

      if @answers.nil?
        invalid_properties.push("invalid value for 'answers', answers cannot be nil.")
      end

      if @category.nil?
        invalid_properties.push("invalid value for 'category', category cannot be nil.")
      end

      if @text.nil?
        invalid_properties.push("invalid value for 'text', text cannot be nil.")
      end

      if @type.nil?
        invalid_properties.push("invalid value for 'type', type cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @active.nil?
      return false if @answers.nil?
      return false if @category.nil?
      return false if @text.nil?
      return false if @type.nil?
      type_validator = EnumAttributeValidator.new('String', ["TEXT", "IMAGE", "VIDEO", "AUDIO"])
      return false unless type_validator.valid?(@type)
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] type Object to be assigned
    def type=(type)
      validator = EnumAttributeValidator.new('String', ["TEXT", "IMAGE", "VIDEO", "AUDIO"])
      unless validator.valid?(type)
        fail ArgumentError, "invalid value for 'type', must be one of #{validator.allowable_values}."
      end
      @type = type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          active == o.active &&
          additional_properties == o.additional_properties &&
          answers == o.answers &&
          category == o.category &&
          created_date == o.created_date &&
          id == o.id &&
          tags == o.tags &&
          template == o.template &&
          text == o.text &&
          type == o.type &&
          updated_date == o.updated_date
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [active, additional_properties, answers, category, created_date, id, tags, template, text, type, updated_date].hash
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
