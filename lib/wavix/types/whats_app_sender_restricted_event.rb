# frozen_string_literal: true

module Wavix
  module Types
    # Event of type `whatsapp.sender.restricted`. One of your senders reached its messaging limit. It can't start new
    # conversations until the 24-hour window resets. Posted to your webhook and returned by [List WhatsApp
    # events](https://docs.wavix.com/api-reference/whatsapp/list-whatsapp-events).
    class WhatsAppSenderRestrictedEvent < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :timestamp, -> { String }, optional: false, nullable: false

      field :data, -> { Wavix::Types::WhatsAppSenderEventData }, optional: false, nullable: false
    end
  end
end
