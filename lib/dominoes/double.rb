require 'dominoes/bone'

module Dominoes
  class Double
    include Bone

    def score
      if @children.count < 2
        a + b
      end
    end
  end
end
