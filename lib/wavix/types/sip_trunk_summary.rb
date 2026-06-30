# frozen_string_literal: true

module Wavix
  module Types
    # A SIP trunk associated with the account.
    class SipTrunkSummary < Internal::Types::Model
      field :id, -> { Integer }, optional: false, nullable: false

      field :name, -> { String }, optional: false, nullable: false

      field :callerid, -> { String }, optional: false, nullable: true

      field :label, -> { String }, optional: false, nullable: false

      field :auth_method, -> { String }, optional: false, nullable: false

      field :host_request, -> { Wavix::Types::SipTrunkSummaryHostRequest }, optional: false, nullable: true

      field :passthrough, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :multiple_numbers, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :status, -> { String }, optional: false, nullable: false

      field :talk_time, -> { Integer }, optional: false, nullable: false

      field :charge, -> { String }, optional: false, nullable: false

      field :call_recording_enabled, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :machine_detection_enabled, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :transcription_enabled, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :transcription_threshold, -> { Integer }, optional: true, nullable: false

      field :encrypted_media, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :access_token, -> { String }, optional: false, nullable: true
    end
  end
end
