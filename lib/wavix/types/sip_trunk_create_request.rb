# frozen_string_literal: true

module Wavix
  module Types
    class SipTrunkCreateRequest < Internal::Types::Model
      field :label, -> { String }, optional: false, nullable: false

      field :password, -> { String }, optional: false, nullable: false

      field :host_request, -> { Wavix::Types::SipTrunkCreateRequestHostRequest }, optional: true, nullable: false

      field :callerid, -> { String }, optional: false, nullable: false

      field :multiple_numbers, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :ip_restrict, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :allowed_ips, -> { Internal::Types::Array[Wavix::Types::SipTrunkCreateRequestAllowedIpsItem] }, optional: true, nullable: false

      field :didinfo_enabled, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :call_restrict, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :call_limit, -> { Integer }, optional: true, nullable: false

      field :cost_limit, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :max_call_cost, -> { Integer }, optional: true, nullable: false

      field :channels_restrict, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :max_channels, -> { Integer }, optional: true, nullable: false

      field :rewrite_enabled, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :rewrite_prefix, -> { String }, optional: true, nullable: false

      field :rewrite_cond, -> { String }, optional: true, nullable: false

      field :call_recording_enabled, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :transcription_enabled, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :transcription_threshold, -> { Integer }, optional: false, nullable: false

      field :machine_detection_enabled, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :encrypted_media, -> { Internal::Types::Boolean }, optional: true, nullable: false
    end
  end
end
