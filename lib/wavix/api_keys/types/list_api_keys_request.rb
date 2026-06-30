# frozen_string_literal: true

module Wavix
  module APIKeys
    module Types
      class ListAPIKeysRequest < Internal::Types::Model
        field :label, -> { String }, optional: true, nullable: false
      end
    end
  end
end
