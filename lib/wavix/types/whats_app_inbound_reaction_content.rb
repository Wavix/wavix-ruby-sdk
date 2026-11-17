# frozen_string_literal: true

module Wavix
  module Types
    # Content of a received message that is a reaction to an earlier message. Returned in `content` of a
    # `whatsapp.message.received` event.
    class WhatsAppInboundReactionContent < Internal::Types::Model
      field :reaction, -> { Wavix::Types::WhatsAppInboundReaction }, optional: false, nullable: false
    end
  end
end
