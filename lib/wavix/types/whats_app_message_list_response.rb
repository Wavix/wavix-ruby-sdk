# frozen_string_literal: true

module Wavix
  module Types
    class WhatsAppMessageListResponse < Internal::Types::Model
      field :messages, -> { Internal::Types::Array[Wavix::Types::WhatsAppMessageListItem] }, optional: false, nullable: false

      field :pagination, -> { Wavix::Types::Pagination }, optional: false, nullable: false
    end
  end
end
