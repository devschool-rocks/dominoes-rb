require 'dominoes/double'
require 'dominoes/single'

module Dominoes
  module Domino
    def self.new(a, b)
      klass = (a == b ? Double : Single)
      klass.new(a, b)
    end
  end
end
