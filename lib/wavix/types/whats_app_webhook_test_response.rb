# frozen_string_literal: true

module Wavix
  module Types
    # The outcome of a WhatsApp webhook test event, returned when you send one.
    class WhatsAppWebhookTestResponse < Internal::Types::Model
      field :test, -> { Wavix::Types::WhatsAppWebhookTestResult }, optional: false, nullable: false
    end
  end
end
