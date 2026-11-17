# frozen_string_literal: true

module Wavix
  module Types
    # Content of a received message that is an item picked from a list in a message you sent. Returned in `content` of a
    # `whatsapp.message.received` event.
    class WhatsAppInboundListReplyContent < Internal::Types::Model
      field :list_reply, -> { Wavix::Types::WhatsAppInboundListReply }, optional: false, nullable: false
    end
  end
end
