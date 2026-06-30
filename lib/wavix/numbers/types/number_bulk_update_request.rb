# frozen_string_literal: true

module Wavix
  module Numbers
    module Types
      class NumberBulkUpdateRequest < Internal::Types::Model
        field :ids, -> { Internal::Types::Array[Integer] }, optional: false, nullable: false

        field :sms_enabled, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :destinations, -> { Internal::Types::Array[Wavix::Types::NumberDestination] }, optional: true, nullable: false

        field :sms_relay_url, -> { String }, optional: true, nullable: false

        field :call_recording_enabled, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :transcription_enabled, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :transcription_threshold, -> { Integer }, optional: true, nullable: false

        field :call_status_url, -> { String }, optional: true, nullable: false
      end
    end
  end
end
