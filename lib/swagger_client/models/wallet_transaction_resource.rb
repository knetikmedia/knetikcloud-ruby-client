=begin
#Knetik Platform API Documentation Latest

#This is the spec for the Knetik API.  Use this in conjunction with the documentation found at https://demo.sandbox.knetikcloud.com

OpenAPI spec version: Latest
Contact: support@knetik.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'date'

module SwaggerClient

  class WalletTransactionResource
    # The new balance of the wallet after the transaction
    attr_accessor :balance

    # The unix timestamp in seconds of the transaction
    attr_accessor :create_date

    # The code of the currency for the transaction
    attr_accessor :currency_code

    # The specific details of the transaction, such as a message from the admin that created it
    attr_accessor :details

    # The id of the transaction
    attr_accessor :id

    # The id of the invoice that spawned the transaction, if any
    attr_accessor :invoice_id

    # Whether the transaction has been refunded
    attr_accessor :is_refunded

    # The response
    attr_accessor :response

    # The root source of the transaction
    attr_accessor :source

    # If the transaction was successful
    attr_accessor :successful

    # The payment gateway (external) transaction ID
    attr_accessor :transaction_id

    # The general type of the transaction
    attr_accessor :type

    # The table name of the subclass
    attr_accessor :type_hint

    # The owner of the wallet
    attr_accessor :user

    # The amount of the transaction, positive if a gain, negative if an expenditure
    attr_accessor :value

    # The id of the wallet this transaction affected
    attr_accessor :wallet_id

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
        :'balance' => :'balance',
        :'create_date' => :'create_date',
        :'currency_code' => :'currency_code',
        :'details' => :'details',
        :'id' => :'id',
        :'invoice_id' => :'invoice_id',
        :'is_refunded' => :'is_refunded',
        :'response' => :'response',
        :'source' => :'source',
        :'successful' => :'successful',
        :'transaction_id' => :'transaction_id',
        :'type' => :'type',
        :'type_hint' => :'type_hint',
        :'user' => :'user',
        :'value' => :'value',
        :'wallet_id' => :'wallet_id'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'balance' => :'Float',
        :'create_date' => :'Integer',
        :'currency_code' => :'String',
        :'details' => :'String',
        :'id' => :'Integer',
        :'invoice_id' => :'Integer',
        :'is_refunded' => :'BOOLEAN',
        :'response' => :'String',
        :'source' => :'String',
        :'successful' => :'BOOLEAN',
        :'transaction_id' => :'String',
        :'type' => :'String',
        :'type_hint' => :'String',
        :'user' => :'SimpleUserResource',
        :'value' => :'Float',
        :'wallet_id' => :'Integer'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'balance')
        self.balance = attributes[:'balance']
      end

      if attributes.has_key?(:'create_date')
        self.create_date = attributes[:'create_date']
      end

      if attributes.has_key?(:'currency_code')
        self.currency_code = attributes[:'currency_code']
      end

      if attributes.has_key?(:'details')
        self.details = attributes[:'details']
      end

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'invoice_id')
        self.invoice_id = attributes[:'invoice_id']
      end

      if attributes.has_key?(:'is_refunded')
        self.is_refunded = attributes[:'is_refunded']
      end

      if attributes.has_key?(:'response')
        self.response = attributes[:'response']
      end

      if attributes.has_key?(:'source')
        self.source = attributes[:'source']
      end

      if attributes.has_key?(:'successful')
        self.successful = attributes[:'successful']
      end

      if attributes.has_key?(:'transaction_id')
        self.transaction_id = attributes[:'transaction_id']
      end

      if attributes.has_key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.has_key?(:'type_hint')
        self.type_hint = attributes[:'type_hint']
      end

      if attributes.has_key?(:'user')
        self.user = attributes[:'user']
      end

      if attributes.has_key?(:'value')
        self.value = attributes[:'value']
      end

      if attributes.has_key?(:'wallet_id')
        self.wallet_id = attributes[:'wallet_id']
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
      source_validator = EnumAttributeValidator.new('String', ["digital", "physical"])
      return false unless source_validator.valid?(@source)
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] source Object to be assigned
    def source=(source)
      validator = EnumAttributeValidator.new('String', ["digital", "physical"])
      unless validator.valid?(source)
        fail ArgumentError, "invalid value for 'source', must be one of #{validator.allowable_values}."
      end
      @source = source
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          balance == o.balance &&
          create_date == o.create_date &&
          currency_code == o.currency_code &&
          details == o.details &&
          id == o.id &&
          invoice_id == o.invoice_id &&
          is_refunded == o.is_refunded &&
          response == o.response &&
          source == o.source &&
          successful == o.successful &&
          transaction_id == o.transaction_id &&
          type == o.type &&
          type_hint == o.type_hint &&
          user == o.user &&
          value == o.value &&
          wallet_id == o.wallet_id
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [balance, create_date, currency_code, details, id, invoice_id, is_refunded, response, source, successful, transaction_id, type, type_hint, user, value, wallet_id].hash
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
