# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module MundiApi
  # Card token data
  class CreateCardTokenRequest < BaseModel
    # Credit card number
    # @return [String]
    attr_accessor :number

    # Holder name, as written on the card
    # @return [String]
    attr_accessor :holder_name

    # The expiration month
    # @return [Integer]
    attr_accessor :exp_month

    # The expiration year, that can be informed with 2 or 4 digits
    # @return [Integer]
    attr_accessor :exp_year

    # The card's security code
    # @return [String]
    attr_accessor :cvv

    # Card brand
    # @return [String]
    attr_accessor :brand

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['number'] = 'number'
      @_hash['holder_name'] = 'holder_name'
      @_hash['exp_month'] = 'exp_month'
      @_hash['exp_year'] = 'exp_year'
      @_hash['cvv'] = 'cvv'
      @_hash['brand'] = 'brand'
      @_hash
    end

    def initialize(number = nil,
                   holder_name = nil,
                   exp_month = nil,
                   exp_year = nil,
                   cvv = nil,
                   brand = nil)
      @number = number
      @holder_name = holder_name
      @exp_month = exp_month
      @exp_year = exp_year
      @cvv = cvv
      @brand = brand
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      number = hash['number']
      holder_name = hash['holder_name']
      exp_month = hash['exp_month']
      exp_year = hash['exp_year']
      cvv = hash['cvv']
      brand = hash['brand']

      # Create object from extracted values.
      CreateCardTokenRequest.new(number,
                                 holder_name,
                                 exp_month,
                                 exp_year,
                                 cvv,
                                 brand)
    end
  end
end
