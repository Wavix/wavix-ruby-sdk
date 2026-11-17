# frozen_string_literal: true

module Wavix
  module Types
    # Content of a received message that is an audio file or voice note. Returned in `content` of a
    # `whatsapp.message.received` event.
    class WhatsAppInboundAudioContent < Internal::Types::Model
      field :audio, -> { Wavix::Types::WhatsAppInboundMedia }, optional: false, nullable: false
    end
  end
end
