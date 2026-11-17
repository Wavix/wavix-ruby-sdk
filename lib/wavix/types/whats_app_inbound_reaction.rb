# frozen_string_literal: true

module Wavix
  module Types
    # A reaction in a received message. Returned in `content.reaction` of a `whatsapp.message.received` event.
    class WhatsAppInboundReaction < Internal::Types::Model
      field :message_uuid, -> { String }, optional: false, nullable: true

      field :emoji, -> { String }, optional: false, nullable: true
    end
  end
end
