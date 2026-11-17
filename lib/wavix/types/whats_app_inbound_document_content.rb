# frozen_string_literal: true

module Wavix
  module Types
    # Content of a received message that is a document. Returned in `content` of a `whatsapp.message.received` event.
    class WhatsAppInboundDocumentContent < Internal::Types::Model
      field :document, -> { Wavix::Types::WhatsAppInboundMedia }, optional: false, nullable: false
    end
  end
end
