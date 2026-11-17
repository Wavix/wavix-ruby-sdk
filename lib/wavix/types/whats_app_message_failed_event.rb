# frozen_string_literal: true

module Wavix
  module Types
    # Event that tells you a message you sent wasn't delivered. Posted to your webhook and returned by [List WhatsApp
    # events](https://docs.wavix.com/api-reference/whatsapp/list-whatsapp-events).
    class WhatsAppMessageFailedEvent < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :timestamp, -> { String }, optional: false, nullable: false

      field :data, -> { Wavix::Types::WhatsAppMessageFailedEventData }, optional: false, nullable: false
    end
  end
end
