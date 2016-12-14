=begin
#Knetik Platform API Documentation Latest

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: Latest
Contact: support@knetik.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'date'

module SwaggerClient

  class User
    attr_accessor :additional_properties

    attr_accessor :address

    attr_accessor :address2

    attr_accessor :affiliate

    attr_accessor :avatar_url

    attr_accessor :city

    attr_accessor :country

    attr_accessor :currency

    attr_accessor :date_created

    attr_accessor :date_of_birth

    attr_accessor :date_updated

    attr_accessor :description

    attr_accessor :display_name

    attr_accessor :email

    attr_accessor :first_name

    attr_accessor :fullname

    attr_accessor :gender

    attr_accessor :guest

    attr_accessor :id

    attr_accessor :invite_token

    attr_accessor :lang

    attr_accessor :last_activity

    attr_accessor :last_login

    attr_accessor :last_name

    attr_accessor :lockout_attempts

    attr_accessor :lockout_date

    attr_accessor :mobile_number

    attr_accessor :old_id

    attr_accessor :password

    attr_accessor :postal_code

    attr_accessor :properties_string

    attr_accessor :roles

    attr_accessor :state

    attr_accessor :status

    attr_accessor :template

    attr_accessor :timezone

    attr_accessor :token

    attr_accessor :type_hint

    attr_accessor :username


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'additional_properties' => :'additional_properties',
        :'address' => :'address',
        :'address2' => :'address2',
        :'affiliate' => :'affiliate',
        :'avatar_url' => :'avatar_url',
        :'city' => :'city',
        :'country' => :'country',
        :'currency' => :'currency',
        :'date_created' => :'date_created',
        :'date_of_birth' => :'date_of_birth',
        :'date_updated' => :'date_updated',
        :'description' => :'description',
        :'display_name' => :'display_name',
        :'email' => :'email',
        :'first_name' => :'first_name',
        :'fullname' => :'fullname',
        :'gender' => :'gender',
        :'guest' => :'guest',
        :'id' => :'id',
        :'invite_token' => :'invite_token',
        :'lang' => :'lang',
        :'last_activity' => :'last_activity',
        :'last_login' => :'last_login',
        :'last_name' => :'last_name',
        :'lockout_attempts' => :'lockout_attempts',
        :'lockout_date' => :'lockout_date',
        :'mobile_number' => :'mobile_number',
        :'old_id' => :'old_id',
        :'password' => :'password',
        :'postal_code' => :'postal_code',
        :'properties_string' => :'properties_string',
        :'roles' => :'roles',
        :'state' => :'state',
        :'status' => :'status',
        :'template' => :'template',
        :'timezone' => :'timezone',
        :'token' => :'token',
        :'type_hint' => :'type_hint',
        :'username' => :'username'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'additional_properties' => :'Hash<String, Property>',
        :'address' => :'String',
        :'address2' => :'String',
        :'affiliate' => :'Affiliate',
        :'avatar_url' => :'String',
        :'city' => :'String',
        :'country' => :'Country',
        :'currency' => :'Currency',
        :'date_created' => :'Integer',
        :'date_of_birth' => :'Integer',
        :'date_updated' => :'Integer',
        :'description' => :'String',
        :'display_name' => :'String',
        :'email' => :'String',
        :'first_name' => :'String',
        :'fullname' => :'String',
        :'gender' => :'String',
        :'guest' => :'BOOLEAN',
        :'id' => :'Integer',
        :'invite_token' => :'String',
        :'lang' => :'Language',
        :'last_activity' => :'Integer',
        :'last_login' => :'Integer',
        :'last_name' => :'String',
        :'lockout_attempts' => :'Integer',
        :'lockout_date' => :'Integer',
        :'mobile_number' => :'String',
        :'old_id' => :'Integer',
        :'password' => :'String',
        :'postal_code' => :'String',
        :'properties_string' => :'String',
        :'roles' => :'Array<Role>',
        :'state' => :'String',
        :'status' => :'String',
        :'template' => :'String',
        :'timezone' => :'Timezone',
        :'token' => :'String',
        :'type_hint' => :'String',
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

      if attributes.has_key?(:'affiliate')
        self.affiliate = attributes[:'affiliate']
      end

      if attributes.has_key?(:'avatar_url')
        self.avatar_url = attributes[:'avatar_url']
      end

      if attributes.has_key?(:'city')
        self.city = attributes[:'city']
      end

      if attributes.has_key?(:'country')
        self.country = attributes[:'country']
      end

      if attributes.has_key?(:'currency')
        self.currency = attributes[:'currency']
      end

      if attributes.has_key?(:'date_created')
        self.date_created = attributes[:'date_created']
      end

      if attributes.has_key?(:'date_of_birth')
        self.date_of_birth = attributes[:'date_of_birth']
      end

      if attributes.has_key?(:'date_updated')
        self.date_updated = attributes[:'date_updated']
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

      if attributes.has_key?(:'guest')
        self.guest = attributes[:'guest']
      end

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'invite_token')
        self.invite_token = attributes[:'invite_token']
      end

      if attributes.has_key?(:'lang')
        self.lang = attributes[:'lang']
      end

      if attributes.has_key?(:'last_activity')
        self.last_activity = attributes[:'last_activity']
      end

      if attributes.has_key?(:'last_login')
        self.last_login = attributes[:'last_login']
      end

      if attributes.has_key?(:'last_name')
        self.last_name = attributes[:'last_name']
      end

      if attributes.has_key?(:'lockout_attempts')
        self.lockout_attempts = attributes[:'lockout_attempts']
      end

      if attributes.has_key?(:'lockout_date')
        self.lockout_date = attributes[:'lockout_date']
      end

      if attributes.has_key?(:'mobile_number')
        self.mobile_number = attributes[:'mobile_number']
      end

      if attributes.has_key?(:'old_id')
        self.old_id = attributes[:'old_id']
      end

      if attributes.has_key?(:'password')
        self.password = attributes[:'password']
      end

      if attributes.has_key?(:'postal_code')
        self.postal_code = attributes[:'postal_code']
      end

      if attributes.has_key?(:'properties_string')
        self.properties_string = attributes[:'properties_string']
      end

      if attributes.has_key?(:'roles')
        if (value = attributes[:'roles']).is_a?(Array)
          self.roles = value
        end
      end

      if attributes.has_key?(:'state')
        self.state = attributes[:'state']
      end

      if attributes.has_key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.has_key?(:'template')
        self.template = attributes[:'template']
      end

      if attributes.has_key?(:'timezone')
        self.timezone = attributes[:'timezone']
      end

      if attributes.has_key?(:'token')
        self.token = attributes[:'token']
      end

      if attributes.has_key?(:'type_hint')
        self.type_hint = attributes[:'type_hint']
      end

      if attributes.has_key?(:'username')
        self.username = attributes[:'username']
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
          affiliate == o.affiliate &&
          avatar_url == o.avatar_url &&
          city == o.city &&
          country == o.country &&
          currency == o.currency &&
          date_created == o.date_created &&
          date_of_birth == o.date_of_birth &&
          date_updated == o.date_updated &&
          description == o.description &&
          display_name == o.display_name &&
          email == o.email &&
          first_name == o.first_name &&
          fullname == o.fullname &&
          gender == o.gender &&
          guest == o.guest &&
          id == o.id &&
          invite_token == o.invite_token &&
          lang == o.lang &&
          last_activity == o.last_activity &&
          last_login == o.last_login &&
          last_name == o.last_name &&
          lockout_attempts == o.lockout_attempts &&
          lockout_date == o.lockout_date &&
          mobile_number == o.mobile_number &&
          old_id == o.old_id &&
          password == o.password &&
          postal_code == o.postal_code &&
          properties_string == o.properties_string &&
          roles == o.roles &&
          state == o.state &&
          status == o.status &&
          template == o.template &&
          timezone == o.timezone &&
          token == o.token &&
          type_hint == o.type_hint &&
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
      [additional_properties, address, address2, affiliate, avatar_url, city, country, currency, date_created, date_of_birth, date_updated, description, display_name, email, first_name, fullname, gender, guest, id, invite_token, lang, last_activity, last_login, last_name, lockout_attempts, lockout_date, mobile_number, old_id, password, postal_code, properties_string, roles, state, status, template, timezone, token, type_hint, username].hash
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
