# frozen_string_literal: true

module Wavix
  module Types
    # A tap on a quick reply button. Returned in `content.button_reply` of a `whatsapp.message.received` event.
    class WhatsAppInboundButtonReply < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :title, -> { String }, optional: false, nullable: false
    end
  end
end
