# frozen_string_literal: true

module Wavix
  module Types
    # Content of a received message that is a location. Returned in `content` of a `whatsapp.message.received` event.
    class WhatsAppInboundLocationContent < Internal::Types::Model
      field :location, -> { Wavix::Types::WhatsAppInboundLocation }, optional: false, nullable: false
    end
  end
end
