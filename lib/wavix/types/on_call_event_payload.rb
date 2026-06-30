# frozen_string_literal: true

module Wavix
  module Types
    # Payload for the `on_call_event` event type.
    class OnCallEventPayload < Internal::Types::Model
      field :type, -> { Wavix::Types::OnCallEventPayloadType }, optional: false, nullable: false

      field :payload, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false
    end
  end
end
