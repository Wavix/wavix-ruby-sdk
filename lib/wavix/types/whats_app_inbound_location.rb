# frozen_string_literal: true

module Wavix
  module Types
    # A location in a received message. Returned in `content.location` of a `whatsapp.message.received` event.
    class WhatsAppInboundLocation < Internal::Types::Model
      field :latitude, -> { Integer }, optional: false, nullable: false

      field :longitude, -> { Integer }, optional: false, nullable: false

      field :name, -> { String }, optional: false, nullable: true

      field :address, -> { String }, optional: false, nullable: true
    end
  end
end
