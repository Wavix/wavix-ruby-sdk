# frozen_string_literal: true

module Wavix
  module Types
    # Outcome of one test event sent to a WhatsApp webhook.
    class WhatsAppWebhookTestResult < Internal::Types::Model
      field :outcome, -> { Wavix::Types::WhatsAppWebhookTestResultOutcome }, optional: false, nullable: false

      field :status_code, -> { Integer }, optional: false, nullable: true

      field :duration_ms, -> { Integer }, optional: false, nullable: false
    end
  end
end
