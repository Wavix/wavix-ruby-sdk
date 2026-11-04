# frozen_string_literal: true

module Wavix
  module SipTrunks
    module Types
      class SipTrunkUpdateRequest < Internal::Types::Model
        field :id, -> { Integer }, optional: false, nullable: false

        field :label, -> { String }, optional: true, nullable: false

        field :password, -> { String }, optional: true, nullable: false

        field :host_request, -> { Wavix::SipTrunks::Types::SipTrunkUpdateRequestHostRequest }, optional: true, nullable: false

        field :callerid, -> { String }, optional: true, nullable: false

        field :multiple_numbers, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :ip_restrict, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :allowed_ips, -> { Internal::Types::Array[Wavix::SipTrunks::Types::SipTrunkUpdateRequestAllowedIpsItem] }, optional: true, nullable: false

        field :didinfo_enabled, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :call_restrict, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :call_limit, -> { Integer }, optional: true, nullable: false

        field :cost_limit, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :max_call_cost, -> { Integer }, optional: true, nullable: false

        field :channels_restrict, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :max_channels, -> { Integer }, optional: true, nullable: false

        field :rewrite_enabled, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :rewrite_prefix, -> { String }, optional: true, nullable: false

        field :rewrite_cond, -> { String }, optional: true, nullable: false

        field :call_recording_enabled, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :transcription_enabled, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :transcription_threshold, -> { Integer }, optional: true, nullable: false

        field :machine_detection_enabled, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :encrypted_media, -> { Internal::Types::Boolean }, optional: true, nullable: false
      end
    end
  end
end
