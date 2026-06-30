# frozen_string_literal: true

module Wavix
  module Types
    class Call < Internal::Types::Model
      field :uuid, -> { String }, optional: false, nullable: false

      field :id, -> { String }, optional: false, nullable: false

      field :direction, -> { Wavix::Types::CallDirection }, optional: true, nullable: false

      field :event_type, -> { Wavix::Types::CallEventType }, optional: false, nullable: false

      field :event_time, -> { String }, optional: false, nullable: false

      field :event_payload, -> { Wavix::Types::OnCallEventPayload }, optional: false, nullable: true

      field :from, -> { String }, optional: false, nullable: false

      field :to, -> { String }, optional: false, nullable: false

      field :call_started, -> { String }, optional: false, nullable: false

      field :call_answered, -> { String }, optional: false, nullable: true

      field :call_completed, -> { String }, optional: false, nullable: true

      field :machine_detected, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :tag, -> { String }, optional: false, nullable: false
    end
  end
end
