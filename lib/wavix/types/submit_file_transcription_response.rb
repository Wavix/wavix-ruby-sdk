# frozen_string_literal: true

module Wavix
  module Types
    class SubmitFileTranscriptionResponse < Internal::Types::Model
      field :file, -> { String }, optional: false, nullable: false

      field :request_id, -> { String }, optional: false, nullable: false

      field :success, -> { Internal::Types::Boolean }, optional: false, nullable: false
    end
  end
end
