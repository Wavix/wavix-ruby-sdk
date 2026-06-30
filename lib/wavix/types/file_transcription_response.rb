# frozen_string_literal: true

module Wavix
  module Types
    class FileTranscriptionResponse < Internal::Types::Model
      field :transcript, -> { Wavix::Types::FileTranscriptResponse }, optional: false, nullable: true

      field :turns, -> { Internal::Types::Array[Wavix::Types::FileTranscriptTurn] }, optional: false, nullable: true

      field :request_id, -> { String }, optional: false, nullable: false

      field :language, -> { Wavix::Types::FileTranscriptionResponseLanguage }, optional: false, nullable: false

      field :duration, -> { Integer }, optional: false, nullable: true

      field :charge, -> { String }, optional: false, nullable: false

      field :status, -> { Wavix::Types::FileTranscriptionResponseStatus }, optional: false, nullable: false

      field :transcription_date, -> { String }, optional: false, nullable: false

      field :transcription_score, -> { String }, optional: false, nullable: true

      field :transcription_summary, -> { String }, optional: false, nullable: true

      field :original_file, -> { String }, optional: false, nullable: false
    end
  end
end
