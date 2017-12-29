# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

require 'date'
module MundiApi
  # Request for creating an anticipation
  class CreateAnticipationRequest < BaseModel
    # Amount requested for the anticipation
    # @return [Integer]
    attr_accessor :amount

    # Timeframe
    # @return [String]
    attr_accessor :timeframe

    # Payment date
    # @return [DateTime]
    attr_accessor :payment_date

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['amount'] = 'amount'
      @_hash['timeframe'] = 'timeframe'
      @_hash['payment_date'] = 'payment_date'
      @_hash
    end

    def initialize(amount = nil,
                   timeframe = nil,
                   payment_date = nil)
      @amount = amount
      @timeframe = timeframe
      @payment_date = payment_date
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      amount = hash['amount']
      timeframe = hash['timeframe']
      payment_date = DateTime.rfc3339(hash['payment_date']) if
        hash['payment_date']

      # Create object from extracted values.
      CreateAnticipationRequest.new(amount,
                                    timeframe,
                                    payment_date)
    end
  end
end
