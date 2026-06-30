# frozen_string_literal: true

module Wavix
  module Types
    class CdrTranscriptionResponse < Internal::Types::Model
      field :transcript, -> { Internal::Types::Hash[String, String] }, optional: false, nullable: false

      field :turns, -> { Internal::Types::Array[Wavix::Types::TranscriptTurn] }, optional: false, nullable: false

      field :uuid, -> { String }, optional: false, nullable: false

      field :language, -> { Wavix::Types::TranscriptionLanguage }, optional: false, nullable: false

      field :duration, -> { Integer }, optional: false, nullable: false

      field :charge, -> { String }, optional: false, nullable: false

      field :status, -> { Wavix::Types::TranscriptionStatus }, optional: false, nullable: false

      field :transcription_date, -> { String }, optional: false, nullable: false

      field :call_date, -> { String }, optional: false, nullable: false

      field :call_uuid, -> { String }, optional: false, nullable: false

      field :call_score, -> { String }, optional: false, nullable: false

      field :call_summary, -> { String }, optional: false, nullable: false
    end
  end
end
