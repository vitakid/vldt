module Vldt
  # Validate, that an object fulfils a predicate.
  #
  # A predicate is a block, that takes one argument and returns true,
  # if the object is valid, and false otherwise. If the object is
  # invalid, #validate returns a hash constructed from name and
  # params.
  #
  # @example
  #   v = Vldt::Precidate.new(:equals, value: 5) { |o| o == 5 }
  #   v.call(6)
  #   #=> { [] => [[:equals, { value: 5 }]] }
  class Predicate < Validation
    def initialize (name, params = {}, &block)
      @name = name
      @params = params
      @block = block
    end

    def call (object)
      if !@block.call(object)
        { [] => [{ type: @name, params: @params }] }
      end
    end
  end
end
