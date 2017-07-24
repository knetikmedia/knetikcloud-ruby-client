=begin
#Knetik Platform API Documentation latest 

#This is the spec for the Knetik API.  Use this in conjunction with the documentation found at https://knetikcloud.com.

OpenAPI spec version: latest 
Contact: support@knetik.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'date'

module KnetikCloudClient

  class ArtistResource
    # A map of additional properties, keyed on the property name.  Must match the names and types defined in the template for this item type
    attr_accessor :additional_properties

    # YYYY/MM/DD when this artist was born
    attr_accessor :born

    # The current number of contributions the artist has made
    attr_accessor :contribution_count

    # The list of media this artist has contributed to as well as role(s) during contribution.  Use media endpoint to add contributions
    attr_accessor :contributions

    # The date/time this resource was created in seconds since unix epoch
    attr_accessor :created_date

    # YYYY/MM/DD when this artist died
    attr_accessor :died

    # The unique ID for that resource
    attr_accessor :id

    # The user friendly name of that resource. Defaults to blank string
    attr_accessor :long_description

    # The user friendly name of that resource
    attr_accessor :name

    # The sort order priority ofr the artist.  Default 100
    attr_accessor :priority

    # The user friendly name of that resource. Defaults to blank string
    attr_accessor :short_description

    # An artist template this artist is validated against (private). May be null and no validation of additional_properties will be done
    attr_accessor :template

    # The date/time this resource was last updated in seconds since unix epoch
    attr_accessor :updated_date


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'additional_properties' => :'additional_properties',
        :'born' => :'born',
        :'contribution_count' => :'contribution_count',
        :'contributions' => :'contributions',
        :'created_date' => :'created_date',
        :'died' => :'died',
        :'id' => :'id',
        :'long_description' => :'long_description',
        :'name' => :'name',
        :'priority' => :'priority',
        :'short_description' => :'short_description',
        :'template' => :'template',
        :'updated_date' => :'updated_date'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'additional_properties' => :'Hash<String, Property>',
        :'born' => :'String',
        :'contribution_count' => :'Integer',
        :'contributions' => :'Array<ContributionResource>',
        :'created_date' => :'Integer',
        :'died' => :'String',
        :'id' => :'Integer',
        :'long_description' => :'String',
        :'name' => :'String',
        :'priority' => :'Integer',
        :'short_description' => :'String',
        :'template' => :'String',
        :'updated_date' => :'Integer'
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

      if attributes.has_key?(:'born')
        self.born = attributes[:'born']
      end

      if attributes.has_key?(:'contribution_count')
        self.contribution_count = attributes[:'contribution_count']
      end

      if attributes.has_key?(:'contributions')
        if (value = attributes[:'contributions']).is_a?(Array)
          self.contributions = value
        end
      end

      if attributes.has_key?(:'created_date')
        self.created_date = attributes[:'created_date']
      end

      if attributes.has_key?(:'died')
        self.died = attributes[:'died']
      end

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'long_description')
        self.long_description = attributes[:'long_description']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'priority')
        self.priority = attributes[:'priority']
      end

      if attributes.has_key?(:'short_description')
        self.short_description = attributes[:'short_description']
      end

      if attributes.has_key?(:'template')
        self.template = attributes[:'template']
      end

      if attributes.has_key?(:'updated_date')
        self.updated_date = attributes[:'updated_date']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @name.nil?
        invalid_properties.push("invalid value for 'name', name cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @name.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          additional_properties == o.additional_properties &&
          born == o.born &&
          contribution_count == o.contribution_count &&
          contributions == o.contributions &&
          created_date == o.created_date &&
          died == o.died &&
          id == o.id &&
          long_description == o.long_description &&
          name == o.name &&
          priority == o.priority &&
          short_description == o.short_description &&
          template == o.template &&
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
      [additional_properties, born, contribution_count, contributions, created_date, died, id, long_description, name, priority, short_description, template, updated_date].hash
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
