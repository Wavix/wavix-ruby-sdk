# frozen_string_literal: true

module Wavix
  module Types
    # Transcription `turn` details, including speaker, timestamps, text, and sentiment.
    class FileTranscriptTurn < Internal::Types::Model
      field :speaker, -> { String }, optional: false, nullable: false

      field :s, -> { Integer }, optional: false, nullable: false

      field :e, -> { Integer }, optional: false, nullable: false

      field :text, -> { String }, optional: false, nullable: false

      field :sentiment, -> { String }, optional: false, nullable: false
    end
  end
end
