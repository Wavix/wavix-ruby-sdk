# frozen_string_literal: true

module Wavix
  module Types
    # Content of a received message that is text. Returned in `content` of a `whatsapp.message.received` event.
    class WhatsAppInboundTextContent < Internal::Types::Model
      field :text, -> { String }, optional: false, nullable: false
    end
  end
end
