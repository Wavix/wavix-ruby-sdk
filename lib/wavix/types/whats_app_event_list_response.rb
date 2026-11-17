# frozen_string_literal: true

module Wavix
  module Types
    # A paginated list of your account's WhatsApp events, returned by [List WhatsApp
    # events](https://docs.wavix.com/api-reference/whatsapp/list-whatsapp-events).
    class WhatsAppEventListResponse < Internal::Types::Model
      field :events, -> { Internal::Types::Array[Wavix::Types::WhatsAppEvent] }, optional: false, nullable: false

      field :next_cursor, -> { String }, optional: false, nullable: true

      field :has_more, -> { Internal::Types::Boolean }, optional: false, nullable: false
    end
  end
end
