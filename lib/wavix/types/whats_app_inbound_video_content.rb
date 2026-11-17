# frozen_string_literal: true

module Wavix
  module Types
    # Content of a received message that is a video. Returned in `content` of a `whatsapp.message.received` event.
    class WhatsAppInboundVideoContent < Internal::Types::Model
      field :video, -> { Wavix::Types::WhatsAppInboundMedia }, optional: false, nullable: false
    end
  end
end
