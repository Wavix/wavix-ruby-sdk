# frozen_string_literal: true

module Wavix
  module Types
    # Content of a message without a template that is a document. Consumed in `content` of [Send a WhatsApp
    # message](https://docs.wavix.com/api-reference/whatsapp/send-a-whatsapp-message).
    class WhatsAppSendDocumentContent < Internal::Types::Model
      field :document, -> { Wavix::Types::WhatsAppSendMedia }, optional: false, nullable: false
    end
  end
end
