=begin
#Knetik Platform API Documentation latest 

#This is the spec for the Knetik API.  Use this in conjunction with the documentation found at https://knetikcloud.com

OpenAPI spec version: latest 
Contact: support@knetik.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'date'

module SwaggerClient

  class PaymentMethodResource
    # The date/time this resource was created in seconds since unix epoch
    attr_accessor :created_date

    attr_accessor :default

    # Whether this payment method is disabled or not
    attr_accessor :disabled

    # The expiration date for the payment method, expressed as seconds since epoch. Typically used for credit card payment methods
    attr_accessor :expiration_date

    # The expiration month (1 - 12) for the payment method. Typically used for credit card payment methods
    attr_accessor :expiration_month

    # The expiration year for the payment method. Typically used for credit card payment methods
    attr_accessor :expiration_year

    # The unique ID for that resource
    attr_accessor :id

    # The last 4 digits of the account number for the payment method. Typically used for credit card payment methods
    attr_accessor :last4

    # The user friendly name of that resource. Defaults to blank string
    attr_accessor :long_description

    # The user friendly name of that resource
    attr_accessor :name

    # The type of payment method. Must be a pre-existing value
    attr_accessor :payment_method_type

    # The generic payment type. Default is card
    attr_accessor :payment_type

    # The user friendly name of that resource. Defaults to blank string
    attr_accessor :short_description

    # The sort value for the payment method
    attr_accessor :sort

    # The unique token for the payment method
    attr_accessor :token

    # An optional unique identifier
    attr_accessor :unique_key

    # The date/time this resource was last updated in seconds since unix epoch
    attr_accessor :updated_date

    # The user's id. If null, indicates a shared payment method that any user can use (i.e., 'wallet')
    attr_accessor :user_id

    attr_accessor :verified

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
        :'created_date' => :'created_date',
        :'default' => :'default',
        :'disabled' => :'disabled',
        :'expiration_date' => :'expiration_date',
        :'expiration_month' => :'expiration_month',
        :'expiration_year' => :'expiration_year',
        :'id' => :'id',
        :'last4' => :'last4',
        :'long_description' => :'long_description',
        :'name' => :'name',
        :'payment_method_type' => :'payment_method_type',
        :'payment_type' => :'payment_type',
        :'short_description' => :'short_description',
        :'sort' => :'sort',
        :'token' => :'token',
        :'unique_key' => :'unique_key',
        :'updated_date' => :'updated_date',
        :'user_id' => :'user_id',
        :'verified' => :'verified'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'created_date' => :'Integer',
        :'default' => :'BOOLEAN',
        :'disabled' => :'BOOLEAN',
        :'expiration_date' => :'Integer',
        :'expiration_month' => :'Integer',
        :'expiration_year' => :'Integer',
        :'id' => :'Integer',
        :'last4' => :'String',
        :'long_description' => :'String',
        :'name' => :'String',
        :'payment_method_type' => :'PaymentMethodTypeResource',
        :'payment_type' => :'String',
        :'short_description' => :'String',
        :'sort' => :'Integer',
        :'token' => :'String',
        :'unique_key' => :'String',
        :'updated_date' => :'Integer',
        :'user_id' => :'Integer',
        :'verified' => :'BOOLEAN'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'created_date')
        self.created_date = attributes[:'created_date']
      end

      if attributes.has_key?(:'default')
        self.default = attributes[:'default']
      end

      if attributes.has_key?(:'disabled')
        self.disabled = attributes[:'disabled']
      end

      if attributes.has_key?(:'expiration_date')
        self.expiration_date = attributes[:'expiration_date']
      end

      if attributes.has_key?(:'expiration_month')
        self.expiration_month = attributes[:'expiration_month']
      end

      if attributes.has_key?(:'expiration_year')
        self.expiration_year = attributes[:'expiration_year']
      end

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'last4')
        self.last4 = attributes[:'last4']
      end

      if attributes.has_key?(:'long_description')
        self.long_description = attributes[:'long_description']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'payment_method_type')
        self.payment_method_type = attributes[:'payment_method_type']
      end

      if attributes.has_key?(:'payment_type')
        self.payment_type = attributes[:'payment_type']
      end

      if attributes.has_key?(:'short_description')
        self.short_description = attributes[:'short_description']
      end

      if attributes.has_key?(:'sort')
        self.sort = attributes[:'sort']
      end

      if attributes.has_key?(:'token')
        self.token = attributes[:'token']
      end

      if attributes.has_key?(:'unique_key')
        self.unique_key = attributes[:'unique_key']
      end

      if attributes.has_key?(:'updated_date')
        self.updated_date = attributes[:'updated_date']
      end

      if attributes.has_key?(:'user_id')
        self.user_id = attributes[:'user_id']
      end

      if attributes.has_key?(:'verified')
        self.verified = attributes[:'verified']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @name.nil?
        invalid_properties.push("invalid value for 'name', name cannot be nil.")
      end

      if @payment_method_type.nil?
        invalid_properties.push("invalid value for 'payment_method_type', payment_method_type cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @name.nil?
      return false if @payment_method_type.nil?
      payment_type_validator = EnumAttributeValidator.new('String', ["card", "bank_account"])
      return false unless payment_type_validator.valid?(@payment_type)
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] payment_type Object to be assigned
    def payment_type=(payment_type)
      validator = EnumAttributeValidator.new('String', ["card", "bank_account"])
      unless validator.valid?(payment_type)
        fail ArgumentError, "invalid value for 'payment_type', must be one of #{validator.allowable_values}."
      end
      @payment_type = payment_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          created_date == o.created_date &&
          default == o.default &&
          disabled == o.disabled &&
          expiration_date == o.expiration_date &&
          expiration_month == o.expiration_month &&
          expiration_year == o.expiration_year &&
          id == o.id &&
          last4 == o.last4 &&
          long_description == o.long_description &&
          name == o.name &&
          payment_method_type == o.payment_method_type &&
          payment_type == o.payment_type &&
          short_description == o.short_description &&
          sort == o.sort &&
          token == o.token &&
          unique_key == o.unique_key &&
          updated_date == o.updated_date &&
          user_id == o.user_id &&
          verified == o.verified
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [created_date, default, disabled, expiration_date, expiration_month, expiration_year, id, last4, long_description, name, payment_method_type, payment_type, short_description, sort, token, unique_key, updated_date, user_id, verified].hash
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