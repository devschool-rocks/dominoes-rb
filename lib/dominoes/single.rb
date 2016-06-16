require 'dominoes/bone'

module Dominoes
  class Single
    include Bone

    def score
      s = if @parent && @children.none?
        @parent.a == @a ? @b : @a
      end

      s || 0
    end
  end
end
