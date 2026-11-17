# frozen_string_literal: true

module Wavix
  module Types
    # The message a received message replies to. Returned in `context` of a `whatsapp.message.received` event.
    class WhatsAppInboundContext < Internal::Types::Model
      field :message_uuid, -> { String }, optional: false, nullable: true
    end
  end
end
