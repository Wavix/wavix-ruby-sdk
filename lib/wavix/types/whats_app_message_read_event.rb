# frozen_string_literal: true

module Wavix
  module Types
    # Event of type `whatsapp.message.read`. The recipient opened a message you sent. WhatsApp reports it only when the
    # recipient has read receipts turned on. Posted to your webhook and returned by [List WhatsApp
    # events](https://docs.wavix.com/api-reference/whatsapp/list-whatsapp-events).
    class WhatsAppMessageReadEvent < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :timestamp, -> { String }, optional: false, nullable: false

      field :data, -> { Wavix::Types::WhatsAppMessageStatusEventData }, optional: false, nullable: false
    end
  end
end
