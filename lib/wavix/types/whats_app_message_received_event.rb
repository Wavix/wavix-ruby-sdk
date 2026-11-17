# frozen_string_literal: true

module Wavix
  module Types
    # Event that tells you one of your senders received a message. Posted to your webhook and returned by [List WhatsApp
    # events](https://docs.wavix.com/api-reference/whatsapp/list-whatsapp-events).
    class WhatsAppMessageReceivedEvent < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :timestamp, -> { String }, optional: false, nullable: false

      field :data, -> { Wavix::Types::WhatsAppMessageReceivedEventData }, optional: false, nullable: false
    end
  end
end
