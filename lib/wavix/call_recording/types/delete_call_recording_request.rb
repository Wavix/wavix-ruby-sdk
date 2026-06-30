# frozen_string_literal: true

module Wavix
  module CallRecording
    module Types
      class DeleteCallRecordingRequest < Internal::Types::Model
        field :id, -> { Integer }, optional: false, nullable: false
      end
    end
  end
end
