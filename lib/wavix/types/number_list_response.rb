# frozen_string_literal: true

module Wavix
  module Types
    class NumberListResponse < Internal::Types::Model
      field :items, -> { Internal::Types::Array[Wavix::Types::Number] }, optional: false, nullable: false

      field :doc_types, -> { Internal::Types::Array[Wavix::Types::DocumentType] }, optional: false, nullable: false

      field :pagination, -> { Wavix::Types::Pagination }, optional: false, nullable: false
    end
  end
end
