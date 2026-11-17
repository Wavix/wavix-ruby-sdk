# frozen_string_literal: true

module Wavix
  module Types
    # A text with reply buttons. Consumed in `content.buttons` of [Send a WhatsApp
    # message](https://docs.wavix.com/api-reference/whatsapp/send-a-whatsapp-message). When the recipient taps a button,
    # Wavix sends a `whatsapp.message.received` event with the button's `id` in `content.button_reply`.
    class WhatsAppSendButtons < Internal::Types::Model
      field :header, -> { String }, optional: true, nullable: false

      field :body, -> { String }, optional: false, nullable: false

      field :footer, -> { String }, optional: true, nullable: false

      field :items, -> { Internal::Types::Array[Wavix::Types::WhatsAppSendReplyButton] }, optional: false, nullable: false
    end
  end
end
