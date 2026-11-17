# frozen_string_literal: true

module Wavix
  module Types
    # Content of a message without a template that is a text with reply buttons. Consumed in `content` of [Send a
    # WhatsApp message](https://docs.wavix.com/api-reference/whatsapp/send-a-whatsapp-message).
    class WhatsAppSendButtonsContent < Internal::Types::Model
      field :buttons, -> { Wavix::Types::WhatsAppSendButtons }, optional: false, nullable: false
    end
  end
end
