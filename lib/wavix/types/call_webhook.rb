# frozen_string_literal: true

module Wavix
  module Types
    # A call webhook response
    class CallWebhook < Internal::Types::Model
      field :success, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :event_type, -> { Wavix::Types::CallWebhookEventType }, optional: false, nullable: false

      field :url, -> { String }, optional: false, nullable: false
    end
  end
end
