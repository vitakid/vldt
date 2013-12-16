module Vldt
  # Validates object against a predicate.
  #
  # A predicate is a block, that takes one argument and returns true,
  # if the object is valid, and false otherwise. If the object is
  # invalid, #validate returns a hash constructed from name and
  # params.
  #
  # Example
  #
  #   v = Vldt::Precidate.new(:equals, value: 5) { |o| o == 5 }
  #   v.validate(6)
  #   #=> { [] => [[:equals, { value: 5 }]] }
  class Predicate < Validator
    def initialize (name, params = {}, &block)
      @name = name
      @params = params
      @block = block
    end

    def validate (object)
      if !@block.call(object)
        { [] => [[@name, @params]] }
      end
    end
  end
end