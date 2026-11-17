# frozen_string_literal: true

module Wavix
  module Types
    # Content of a received message that is a sticker. Returned in `content` of a `whatsapp.message.received` event.
    class WhatsAppInboundStickerContent < Internal::Types::Model
      field :sticker, -> { Wavix::Types::WhatsAppInboundMedia }, optional: false, nullable: false
    end
  end
end
