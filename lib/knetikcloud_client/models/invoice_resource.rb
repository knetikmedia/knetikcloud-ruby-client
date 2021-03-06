=begin
#Knetik Platform API Documentation latest 

#This is the spec for the Knetik API.  Use this in conjunction with the documentation found at https://knetikcloud.com.

OpenAPI spec version: latest 
Contact: support@knetik.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.0-SNAPSHOT

=end

require 'date'

module KnetikCloudClient

  class InvoiceResource
    # Line one of the customer's billing address
    attr_accessor :billing_address1

    # Line two of the customer's billing address
    attr_accessor :billing_address2

    # The city for the customer's billing address
    attr_accessor :billing_city_name

    # The country for the customer's billing address
    attr_accessor :billing_country_name

    # The customer's name for the billing address
    attr_accessor :billing_full_name

    # The postal code for the customer's billing address
    attr_accessor :billing_postal_code

    # The state for the customer's billing address
    attr_accessor :billing_state_name

    # The guid of the cart this invoice came from
    attr_accessor :cart_id

    # The date the invoice was created, unix timestamp in seconds
    attr_accessor :created_date

    # The code for the currency invoice prices are in
    attr_accessor :currency

    # The fulfillment status of the invoice
    attr_accessor :current_fulfillment_status

    # The payment status of the invoice
    attr_accessor :current_payment_status

    # The amount of money saved through coupons
    attr_accessor :discount

    # The customer's email address
    attr_accessor :email

    # An external reference to filter on
    attr_accessor :external_ref

    # The amount of federal tax added
    attr_accessor :fed_tax

    # The final price of the invoice
    attr_accessor :grand_total

    # The id of the invoice
    attr_accessor :id

    # A reference number for the invoice
    attr_accessor :invoice_number

    # A list of items within the invoice
    attr_accessor :items

    # The customer's name prefix
    attr_accessor :name_prefix

    # Notes about the order
    attr_accessor :order_notes

    # The id of an invoice this is a child of
    attr_accessor :parent_invoice_id

    # The id of a saved payment method used to pay for the invoice
    attr_accessor :payment_method_id

    # The customer's phone number
    attr_accessor :phone

    # The customer's phone number
    attr_accessor :phone_number

    # The remaining price of the invoice (after any payments made so far)
    attr_accessor :remaining_balance

    # The shipping cost
    attr_accessor :shipping

    # Line one of the customer's shipping address
    attr_accessor :shipping_address1

    # Line two of the customer's shipping address
    attr_accessor :shipping_address2

    # The city for the customer's shipping address
    attr_accessor :shipping_city_name

    # The country for the customer's shipping address
    attr_accessor :shipping_country_name

    # The customer's name for the shipping address
    attr_accessor :shipping_full_name

    # The postal code for the customer's shipping address
    attr_accessor :shipping_postal_code

    # The state for the customer's shipping address
    attr_accessor :shipping_state_name

    # A number to use in sorting items. default 500.
    attr_accessor :sort

    # The amount of state tax added
    attr_accessor :state_tax

    # The sum price of all items before shipping, coupons and tax
    attr_accessor :subtotal

    # The date the invoice was last updated, unix timestamp in seconds
    attr_accessor :updated_date

    # The owner of the invoice
    attr_accessor :user

    # The id of the vendor
    attr_accessor :vendor_id

    # The name of the invoice
    attr_accessor :vendor_name


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'billing_address1' => :'billing_address1',
        :'billing_address2' => :'billing_address2',
        :'billing_city_name' => :'billing_city_name',
        :'billing_country_name' => :'billing_country_name',
        :'billing_full_name' => :'billing_full_name',
        :'billing_postal_code' => :'billing_postal_code',
        :'billing_state_name' => :'billing_state_name',
        :'cart_id' => :'cart_id',
        :'created_date' => :'created_date',
        :'currency' => :'currency',
        :'current_fulfillment_status' => :'current_fulfillment_status',
        :'current_payment_status' => :'current_payment_status',
        :'discount' => :'discount',
        :'email' => :'email',
        :'external_ref' => :'external_ref',
        :'fed_tax' => :'fed_tax',
        :'grand_total' => :'grand_total',
        :'id' => :'id',
        :'invoice_number' => :'invoice_number',
        :'items' => :'items',
        :'name_prefix' => :'name_prefix',
        :'order_notes' => :'order_notes',
        :'parent_invoice_id' => :'parent_invoice_id',
        :'payment_method_id' => :'payment_method_id',
        :'phone' => :'phone',
        :'phone_number' => :'phone_number',
        :'remaining_balance' => :'remaining_balance',
        :'shipping' => :'shipping',
        :'shipping_address1' => :'shipping_address1',
        :'shipping_address2' => :'shipping_address2',
        :'shipping_city_name' => :'shipping_city_name',
        :'shipping_country_name' => :'shipping_country_name',
        :'shipping_full_name' => :'shipping_full_name',
        :'shipping_postal_code' => :'shipping_postal_code',
        :'shipping_state_name' => :'shipping_state_name',
        :'sort' => :'sort',
        :'state_tax' => :'state_tax',
        :'subtotal' => :'subtotal',
        :'updated_date' => :'updated_date',
        :'user' => :'user',
        :'vendor_id' => :'vendor_id',
        :'vendor_name' => :'vendor_name'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'billing_address1' => :'String',
        :'billing_address2' => :'String',
        :'billing_city_name' => :'String',
        :'billing_country_name' => :'String',
        :'billing_full_name' => :'String',
        :'billing_postal_code' => :'String',
        :'billing_state_name' => :'String',
        :'cart_id' => :'String',
        :'created_date' => :'Integer',
        :'currency' => :'String',
        :'current_fulfillment_status' => :'String',
        :'current_payment_status' => :'String',
        :'discount' => :'Float',
        :'email' => :'String',
        :'external_ref' => :'String',
        :'fed_tax' => :'Float',
        :'grand_total' => :'Float',
        :'id' => :'Integer',
        :'invoice_number' => :'String',
        :'items' => :'Array<InvoiceItemResource>',
        :'name_prefix' => :'String',
        :'order_notes' => :'String',
        :'parent_invoice_id' => :'Integer',
        :'payment_method_id' => :'Integer',
        :'phone' => :'String',
        :'phone_number' => :'String',
        :'remaining_balance' => :'Float',
        :'shipping' => :'Float',
        :'shipping_address1' => :'String',
        :'shipping_address2' => :'String',
        :'shipping_city_name' => :'String',
        :'shipping_country_name' => :'String',
        :'shipping_full_name' => :'String',
        :'shipping_postal_code' => :'String',
        :'shipping_state_name' => :'String',
        :'sort' => :'Integer',
        :'state_tax' => :'Float',
        :'subtotal' => :'Float',
        :'updated_date' => :'Integer',
        :'user' => :'SimpleUserResource',
        :'vendor_id' => :'Integer',
        :'vendor_name' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'billing_address1')
        self.billing_address1 = attributes[:'billing_address1']
      end

      if attributes.has_key?(:'billing_address2')
        self.billing_address2 = attributes[:'billing_address2']
      end

      if attributes.has_key?(:'billing_city_name')
        self.billing_city_name = attributes[:'billing_city_name']
      end

      if attributes.has_key?(:'billing_country_name')
        self.billing_country_name = attributes[:'billing_country_name']
      end

      if attributes.has_key?(:'billing_full_name')
        self.billing_full_name = attributes[:'billing_full_name']
      end

      if attributes.has_key?(:'billing_postal_code')
        self.billing_postal_code = attributes[:'billing_postal_code']
      end

      if attributes.has_key?(:'billing_state_name')
        self.billing_state_name = attributes[:'billing_state_name']
      end

      if attributes.has_key?(:'cart_id')
        self.cart_id = attributes[:'cart_id']
      end

      if attributes.has_key?(:'created_date')
        self.created_date = attributes[:'created_date']
      end

      if attributes.has_key?(:'currency')
        self.currency = attributes[:'currency']
      end

      if attributes.has_key?(:'current_fulfillment_status')
        self.current_fulfillment_status = attributes[:'current_fulfillment_status']
      end

      if attributes.has_key?(:'current_payment_status')
        self.current_payment_status = attributes[:'current_payment_status']
      end

      if attributes.has_key?(:'discount')
        self.discount = attributes[:'discount']
      end

      if attributes.has_key?(:'email')
        self.email = attributes[:'email']
      end

      if attributes.has_key?(:'external_ref')
        self.external_ref = attributes[:'external_ref']
      end

      if attributes.has_key?(:'fed_tax')
        self.fed_tax = attributes[:'fed_tax']
      end

      if attributes.has_key?(:'grand_total')
        self.grand_total = attributes[:'grand_total']
      end

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'invoice_number')
        self.invoice_number = attributes[:'invoice_number']
      end

      if attributes.has_key?(:'items')
        if (value = attributes[:'items']).is_a?(Array)
          self.items = value
        end
      end

      if attributes.has_key?(:'name_prefix')
        self.name_prefix = attributes[:'name_prefix']
      end

      if attributes.has_key?(:'order_notes')
        self.order_notes = attributes[:'order_notes']
      end

      if attributes.has_key?(:'parent_invoice_id')
        self.parent_invoice_id = attributes[:'parent_invoice_id']
      end

      if attributes.has_key?(:'payment_method_id')
        self.payment_method_id = attributes[:'payment_method_id']
      end

      if attributes.has_key?(:'phone')
        self.phone = attributes[:'phone']
      end

      if attributes.has_key?(:'phone_number')
        self.phone_number = attributes[:'phone_number']
      end

      if attributes.has_key?(:'remaining_balance')
        self.remaining_balance = attributes[:'remaining_balance']
      end

      if attributes.has_key?(:'shipping')
        self.shipping = attributes[:'shipping']
      end

      if attributes.has_key?(:'shipping_address1')
        self.shipping_address1 = attributes[:'shipping_address1']
      end

      if attributes.has_key?(:'shipping_address2')
        self.shipping_address2 = attributes[:'shipping_address2']
      end

      if attributes.has_key?(:'shipping_city_name')
        self.shipping_city_name = attributes[:'shipping_city_name']
      end

      if attributes.has_key?(:'shipping_country_name')
        self.shipping_country_name = attributes[:'shipping_country_name']
      end

      if attributes.has_key?(:'shipping_full_name')
        self.shipping_full_name = attributes[:'shipping_full_name']
      end

      if attributes.has_key?(:'shipping_postal_code')
        self.shipping_postal_code = attributes[:'shipping_postal_code']
      end

      if attributes.has_key?(:'shipping_state_name')
        self.shipping_state_name = attributes[:'shipping_state_name']
      end

      if attributes.has_key?(:'sort')
        self.sort = attributes[:'sort']
      end

      if attributes.has_key?(:'state_tax')
        self.state_tax = attributes[:'state_tax']
      end

      if attributes.has_key?(:'subtotal')
        self.subtotal = attributes[:'subtotal']
      end

      if attributes.has_key?(:'updated_date')
        self.updated_date = attributes[:'updated_date']
      end

      if attributes.has_key?(:'user')
        self.user = attributes[:'user']
      end

      if attributes.has_key?(:'vendor_id')
        self.vendor_id = attributes[:'vendor_id']
      end

      if attributes.has_key?(:'vendor_name')
        self.vendor_name = attributes[:'vendor_name']
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
          billing_address1 == o.billing_address1 &&
          billing_address2 == o.billing_address2 &&
          billing_city_name == o.billing_city_name &&
          billing_country_name == o.billing_country_name &&
          billing_full_name == o.billing_full_name &&
          billing_postal_code == o.billing_postal_code &&
          billing_state_name == o.billing_state_name &&
          cart_id == o.cart_id &&
          created_date == o.created_date &&
          currency == o.currency &&
          current_fulfillment_status == o.current_fulfillment_status &&
          current_payment_status == o.current_payment_status &&
          discount == o.discount &&
          email == o.email &&
          external_ref == o.external_ref &&
          fed_tax == o.fed_tax &&
          grand_total == o.grand_total &&
          id == o.id &&
          invoice_number == o.invoice_number &&
          items == o.items &&
          name_prefix == o.name_prefix &&
          order_notes == o.order_notes &&
          parent_invoice_id == o.parent_invoice_id &&
          payment_method_id == o.payment_method_id &&
          phone == o.phone &&
          phone_number == o.phone_number &&
          remaining_balance == o.remaining_balance &&
          shipping == o.shipping &&
          shipping_address1 == o.shipping_address1 &&
          shipping_address2 == o.shipping_address2 &&
          shipping_city_name == o.shipping_city_name &&
          shipping_country_name == o.shipping_country_name &&
          shipping_full_name == o.shipping_full_name &&
          shipping_postal_code == o.shipping_postal_code &&
          shipping_state_name == o.shipping_state_name &&
          sort == o.sort &&
          state_tax == o.state_tax &&
          subtotal == o.subtotal &&
          updated_date == o.updated_date &&
          user == o.user &&
          vendor_id == o.vendor_id &&
          vendor_name == o.vendor_name
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [billing_address1, billing_address2, billing_city_name, billing_country_name, billing_full_name, billing_postal_code, billing_state_name, cart_id, created_date, currency, current_fulfillment_status, current_payment_status, discount, email, external_ref, fed_tax, grand_total, id, invoice_number, items, name_prefix, order_notes, parent_invoice_id, payment_method_id, phone, phone_number, remaining_balance, shipping, shipping_address1, shipping_address2, shipping_city_name, shipping_country_name, shipping_full_name, shipping_postal_code, shipping_state_name, sort, state_tax, subtotal, updated_date, user, vendor_id, vendor_name].hash
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
