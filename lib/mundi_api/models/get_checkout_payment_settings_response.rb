# mundi_api
#
# This file was automatically generated by APIMATIC v2.0 (
# https://apimatic.io ).

module MundiApi
  # Checkout Payment Settings Response
  class GetCheckoutPaymentSettingsResponse < BaseModel
    # Success Url
    # @return [String]
    attr_accessor :success_url

    # Payment Url
    # @return [String]
    attr_accessor :payment_url

    # Accepted Payment Methods
    # @return [List of String]
    attr_accessor :accepted_payment_methods

    # Status
    # @return [String]
    attr_accessor :status

    # Customer
    # @return [GetCustomerResponse]
    attr_accessor :customer

    # Payment amount
    # @return [Integer]
    attr_accessor :amount

    # Default Payment Method
    # @return [String]
    attr_accessor :default_payment_method

    # Gateway Affiliation Id
    # @return [String]
    attr_accessor :gateway_affiliation_id

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['success_url'] = 'success_url'
      @_hash['payment_url'] = 'payment_url'
      @_hash['accepted_payment_methods'] = 'accepted_payment_methods'
      @_hash['status'] = 'status'
      @_hash['customer'] = 'customer'
      @_hash['amount'] = 'amount'
      @_hash['default_payment_method'] = 'default_payment_method'
      @_hash['gateway_affiliation_id'] = 'gateway_affiliation_id'
      @_hash
    end

    def initialize(success_url = nil,
                   payment_url = nil,
                   accepted_payment_methods = nil,
                   status = nil,
                   customer = nil,
                   amount = nil,
                   default_payment_method = nil,
                   gateway_affiliation_id = nil)
      @success_url = success_url
      @payment_url = payment_url
      @accepted_payment_methods = accepted_payment_methods
      @status = status
      @customer = customer
      @amount = amount
      @default_payment_method = default_payment_method
      @gateway_affiliation_id = gateway_affiliation_id
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      success_url = hash['success_url']
      payment_url = hash['payment_url']
      accepted_payment_methods = hash['accepted_payment_methods']
      status = hash['status']
      customer = GetCustomerResponse.from_hash(hash['customer']) if
        hash['customer']
      amount = hash['amount']
      default_payment_method = hash['default_payment_method']
      gateway_affiliation_id = hash['gateway_affiliation_id']

      # Create object from extracted values.
      GetCheckoutPaymentSettingsResponse.new(success_url,
                                             payment_url,
                                             accepted_payment_methods,
                                             status,
                                             customer,
                                             amount,
                                             default_payment_method,
                                             gateway_affiliation_id)
    end
  end
end
