# frozen_string_literal: true

module Wavix
  module Types
    # Search in both speakers' spoken words and phrases
    class TranscriptionFilterAny < Internal::Types::Model
      field :must, -> { Internal::Types::Array[String] }, optional: true, nullable: false

      field :match, -> { Internal::Types::Array[String] }, optional: true, nullable: false

      field :exclude, -> { Internal::Types::Array[String] }, optional: true, nullable: false
    end
  end
end
