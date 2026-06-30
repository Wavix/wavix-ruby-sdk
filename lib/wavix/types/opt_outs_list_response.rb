# frozen_string_literal: true

module Wavix
  module Types
    class OptOutsListResponse < Internal::Types::Model
      field :items, -> { Internal::Types::Array[Wavix::Types::OptOutItem] }, optional: true, nullable: false

      field :pagination, -> { Wavix::Types::Pagination }, optional: true, nullable: false
    end
  end
end
