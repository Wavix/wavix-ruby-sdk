# frozen_string_literal: true

module Wavix
  module Cart
    module Types
      class RemoveCartRequest < Internal::Types::Model
        field :ids, -> { Internal::Types::Array[String] }, optional: false, nullable: false
      end
    end
  end
end
