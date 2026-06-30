# frozen_string_literal: true

module Wavix
  module Types
    class CallCreateResponse < Internal::Types::Model
      field :uuid, -> { String }, optional: true, nullable: false

      field :id, -> { String }, optional: true, nullable: false

      field :direction, -> { Wavix::Types::CallDirection }, optional: true, nullable: false

      field :event_type, -> { Wavix::Types::CallCreateResponseEventType }, optional: true, nullable: false

      field :event_time, -> { String }, optional: true, nullable: false

      field :event_payload, -> { Wavix::Types::OnCallEventPayload }, optional: true, nullable: false

      field :from, -> { String }, optional: true, nullable: false

      field :to, -> { String }, optional: true, nullable: false

      field :call_started, -> { String }, optional: true, nullable: false

      field :call_answered, -> { String }, optional: true, nullable: false

      field :call_completed, -> { String }, optional: true, nullable: false

      field :machine_detected, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :tag, -> { String }, optional: true, nullable: false
    end
  end
end
