=begin
#Knetik Platform API Documentation latest 

#This is the spec for the Knetik API.  Use this in conjunction with the documentation found at https://knetikcloud.com

OpenAPI spec version: latest 
Contact: support@knetik.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'date'

module KnetikCloudClient

  class GroupResource
    # A map of additional properties, keyed on the property name.  Must match the names and types defined in the template for this item type
    attr_accessor :additional_properties

    # A description of the group. Max 250 characters
    attr_accessor :description

    # The number of users in the group
    attr_accessor :member_count

    # A message of the day for members of the group
    attr_accessor :message_of_the_day

    # The name of the group. Max 50 characters
    attr_accessor :name

    # The unique name of another group that this group is a subset of
    attr_accessor :parent

    # The status which describes whether other users can freely join the group or not
    attr_accessor :status

    # The number of users in child groups
    attr_accessor :sub_member_count

    # A group template this group is validated against. May be null and no validation of additional_properties will be done
    attr_accessor :template

    # Unique name used in url and references. Uppercase, lowercase, numbers and hyphens only. Max 50 characters. Cannot be altered once created
    attr_accessor :unique_name

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
        :'additional_properties' => :'additional_properties',
        :'description' => :'description',
        :'member_count' => :'member_count',
        :'message_of_the_day' => :'message_of_the_day',
        :'name' => :'name',
        :'parent' => :'parent',
        :'status' => :'status',
        :'sub_member_count' => :'sub_member_count',
        :'template' => :'template',
        :'unique_name' => :'unique_name'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'additional_properties' => :'Hash<String, Property>',
        :'description' => :'String',
        :'member_count' => :'Integer',
        :'message_of_the_day' => :'String',
        :'name' => :'String',
        :'parent' => :'String',
        :'status' => :'String',
        :'sub_member_count' => :'Integer',
        :'template' => :'String',
        :'unique_name' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'additional_properties')
        if (value = attributes[:'additional_properties']).is_a?(Array)
          self.additional_properties = value
        end
      end

      if attributes.has_key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.has_key?(:'member_count')
        self.member_count = attributes[:'member_count']
      end

      if attributes.has_key?(:'message_of_the_day')
        self.message_of_the_day = attributes[:'message_of_the_day']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'parent')
        self.parent = attributes[:'parent']
      end

      if attributes.has_key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.has_key?(:'sub_member_count')
        self.sub_member_count = attributes[:'sub_member_count']
      end

      if attributes.has_key?(:'template')
        self.template = attributes[:'template']
      end

      if attributes.has_key?(:'unique_name')
        self.unique_name = attributes[:'unique_name']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @name.nil?
        invalid_properties.push("invalid value for 'name', name cannot be nil.")
      end

      if @status.nil?
        invalid_properties.push("invalid value for 'status', status cannot be nil.")
      end

      if @unique_name.nil?
        invalid_properties.push("invalid value for 'unique_name', unique_name cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @name.nil?
      return false if @status.nil?
      status_validator = EnumAttributeValidator.new('String', ["open", "closed"])
      return false unless status_validator.valid?(@status)
      return false if @unique_name.nil?
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status)
      validator = EnumAttributeValidator.new('String', ["open", "closed"])
      unless validator.valid?(status)
        fail ArgumentError, "invalid value for 'status', must be one of #{validator.allowable_values}."
      end
      @status = status
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          additional_properties == o.additional_properties &&
          description == o.description &&
          member_count == o.member_count &&
          message_of_the_day == o.message_of_the_day &&
          name == o.name &&
          parent == o.parent &&
          status == o.status &&
          sub_member_count == o.sub_member_count &&
          template == o.template &&
          unique_name == o.unique_name
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [additional_properties, description, member_count, message_of_the_day, name, parent, status, sub_member_count, template, unique_name].hash
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
        temp_model = KnetikCloudClient.const_get(type).new
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
