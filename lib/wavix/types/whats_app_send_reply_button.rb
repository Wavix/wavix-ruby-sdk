# frozen_string_literal: true

module Wavix
  module Types
    # A reply button. Consumed in `content.buttons.items` of [Send a WhatsApp
    # message](https://docs.wavix.com/api-reference/whatsapp/send-a-whatsapp-message).
    class WhatsAppSendReplyButton < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :title, -> { String }, optional: false, nullable: false
    end
  end
end
