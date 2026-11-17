# frozen_string_literal: true

module Wavix
  module Types
    # Content of a message without a template that is text. Consumed in `content` of [Send a WhatsApp
    # message](https://docs.wavix.com/api-reference/whatsapp/send-a-whatsapp-message).
    class WhatsAppSendTextContent < Internal::Types::Model
      field :text, -> { String }, optional: false, nullable: false
    end
  end
end
