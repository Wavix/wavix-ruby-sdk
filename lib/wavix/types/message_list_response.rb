# frozen_string_literal: true

module Wavix
  module Types
    class MessageListResponse < Internal::Types::Model
      field :items, -> { Internal::Types::Array[Wavix::Types::Message] }, optional: false, nullable: false

      field :pagination, -> { Wavix::Types::Pagination }, optional: false, nullable: false
    end
  end
end
