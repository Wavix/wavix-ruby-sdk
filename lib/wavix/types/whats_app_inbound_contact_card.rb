# frozen_string_literal: true

module Wavix
  module Types
    # A contact card in a received message. Returned in `content.contacts` of a `whatsapp.message.received` event.
    class WhatsAppInboundContactCard < Internal::Types::Model
      field :name, -> { String }, optional: false, nullable: false

      field :phones, -> { Internal::Types::Array[String] }, optional: false, nullable: false

      field :emails, -> { Internal::Types::Array[String] }, optional: false, nullable: false
    end
  end
end
