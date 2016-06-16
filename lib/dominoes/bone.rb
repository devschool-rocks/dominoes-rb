module Dominoes
  class Bone
    attr_reader :a, :b, :parent, :children
    attr_writer :parent

    def initialize(a, b)
      @a = a
      @b = b
      @parent = nil
      @children = []
    end

    def link(bone)
      raise_if_not_linkable!(bone)
      @children.push(bone)
      bone.parent = self
    end

    def to_s
      "[#{@a}|#{@b}]"
    end

  private

    def raise_if_not_linkable!(bone)
      if matching_values(bone).none?
        raise Exception.new("Can't link bones without a matching digit to join them on.")
      end
    end

    def matching_values(bone)
      [bone.a, bone.b] & [@a, @b]
    end
  end
end
