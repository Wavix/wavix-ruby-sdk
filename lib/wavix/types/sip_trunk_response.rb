# frozen_string_literal: true

module Wavix
  module Types
    class SipTrunkResponse < Internal::Types::Model
      field :id, -> { Integer }, optional: false, nullable: false

      field :name, -> { String }, optional: false, nullable: false

      field :callerid, -> { String }, optional: false, nullable: true

      field :label, -> { String }, optional: false, nullable: false

      field :ip_restrict, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :allowed_ips, -> { Internal::Types::Array[Wavix::Types::AllowedIPsItem] }, optional: false, nullable: false

      field :channels_restrict, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :max_channels, -> { Integer }, optional: true, nullable: false

      field :cost_limit, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :max_call_cost, -> { String }, optional: true, nullable: false

      field :call_restrict, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :call_limit, -> { Integer }, optional: true, nullable: false

      field :didinfo_enabled, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :rewrite_enabled, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :rewrite_prefix, -> { String }, optional: true, nullable: false

      field :rewrite_cond, -> { String }, optional: true, nullable: false

      field :call_recording_enabled, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :machine_detection_enabled, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :transcription_enabled, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :transcription_threshold, -> { Integer }, optional: true, nullable: false

      field :created_at, -> { String }, optional: false, nullable: false

      field :host, -> { String }, optional: true, nullable: false

      field :multiple_numbers, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :encrypted_media, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :passthrough, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :access_token, -> { String }, optional: true, nullable: false
    end
  end
end
