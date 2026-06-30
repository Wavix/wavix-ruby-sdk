# frozen_string_literal: true

module Wavix
  module Types
    class CartResponse < Internal::Types::Model
      field :dids, -> { Internal::Types::Array[Wavix::Types::AvailableNumber] }, optional: false, nullable: false

      field :doc_types, -> { Internal::Types::Array[Wavix::Types::DocumentType] }, optional: false, nullable: false
    end
  end
end
