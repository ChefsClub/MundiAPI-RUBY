# mundi_api
#
# This file was automatically generated by APIMATIC v2.0 (
# https://apimatic.io ).

module MundiApi
  # GetUsagesDetailsResponse Model.
  class GetUsagesDetailsResponse < BaseModel
    # Subscription Identifier
    # @return [String]
    attr_accessor :subscription_id

    # Current Invoice Amount
    # @return [Integer]
    attr_accessor :total_amount

    # Period Details
    # @return [GetPeriodResponse]
    attr_accessor :period

    # Usages Details
    # @return [ListUsagesDetailsResponse]
    attr_accessor :usages

    # Total discounted value
    # @return [Integer]
    attr_accessor :total_discount

    # Total inremented value
    # @return [Integer]
    attr_accessor :total_increment

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['subscription_id'] = 'subscription_id'
      @_hash['total_amount'] = 'total_amount'
      @_hash['period'] = 'Period'
      @_hash['usages'] = 'Usages'
      @_hash['total_discount'] = 'total_discount'
      @_hash['total_increment'] = 'total_increment'
      @_hash
    end

    def initialize(subscription_id = nil,
                   total_amount = nil,
                   usages = nil,
                   period = nil,
                   total_discount = nil,
                   total_increment = nil)
      @subscription_id = subscription_id
      @total_amount = total_amount
      @period = period
      @usages = usages
      @total_discount = total_discount
      @total_increment = total_increment
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      subscription_id = hash['subscription_id']
      total_amount = hash['total_amount']
      usages = ListUsagesDetailsResponse.from_hash(hash['Usages']) if
        hash['Usages']
      period = GetPeriodResponse.from_hash(hash['Period']) if hash['Period']
      total_discount = hash['total_discount']
      total_increment = hash['total_increment']

      # Create object from extracted values.
      GetUsagesDetailsResponse.new(subscription_id,
                                   total_amount,
                                   usages,
                                   period,
                                   total_discount,
                                   total_increment)
    end
  end
end
