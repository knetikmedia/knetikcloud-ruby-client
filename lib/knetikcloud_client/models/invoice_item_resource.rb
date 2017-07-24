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

  class InvoiceItemResource
    attr_accessor :bundle_sku

    attr_accessor :current_fulfillment_status

    attr_accessor :id

    attr_accessor :invoice_id

    attr_accessor :item_id

    attr_accessor :item_name

    attr_accessor :original_total_price

    attr_accessor :original_unit_price

    attr_accessor :qty

    attr_accessor :sale_name

    attr_accessor :sku

    attr_accessor :sku_description

    attr_accessor :system_price

    attr_accessor :total_price

    attr_accessor :type_hint

    attr_accessor :unit_price


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'bundle_sku' => :'bundle_sku',
        :'current_fulfillment_status' => :'current_fulfillment_status',
        :'id' => :'id',
        :'invoice_id' => :'invoice_id',
        :'item_id' => :'item_id',
        :'item_name' => :'item_name',
        :'original_total_price' => :'original_total_price',
        :'original_unit_price' => :'original_unit_price',
        :'qty' => :'qty',
        :'sale_name' => :'sale_name',
        :'sku' => :'sku',
        :'sku_description' => :'sku_description',
        :'system_price' => :'system_price',
        :'total_price' => :'total_price',
        :'type_hint' => :'type_hint',
        :'unit_price' => :'unit_price'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'bundle_sku' => :'String',
        :'current_fulfillment_status' => :'String',
        :'id' => :'Integer',
        :'invoice_id' => :'Integer',
        :'item_id' => :'Integer',
        :'item_name' => :'String',
        :'original_total_price' => :'Float',
        :'original_unit_price' => :'Float',
        :'qty' => :'Integer',
        :'sale_name' => :'String',
        :'sku' => :'String',
        :'sku_description' => :'String',
        :'system_price' => :'Float',
        :'total_price' => :'Float',
        :'type_hint' => :'String',
        :'unit_price' => :'Float'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'bundle_sku')
        self.bundle_sku = attributes[:'bundle_sku']
      end

      if attributes.has_key?(:'current_fulfillment_status')
        self.current_fulfillment_status = attributes[:'current_fulfillment_status']
      end

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'invoice_id')
        self.invoice_id = attributes[:'invoice_id']
      end

      if attributes.has_key?(:'item_id')
        self.item_id = attributes[:'item_id']
      end

      if attributes.has_key?(:'item_name')
        self.item_name = attributes[:'item_name']
      end

      if attributes.has_key?(:'original_total_price')
        self.original_total_price = attributes[:'original_total_price']
      end

      if attributes.has_key?(:'original_unit_price')
        self.original_unit_price = attributes[:'original_unit_price']
      end

      if attributes.has_key?(:'qty')
        self.qty = attributes[:'qty']
      end

      if attributes.has_key?(:'sale_name')
        self.sale_name = attributes[:'sale_name']
      end

      if attributes.has_key?(:'sku')
        self.sku = attributes[:'sku']
      end

      if attributes.has_key?(:'sku_description')
        self.sku_description = attributes[:'sku_description']
      end

      if attributes.has_key?(:'system_price')
        self.system_price = attributes[:'system_price']
      end

      if attributes.has_key?(:'total_price')
        self.total_price = attributes[:'total_price']
      end

      if attributes.has_key?(:'type_hint')
        self.type_hint = attributes[:'type_hint']
      end

      if attributes.has_key?(:'unit_price')
        self.unit_price = attributes[:'unit_price']
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
          bundle_sku == o.bundle_sku &&
          current_fulfillment_status == o.current_fulfillment_status &&
          id == o.id &&
          invoice_id == o.invoice_id &&
          item_id == o.item_id &&
          item_name == o.item_name &&
          original_total_price == o.original_total_price &&
          original_unit_price == o.original_unit_price &&
          qty == o.qty &&
          sale_name == o.sale_name &&
          sku == o.sku &&
          sku_description == o.sku_description &&
          system_price == o.system_price &&
          total_price == o.total_price &&
          type_hint == o.type_hint &&
          unit_price == o.unit_price
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [bundle_sku, current_fulfillment_status, id, invoice_id, item_id, item_name, original_total_price, original_unit_price, qty, sale_name, sku, sku_description, system_price, total_price, type_hint, unit_price].hash
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
