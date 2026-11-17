# frozen_string_literal: true

module Wavix
  module Types
    # Event that Wavix posts to a WhatsApp webhook when you send a test event to it. It never appears in the event list.
    class WhatsAppWebhookTestEvent < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :timestamp, -> { String }, optional: false, nullable: false

      field :data, -> { Wavix::Types::WhatsAppWebhookTestEventData }, optional: false, nullable: false
    end
  end
end
