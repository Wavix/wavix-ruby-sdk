# frozen_string_literal: true

module Wavix
  module Types
    # Content of a received message that is one or more contact cards. Returned in `content` of a
    # `whatsapp.message.received` event.
    class WhatsAppInboundContactsContent < Internal::Types::Model
      field :contacts, -> { Internal::Types::Array[Wavix::Types::WhatsAppInboundContactCard] }, optional: false, nullable: false
    end
  end
end
