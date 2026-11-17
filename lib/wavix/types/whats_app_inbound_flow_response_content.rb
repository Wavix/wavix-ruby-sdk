# frozen_string_literal: true

module Wavix
  module Types
    # Content of a received message that is the response to a WhatsApp Flow the contact completed. Returned in `content`
    # of a `whatsapp.message.received` event.
    class WhatsAppInboundFlowResponseContent < Internal::Types::Model
      field :flow_response, -> { Internal::Types::Hash[String, Object] }, optional: false, nullable: false
    end
  end
end
