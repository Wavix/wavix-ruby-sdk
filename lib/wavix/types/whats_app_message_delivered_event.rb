# frozen_string_literal: true

module Wavix
  module Types
    # Event of type `whatsapp.message.delivered`. A message you sent was delivered to the recipient. Posted to your
    # webhook and returned by [List WhatsApp
    # events](https://docs.wavix.com/api-reference/whatsapp/list-whatsapp-events).
    class WhatsAppMessageDeliveredEvent < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :timestamp, -> { String }, optional: false, nullable: false

      field :data, -> { Wavix::Types::WhatsAppMessageStatusEventData }, optional: false, nullable: false
    end
  end
end
