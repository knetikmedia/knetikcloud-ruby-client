=begin
#Knetik Platform API Documentation latest 

#This is the spec for the Knetik API.  Use this in conjunction with the documentation found at https://knetikcloud.com

OpenAPI spec version: latest 
Contact: support@knetik.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require "uri"

module KnetikCloudClient
  class PaymentsWalletsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Returns the user's wallet for the given currency code
    # 
    # @param user_id The ID of the user for whom wallet is being retrieved
    # @param currency_code Currency code of the user&#39;s wallet
    # @param [Hash] opts the optional parameters
    # @return [SimpleWallet]
    def get_user_wallet(user_id, currency_code, opts = {})
      data, _status_code, _headers = get_user_wallet_with_http_info(user_id, currency_code, opts)
      return data
    end

    # Returns the user&#39;s wallet for the given currency code
    # 
    # @param user_id The ID of the user for whom wallet is being retrieved
    # @param currency_code Currency code of the user&#39;s wallet
    # @param [Hash] opts the optional parameters
    # @return [Array<(SimpleWallet, Fixnum, Hash)>] SimpleWallet data, response status code and response headers
    def get_user_wallet_with_http_info(user_id, currency_code, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PaymentsWalletsApi.get_user_wallet ..."
      end
      # verify the required parameter 'user_id' is set
      fail ArgumentError, "Missing the required parameter 'user_id' when calling PaymentsWalletsApi.get_user_wallet" if user_id.nil?
      # verify the required parameter 'currency_code' is set
      fail ArgumentError, "Missing the required parameter 'currency_code' when calling PaymentsWalletsApi.get_user_wallet" if currency_code.nil?
      # resource path
      local_var_path = "/users/{user_id}/wallets/{currency_code}".sub('{' + 'user_id' + '}', user_id.to_s).sub('{' + 'currency_code' + '}', currency_code.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['OAuth2']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SimpleWallet')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentsWalletsApi#get_user_wallet\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve a user's wallet transactions
    # 
    # @param user_id The ID of the user for whom wallet transactions are being retrieved
    # @param currency_code Currency code of the user&#39;s wallet
    # @param [Hash] opts the optional parameters
    # @option opts [String] :filter_type Filter for transactions with specified type
    # @option opts [Integer] :filter_max_date Filter for transactions from no earlier than the specified date as a unix timestamp in seconds
    # @option opts [Integer] :filter_min_date Filter for transactions from no later than the specified date as a unix timestamp in seconds
    # @option opts [String] :filter_sign Filter for transactions with amount with the given sign.  Allowable values: (&#39;positive&#39;, &#39;negative&#39;)
    # @option opts [Integer] :size The number of objects returned per page (default to 25)
    # @option opts [Integer] :page The number of the page returned, starting with 1 (default to 1)
    # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (default to id:ASC)
    # @return [PageResourceWalletTransactionResource]
    def get_user_wallet_transactions(user_id, currency_code, opts = {})
      data, _status_code, _headers = get_user_wallet_transactions_with_http_info(user_id, currency_code, opts)
      return data
    end

    # Retrieve a user&#39;s wallet transactions
    # 
    # @param user_id The ID of the user for whom wallet transactions are being retrieved
    # @param currency_code Currency code of the user&#39;s wallet
    # @param [Hash] opts the optional parameters
    # @option opts [String] :filter_type Filter for transactions with specified type
    # @option opts [Integer] :filter_max_date Filter for transactions from no earlier than the specified date as a unix timestamp in seconds
    # @option opts [Integer] :filter_min_date Filter for transactions from no later than the specified date as a unix timestamp in seconds
    # @option opts [String] :filter_sign Filter for transactions with amount with the given sign.  Allowable values: (&#39;positive&#39;, &#39;negative&#39;)
    # @option opts [Integer] :size The number of objects returned per page
    # @option opts [Integer] :page The number of the page returned, starting with 1
    # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
    # @return [Array<(PageResourceWalletTransactionResource, Fixnum, Hash)>] PageResourceWalletTransactionResource data, response status code and response headers
    def get_user_wallet_transactions_with_http_info(user_id, currency_code, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PaymentsWalletsApi.get_user_wallet_transactions ..."
      end
      # verify the required parameter 'user_id' is set
      fail ArgumentError, "Missing the required parameter 'user_id' when calling PaymentsWalletsApi.get_user_wallet_transactions" if user_id.nil?
      # verify the required parameter 'currency_code' is set
      fail ArgumentError, "Missing the required parameter 'currency_code' when calling PaymentsWalletsApi.get_user_wallet_transactions" if currency_code.nil?
      # resource path
      local_var_path = "/users/{user_id}/wallets/{currency_code}/transactions".sub('{' + 'user_id' + '}', user_id.to_s).sub('{' + 'currency_code' + '}', currency_code.to_s)

      # query parameters
      query_params = {}
      query_params[:'filter_type'] = opts[:'filter_type'] if !opts[:'filter_type'].nil?
      query_params[:'filter_max_date'] = opts[:'filter_max_date'] if !opts[:'filter_max_date'].nil?
      query_params[:'filter_min_date'] = opts[:'filter_min_date'] if !opts[:'filter_min_date'].nil?
      query_params[:'filter_sign'] = opts[:'filter_sign'] if !opts[:'filter_sign'].nil?
      query_params[:'size'] = opts[:'size'] if !opts[:'size'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'order'] = opts[:'order'] if !opts[:'order'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['OAuth2']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PageResourceWalletTransactionResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentsWalletsApi#get_user_wallet_transactions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List all of a user's wallets
    # 
    # @param user_id The ID of the user for whom wallets are being retrieved
    # @param [Hash] opts the optional parameters
    # @return [Array<SimpleWallet>]
    def get_user_wallets(user_id, opts = {})
      data, _status_code, _headers = get_user_wallets_with_http_info(user_id, opts)
      return data
    end

    # List all of a user&#39;s wallets
    # 
    # @param user_id The ID of the user for whom wallets are being retrieved
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<SimpleWallet>, Fixnum, Hash)>] Array<SimpleWallet> data, response status code and response headers
    def get_user_wallets_with_http_info(user_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PaymentsWalletsApi.get_user_wallets ..."
      end
      # verify the required parameter 'user_id' is set
      fail ArgumentError, "Missing the required parameter 'user_id' when calling PaymentsWalletsApi.get_user_wallets" if user_id.nil?
      # resource path
      local_var_path = "/users/{user_id}/wallets".sub('{' + 'user_id' + '}', user_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['OAuth2']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<SimpleWallet>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentsWalletsApi#get_user_wallets\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieves a summation of wallet balances by currency code
    # 
    # @param [Hash] opts the optional parameters
    # @return [PageResourceWalletTotalResponse]
    def get_wallet_balances(opts = {})
      data, _status_code, _headers = get_wallet_balances_with_http_info(opts)
      return data
    end

    # Retrieves a summation of wallet balances by currency code
    # 
    # @param [Hash] opts the optional parameters
    # @return [Array<(PageResourceWalletTotalResponse, Fixnum, Hash)>] PageResourceWalletTotalResponse data, response status code and response headers
    def get_wallet_balances_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PaymentsWalletsApi.get_wallet_balances ..."
      end
      # resource path
      local_var_path = "/wallets/totals"

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['OAuth2']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PageResourceWalletTotalResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentsWalletsApi#get_wallet_balances\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve wallet transactions across the system
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :filter_invoice Filter for transactions from a specific invoice
    # @option opts [String] :filter_type Filter for transactions with specified type
    # @option opts [String] :filter_date A comma separated string without spaces.  First value is the operator to search on, second value is the log start date, a unix timestamp in seconds. Can be repeated for a range, eg: GT,123,LT,456  Allowed operators: (GT, LT, EQ, GOE, LOE).
    # @option opts [String] :filter_sign Filter for transactions with amount with the given sign
    # @option opts [Integer] :filter_user_id Filter for transactions for specific userId
    # @option opts [String] :filter_username Filter for transactions for specific username that start with the given string
    # @option opts [String] :filter_details Filter for transactions for specific details that start with the given string
    # @option opts [String] :filter_currency_code Filter for transactions for specific currency code
    # @option opts [Integer] :size The number of objects returned per page (default to 25)
    # @option opts [Integer] :page The number of the page returned, starting with 1 (default to 1)
    # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (default to id:ASC)
    # @return [PageResourceWalletTransactionResource]
    def get_wallet_transactions(opts = {})
      data, _status_code, _headers = get_wallet_transactions_with_http_info(opts)
      return data
    end

    # Retrieve wallet transactions across the system
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :filter_invoice Filter for transactions from a specific invoice
    # @option opts [String] :filter_type Filter for transactions with specified type
    # @option opts [String] :filter_date A comma separated string without spaces.  First value is the operator to search on, second value is the log start date, a unix timestamp in seconds. Can be repeated for a range, eg: GT,123,LT,456  Allowed operators: (GT, LT, EQ, GOE, LOE).
    # @option opts [String] :filter_sign Filter for transactions with amount with the given sign
    # @option opts [Integer] :filter_user_id Filter for transactions for specific userId
    # @option opts [String] :filter_username Filter for transactions for specific username that start with the given string
    # @option opts [String] :filter_details Filter for transactions for specific details that start with the given string
    # @option opts [String] :filter_currency_code Filter for transactions for specific currency code
    # @option opts [Integer] :size The number of objects returned per page
    # @option opts [Integer] :page The number of the page returned, starting with 1
    # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
    # @return [Array<(PageResourceWalletTransactionResource, Fixnum, Hash)>] PageResourceWalletTransactionResource data, response status code and response headers
    def get_wallet_transactions_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PaymentsWalletsApi.get_wallet_transactions ..."
      end
      if opts[:'filter_sign'] && !['positive', 'negative'].include?(opts[:'filter_sign'])
        fail ArgumentError, 'invalid value for "filter_sign", must be one of positive, negative'
      end
      # resource path
      local_var_path = "/wallets/transactions"

      # query parameters
      query_params = {}
      query_params[:'filter_invoice'] = opts[:'filter_invoice'] if !opts[:'filter_invoice'].nil?
      query_params[:'filter_type'] = opts[:'filter_type'] if !opts[:'filter_type'].nil?
      query_params[:'filter_date'] = opts[:'filter_date'] if !opts[:'filter_date'].nil?
      query_params[:'filter_sign'] = opts[:'filter_sign'] if !opts[:'filter_sign'].nil?
      query_params[:'filter_user_id'] = opts[:'filter_user_id'] if !opts[:'filter_user_id'].nil?
      query_params[:'filter_username'] = opts[:'filter_username'] if !opts[:'filter_username'].nil?
      query_params[:'filter_details'] = opts[:'filter_details'] if !opts[:'filter_details'].nil?
      query_params[:'filter_currency_code'] = opts[:'filter_currency_code'] if !opts[:'filter_currency_code'].nil?
      query_params[:'size'] = opts[:'size'] if !opts[:'size'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'order'] = opts[:'order'] if !opts[:'order'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['OAuth2']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PageResourceWalletTransactionResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentsWalletsApi#get_wallet_transactions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve a list of wallets across the system
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :size The number of objects returned per page (default to 25)
    # @option opts [Integer] :page The number of the page returned, starting with 1 (default to 1)
    # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (default to id:ASC)
    # @return [PageResourceSimpleWallet]
    def get_wallets(opts = {})
      data, _status_code, _headers = get_wallets_with_http_info(opts)
      return data
    end

    # Retrieve a list of wallets across the system
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :size The number of objects returned per page
    # @option opts [Integer] :page The number of the page returned, starting with 1
    # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
    # @return [Array<(PageResourceSimpleWallet, Fixnum, Hash)>] PageResourceSimpleWallet data, response status code and response headers
    def get_wallets_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PaymentsWalletsApi.get_wallets ..."
      end
      # resource path
      local_var_path = "/wallets"

      # query parameters
      query_params = {}
      query_params[:'size'] = opts[:'size'] if !opts[:'size'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'order'] = opts[:'order'] if !opts[:'order'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['OAuth2']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PageResourceSimpleWallet')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentsWalletsApi#get_wallets\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Updates the balance for a user's wallet
    # 
    # @param user_id The ID of the user for whom wallet is being modified
    # @param currency_code Currency code of the user&#39;s wallet
    # @param [Hash] opts the optional parameters
    # @option opts [WalletAlterRequest] :request The requested balance modification to be made to the user&#39;s wallet
    # @return [WalletTransactionResource]
    def update_wallet_balance(user_id, currency_code, opts = {})
      data, _status_code, _headers = update_wallet_balance_with_http_info(user_id, currency_code, opts)
      return data
    end

    # Updates the balance for a user&#39;s wallet
    # 
    # @param user_id The ID of the user for whom wallet is being modified
    # @param currency_code Currency code of the user&#39;s wallet
    # @param [Hash] opts the optional parameters
    # @option opts [WalletAlterRequest] :request The requested balance modification to be made to the user&#39;s wallet
    # @return [Array<(WalletTransactionResource, Fixnum, Hash)>] WalletTransactionResource data, response status code and response headers
    def update_wallet_balance_with_http_info(user_id, currency_code, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PaymentsWalletsApi.update_wallet_balance ..."
      end
      # verify the required parameter 'user_id' is set
      fail ArgumentError, "Missing the required parameter 'user_id' when calling PaymentsWalletsApi.update_wallet_balance" if user_id.nil?
      # verify the required parameter 'currency_code' is set
      fail ArgumentError, "Missing the required parameter 'currency_code' when calling PaymentsWalletsApi.update_wallet_balance" if currency_code.nil?
      # resource path
      local_var_path = "/users/{user_id}/wallets/{currency_code}/balance".sub('{' + 'user_id' + '}', user_id.to_s).sub('{' + 'currency_code' + '}', currency_code.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'request'])
      auth_names = ['OAuth2']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'WalletTransactionResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentsWalletsApi#update_wallet_balance\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
