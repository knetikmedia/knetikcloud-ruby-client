=begin
#Knetik Platform API Documentation latest 

#This is the spec for the Knetik API.  Use this in conjunction with the documentation found at https://knetikcloud.com

OpenAPI spec version: latest 
Contact: support@knetik.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'date'

module KnetikCloudClient

  class SubscriptionPlan
    attr_accessor :additional_properties

    attr_accessor :availability

    attr_accessor :bill_grace_days

    attr_accessor :consolidated

    attr_accessor :first_bill

    attr_accessor :first_bill_unit_of_time

    attr_accessor :id

    attr_accessor :late_payment_sku

    attr_accessor :locked

    attr_accessor :max_auto_renew

    attr_accessor :max_bill_attempts

    attr_accessor :migration_plan

    attr_accessor :minimum_term

    attr_accessor :name

    attr_accessor :primary_sku

    attr_accessor :reactivation_sku

    attr_accessor :recurring_sku

    attr_accessor :renew_period

    attr_accessor :renew_period_unit_of_time

    attr_accessor :subscription_id

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
        :'availability' => :'availability',
        :'bill_grace_days' => :'bill_grace_days',
        :'consolidated' => :'consolidated',
        :'first_bill' => :'first_bill',
        :'first_bill_unit_of_time' => :'first_bill_unit_of_time',
        :'id' => :'id',
        :'late_payment_sku' => :'late_payment_sku',
        :'locked' => :'locked',
        :'max_auto_renew' => :'max_auto_renew',
        :'max_bill_attempts' => :'max_bill_attempts',
        :'migration_plan' => :'migration_plan',
        :'minimum_term' => :'minimum_term',
        :'name' => :'name',
        :'primary_sku' => :'primary_sku',
        :'reactivation_sku' => :'reactivation_sku',
        :'recurring_sku' => :'recurring_sku',
        :'renew_period' => :'renew_period',
        :'renew_period_unit_of_time' => :'renew_period_unit_of_time',
        :'subscription_id' => :'subscription_id'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'additional_properties' => :'Hash<String, Property>',
        :'availability' => :'String',
        :'bill_grace_days' => :'Integer',
        :'consolidated' => :'BOOLEAN',
        :'first_bill' => :'Integer',
        :'first_bill_unit_of_time' => :'String',
        :'id' => :'String',
        :'late_payment_sku' => :'String',
        :'locked' => :'BOOLEAN',
        :'max_auto_renew' => :'Integer',
        :'max_bill_attempts' => :'Integer',
        :'migration_plan' => :'String',
        :'minimum_term' => :'Integer',
        :'name' => :'String',
        :'primary_sku' => :'String',
        :'reactivation_sku' => :'String',
        :'recurring_sku' => :'String',
        :'renew_period' => :'Integer',
        :'renew_period_unit_of_time' => :'String',
        :'subscription_id' => :'Integer'
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

      if attributes.has_key?(:'availability')
        self.availability = attributes[:'availability']
      end

      if attributes.has_key?(:'bill_grace_days')
        self.bill_grace_days = attributes[:'bill_grace_days']
      end

      if attributes.has_key?(:'consolidated')
        self.consolidated = attributes[:'consolidated']
      end

      if attributes.has_key?(:'first_bill')
        self.first_bill = attributes[:'first_bill']
      end

      if attributes.has_key?(:'first_bill_unit_of_time')
        self.first_bill_unit_of_time = attributes[:'first_bill_unit_of_time']
      end

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'late_payment_sku')
        self.late_payment_sku = attributes[:'late_payment_sku']
      end

      if attributes.has_key?(:'locked')
        self.locked = attributes[:'locked']
      end

      if attributes.has_key?(:'max_auto_renew')
        self.max_auto_renew = attributes[:'max_auto_renew']
      end

      if attributes.has_key?(:'max_bill_attempts')
        self.max_bill_attempts = attributes[:'max_bill_attempts']
      end

      if attributes.has_key?(:'migration_plan')
        self.migration_plan = attributes[:'migration_plan']
      end

      if attributes.has_key?(:'minimum_term')
        self.minimum_term = attributes[:'minimum_term']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'primary_sku')
        self.primary_sku = attributes[:'primary_sku']
      end

      if attributes.has_key?(:'reactivation_sku')
        self.reactivation_sku = attributes[:'reactivation_sku']
      end

      if attributes.has_key?(:'recurring_sku')
        self.recurring_sku = attributes[:'recurring_sku']
      end

      if attributes.has_key?(:'renew_period')
        self.renew_period = attributes[:'renew_period']
      end

      if attributes.has_key?(:'renew_period_unit_of_time')
        self.renew_period_unit_of_time = attributes[:'renew_period_unit_of_time']
      end

      if attributes.has_key?(:'subscription_id')
        self.subscription_id = attributes[:'subscription_id']
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
      availability_validator = EnumAttributeValidator.new('String', ["all", "new_subscribers"])
      return false unless availability_validator.valid?(@availability)
      first_bill_unit_of_time_validator = EnumAttributeValidator.new('String', ["millisecond", "second", "minute", "hour", "day", "week", "month", "year"])
      return false unless first_bill_unit_of_time_validator.valid?(@first_bill_unit_of_time)
      renew_period_unit_of_time_validator = EnumAttributeValidator.new('String', ["millisecond", "second", "minute", "hour", "day", "week", "month", "year"])
      return false unless renew_period_unit_of_time_validator.valid?(@renew_period_unit_of_time)
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] availability Object to be assigned
    def availability=(availability)
      validator = EnumAttributeValidator.new('String', ["all", "new_subscribers"])
      unless validator.valid?(availability)
        fail ArgumentError, "invalid value for 'availability', must be one of #{validator.allowable_values}."
      end
      @availability = availability
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] first_bill_unit_of_time Object to be assigned
    def first_bill_unit_of_time=(first_bill_unit_of_time)
      validator = EnumAttributeValidator.new('String', ["millisecond", "second", "minute", "hour", "day", "week", "month", "year"])
      unless validator.valid?(first_bill_unit_of_time)
        fail ArgumentError, "invalid value for 'first_bill_unit_of_time', must be one of #{validator.allowable_values}."
      end
      @first_bill_unit_of_time = first_bill_unit_of_time
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] renew_period_unit_of_time Object to be assigned
    def renew_period_unit_of_time=(renew_period_unit_of_time)
      validator = EnumAttributeValidator.new('String', ["millisecond", "second", "minute", "hour", "day", "week", "month", "year"])
      unless validator.valid?(renew_period_unit_of_time)
        fail ArgumentError, "invalid value for 'renew_period_unit_of_time', must be one of #{validator.allowable_values}."
      end
      @renew_period_unit_of_time = renew_period_unit_of_time
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          additional_properties == o.additional_properties &&
          availability == o.availability &&
          bill_grace_days == o.bill_grace_days &&
          consolidated == o.consolidated &&
          first_bill == o.first_bill &&
          first_bill_unit_of_time == o.first_bill_unit_of_time &&
          id == o.id &&
          late_payment_sku == o.late_payment_sku &&
          locked == o.locked &&
          max_auto_renew == o.max_auto_renew &&
          max_bill_attempts == o.max_bill_attempts &&
          migration_plan == o.migration_plan &&
          minimum_term == o.minimum_term &&
          name == o.name &&
          primary_sku == o.primary_sku &&
          reactivation_sku == o.reactivation_sku &&
          recurring_sku == o.recurring_sku &&
          renew_period == o.renew_period &&
          renew_period_unit_of_time == o.renew_period_unit_of_time &&
          subscription_id == o.subscription_id
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [additional_properties, availability, bill_grace_days, consolidated, first_bill, first_bill_unit_of_time, id, late_payment_sku, locked, max_auto_renew, max_bill_attempts, migration_plan, minimum_term, name, primary_sku, reactivation_sku, recurring_sku, renew_period, renew_period_unit_of_time, subscription_id].hash
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
