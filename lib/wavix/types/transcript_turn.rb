# frozen_string_literal: true

module Wavix
  module Types
    # Represents a single turn in a call transcript. Each turn carries the text attributed to one speaker, with the
    # start and end times for that text.
    class TranscriptTurn < Internal::Types::Model
      field :type, -> { String }, optional: true, nullable: false

      field :s, -> { Integer }, optional: true, nullable: false

      field :e, -> { Integer }, optional: true, nullable: false

      field :text, -> { String }, optional: true, nullable: false

      field :sentiment, -> { String }, optional: true, nullable: false
    end
  end
end
