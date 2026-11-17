# frozen_string_literal: true

module Wavix
  module Types
    # Event of type `whatsapp.sender.quality_changed`. Meta changed the quality rating of one of your senders. Posted to
    # your webhook and returned by [List WhatsApp
    # events](https://docs.wavix.com/api-reference/whatsapp/list-whatsapp-events).
    class WhatsAppSenderQualityChangedEvent < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :timestamp, -> { String }, optional: false, nullable: false

      field :data, -> { Wavix::Types::WhatsAppSenderEventData }, optional: false, nullable: false
    end
  end
end
