# frozen_string_literal: true

module Wavix
  module Types
    # A CDR of a single call with call transcription
    class CdrWithTranscription < Internal::Types::Model
      field :answered_by, -> { String }, optional: true, nullable: false

      field :date, -> { String }, optional: false, nullable: false

      field :from, -> { String }, optional: false, nullable: false

      field :to, -> { String }, optional: false, nullable: false

      field :disposition, -> { Wavix::Types::CallDisposition }, optional: false, nullable: false

      field :duration, -> { Integer }, optional: false, nullable: false

      field :destination, -> { String }, optional: false, nullable: false

      field :per_minute, -> { String }, optional: false, nullable: false

      field :charge, -> { String }, optional: false, nullable: false

      field :sip_trunk, -> { String }, optional: true, nullable: false

      field :forward_fee, -> { String }, optional: true, nullable: false

      field :uuid, -> { String }, optional: false, nullable: false

      field :call_id, -> { String }, optional: false, nullable: false

      field :parent_uuid, -> { String }, optional: true, nullable: false

      field :parent_call_id, -> { String }, optional: true, nullable: false

      field :transcription, -> { Wavix::Types::TranscriptionReference }, optional: false, nullable: true
    end
  end
end
