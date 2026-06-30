# frozen_string_literal: true

module Wavix
  module Types
    class TranscriptionReference < Internal::Types::Model
      field :uuid, -> { String }, optional: false, nullable: false

      field :url, -> { String }, optional: false, nullable: false
    end
  end
end
