# frozen_string_literal: true

module Wavix
  module Types
    class Number < Internal::Types::Model
      field :id, -> { Integer }, optional: false, nullable: false

      field :number, -> { String }, optional: false, nullable: false

      field :activation_fee, -> { String }, optional: false, nullable: false

      field :monthly_fee, -> { String }, optional: false, nullable: false

      field :per_min, -> { String }, optional: false, nullable: false

      field :city, -> { String }, optional: false, nullable: false

      field :state, -> { String }, optional: true, nullable: false

      field :country, -> { String }, optional: false, nullable: false

      field :country_short_name, -> { String }, optional: false, nullable: false

      field :destination, -> { Internal::Types::Array[Wavix::Types::InboundCallDestination] }, optional: false, nullable: false

      field :channels, -> { Integer }, optional: false, nullable: false

      field :require_docs, -> { Internal::Types::Array[String] }, optional: false, nullable: false

      field :documents, -> { Internal::Types::Array[Wavix::Types::NumberDocument] }, optional: false, nullable: false

      field :domestic_cli, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :free_min, -> { Integer }, optional: true, nullable: false

      field :unlimited, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :label, -> { String }, optional: false, nullable: true

      field :status, -> { String }, optional: false, nullable: false

      field :seconds, -> { String }, optional: false, nullable: false

      field :added, -> { String }, optional: false, nullable: false

      field :paid_until, -> { String }, optional: false, nullable: false

      field :sms_enabled, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :sms_relay_url, -> { String }, optional: false, nullable: true

      field :cnam, -> { Internal::Types::Boolean }, optional: false, nullable: true

      field :call_recording_enabled, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :transcription_enabled, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :transcription_threshold, -> { Integer }, optional: false, nullable: false

      field :call_status_url, -> { String }, optional: true, nullable: false
    end
  end
end
