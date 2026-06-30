# frozen_string_literal: true

module Wavix
  module Types
    class SenderIDListResponse < Internal::Types::Model
      field :items, -> { Internal::Types::Array[Wavix::Types::SenderID] }, optional: false, nullable: false
    end
  end
end
