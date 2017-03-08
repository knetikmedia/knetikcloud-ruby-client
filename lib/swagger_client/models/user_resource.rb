=begin
#Knetik Platform API Documentation latest 

#This is the spec for the Knetik API.  Use this in conjunction with the documentation found at https://knetikcloud.com

OpenAPI spec version: latest 
Contact: support@knetik.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'date'

module SwaggerClient

  class UserResource
    # A map of additional properties, keyed on the property name (private). Must match the names and types defined in the template for this user type, or be an extra not from the template
    attr_accessor :additional_properties

    # The first line of the user's address (private)
    attr_accessor :address

    # The second line of user's address (private)
    attr_accessor :address2

    # The url of the user's avatar image
    attr_accessor :avatar_url

    # Relationships where this user is the parent. Read-Only, manage through separate endpoints
    attr_accessor :children

    # The user's city (private)
    attr_accessor :city

    # The ISO3 code for the country from the user's address (private). Will be filled in based on GeoIP country at registration if not provided.
    attr_accessor :country_code

    # The code for the user's real money currency (private)
    attr_accessor :currency_code

    # The user's date of birth (private) as a unix timestamp
    attr_accessor :date_of_birth

    # The user's self description (private)
    attr_accessor :description

    # The chosen display name of the user, defaults to username if not present
    attr_accessor :display_name

    # The user's email address (private). May be required and/or unique depending on system configuration (both on by default). Must match standard email requirements if provided (RFC 2822)
    attr_accessor :email

    # The user's first name (private)
    attr_accessor :first_name

    # The user's full name (private)
    attr_accessor :fullname

    # The user's gender (private)
    attr_accessor :gender

    # The id of the user
    attr_accessor :id

    # The ISO3 code for the user's currency (private)
    attr_accessor :language_code

    # The user's last name (private)
    attr_accessor :last_name

    # The user's mobile phone number (private)
    attr_accessor :mobile_number

    # Relationships where this user is the child. Read-Only, manage through separate endpoints
    attr_accessor :parents

    # The plain text password for the new user account. Required for registration; ignored on profile update.  Use password specific endpoints for editing
    attr_accessor :password

    # The user's postal code (private)
    attr_accessor :postal_code

    # The user's state (private)
    attr_accessor :state

    # Tags on the user. Can only be set by admin. Max length per tag is 64 characters
    attr_accessor :tags

    # A user template this user is validated against (private). May be null and no validation of properties will be done
    attr_accessor :template

    # The code for the user's timezone (private)
    attr_accessor :timezone_code

    # The login username for the user (private). May be set to match email if system does not require usernames separately.
    attr_accessor :username


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'additional_properties' => :'additional_properties',
        :'address' => :'address',
        :'address2' => :'address2',
        :'avatar_url' => :'avatar_url',
        :'children' => :'children',
        :'city' => :'city',
        :'country_code' => :'country_code',
        :'currency_code' => :'currency_code',
        :'date_of_birth' => :'date_of_birth',
        :'description' => :'description',
        :'display_name' => :'display_name',
        :'email' => :'email',
        :'first_name' => :'first_name',
        :'fullname' => :'fullname',
        :'gender' => :'gender',
        :'id' => :'id',
        :'language_code' => :'language_code',
        :'last_name' => :'last_name',
        :'mobile_number' => :'mobile_number',
        :'parents' => :'parents',
        :'password' => :'password',
        :'postal_code' => :'postal_code',
        :'state' => :'state',
        :'tags' => :'tags',
        :'template' => :'template',
        :'timezone_code' => :'timezone_code',
        :'username' => :'username'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'additional_properties' => :'Hash<String, Property>',
        :'address' => :'String',
        :'address2' => :'String',
        :'avatar_url' => :'String',
        :'children' => :'Array<UserRelationshipReferenceResource>',
        :'city' => :'String',
        :'country_code' => :'String',
        :'currency_code' => :'String',
        :'date_of_birth' => :'Integer',
        :'description' => :'String',
        :'display_name' => :'String',
        :'email' => :'String',
        :'first_name' => :'String',
        :'fullname' => :'String',
        :'gender' => :'String',
        :'id' => :'Integer',
        :'language_code' => :'String',
        :'last_name' => :'String',
        :'mobile_number' => :'String',
        :'parents' => :'Array<UserRelationshipReferenceResource>',
        :'password' => :'String',
        :'postal_code' => :'String',
        :'state' => :'String',
        :'tags' => :'Array<String>',
        :'template' => :'String',
        :'timezone_code' => :'String',
        :'username' => :'String'
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

      if attributes.has_key?(:'address')
        self.address = attributes[:'address']
      end

      if attributes.has_key?(:'address2')
        self.address2 = attributes[:'address2']
      end

      if attributes.has_key?(:'avatar_url')
        self.avatar_url = attributes[:'avatar_url']
      end

      if attributes.has_key?(:'children')
        if (value = attributes[:'children']).is_a?(Array)
          self.children = value
        end
      end

      if attributes.has_key?(:'city')
        self.city = attributes[:'city']
      end

      if attributes.has_key?(:'country_code')
        self.country_code = attributes[:'country_code']
      end

      if attributes.has_key?(:'currency_code')
        self.currency_code = attributes[:'currency_code']
      end

      if attributes.has_key?(:'date_of_birth')
        self.date_of_birth = attributes[:'date_of_birth']
      end

      if attributes.has_key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.has_key?(:'display_name')
        self.display_name = attributes[:'display_name']
      end

      if attributes.has_key?(:'email')
        self.email = attributes[:'email']
      end

      if attributes.has_key?(:'first_name')
        self.first_name = attributes[:'first_name']
      end

      if attributes.has_key?(:'fullname')
        self.fullname = attributes[:'fullname']
      end

      if attributes.has_key?(:'gender')
        self.gender = attributes[:'gender']
      end

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'language_code')
        self.language_code = attributes[:'language_code']
      end

      if attributes.has_key?(:'last_name')
        self.last_name = attributes[:'last_name']
      end

      if attributes.has_key?(:'mobile_number')
        self.mobile_number = attributes[:'mobile_number']
      end

      if attributes.has_key?(:'parents')
        if (value = attributes[:'parents']).is_a?(Array)
          self.parents = value
        end
      end

      if attributes.has_key?(:'password')
        self.password = attributes[:'password']
      end

      if attributes.has_key?(:'postal_code')
        self.postal_code = attributes[:'postal_code']
      end

      if attributes.has_key?(:'state')
        self.state = attributes[:'state']
      end

      if attributes.has_key?(:'tags')
        if (value = attributes[:'tags']).is_a?(Array)
          self.tags = value
        end
      end

      if attributes.has_key?(:'template')
        self.template = attributes[:'template']
      end

      if attributes.has_key?(:'timezone_code')
        self.timezone_code = attributes[:'timezone_code']
      end

      if attributes.has_key?(:'username')
        self.username = attributes[:'username']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @email.nil?
        invalid_properties.push("invalid value for 'email', email cannot be nil.")
      end

      if @username.nil?
        invalid_properties.push("invalid value for 'username', username cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @email.nil?
      return false if @username.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          additional_properties == o.additional_properties &&
          address == o.address &&
          address2 == o.address2 &&
          avatar_url == o.avatar_url &&
          children == o.children &&
          city == o.city &&
          country_code == o.country_code &&
          currency_code == o.currency_code &&
          date_of_birth == o.date_of_birth &&
          description == o.description &&
          display_name == o.display_name &&
          email == o.email &&
          first_name == o.first_name &&
          fullname == o.fullname &&
          gender == o.gender &&
          id == o.id &&
          language_code == o.language_code &&
          last_name == o.last_name &&
          mobile_number == o.mobile_number &&
          parents == o.parents &&
          password == o.password &&
          postal_code == o.postal_code &&
          state == o.state &&
          tags == o.tags &&
          template == o.template &&
          timezone_code == o.timezone_code &&
          username == o.username
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [additional_properties, address, address2, avatar_url, children, city, country_code, currency_code, date_of_birth, description, display_name, email, first_name, fullname, gender, id, language_code, last_name, mobile_number, parents, password, postal_code, state, tags, template, timezone_code, username].hash
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
