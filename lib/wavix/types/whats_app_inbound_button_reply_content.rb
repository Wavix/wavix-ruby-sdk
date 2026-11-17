# frozen_string_literal: true

module Wavix
  module Types
    # Content of a received message that is a tap on a button of a message you sent. Returned in `content` of a
    # `whatsapp.message.received` event.
    class WhatsAppInboundButtonReplyContent < Internal::Types::Model
      field :button_reply, -> { Wavix::Types::WhatsAppInboundButtonReply }, optional: false, nullable: false
    end
  end
end
