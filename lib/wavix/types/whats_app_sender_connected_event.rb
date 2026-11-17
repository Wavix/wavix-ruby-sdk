# frozen_string_literal: true

module Wavix
  module Types
    # Event of type `whatsapp.sender.connected`. One of your senders can send messages within its messaging limit, for
    # example after registration or when a restriction ends. Posted to your webhook and returned by [List WhatsApp
    # events](https://docs.wavix.com/api-reference/whatsapp/list-whatsapp-events).
    class WhatsAppSenderConnectedEvent < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :timestamp, -> { String }, optional: false, nullable: false

      field :data, -> { Wavix::Types::WhatsAppSenderEventData }, optional: false, nullable: false
    end
  end
end
