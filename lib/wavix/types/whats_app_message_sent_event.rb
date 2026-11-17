# frozen_string_literal: true

module Wavix
  module Types
    # Event of type `whatsapp.message.sent`. A message you sent has the `sent` status: it isn't delivered yet. Posted to
    # your webhook and returned by [List WhatsApp
    # events](https://docs.wavix.com/api-reference/whatsapp/list-whatsapp-events).
    class WhatsAppMessageSentEvent < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :timestamp, -> { String }, optional: false, nullable: false

      field :data, -> { Wavix::Types::WhatsAppMessageStatusEventData }, optional: false, nullable: false
    end
  end
end
