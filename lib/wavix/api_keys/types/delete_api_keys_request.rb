# frozen_string_literal: true

module Wavix
  module APIKeys
    module Types
      class DeleteAPIKeysRequest < Internal::Types::Model
        field :id, -> { Integer }, optional: false, nullable: false
      end
    end
  end
end
