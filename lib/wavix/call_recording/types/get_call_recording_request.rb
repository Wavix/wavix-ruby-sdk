# frozen_string_literal: true

module Wavix
  module CallRecording
    module Types
      class GetCallRecordingRequest < Internal::Types::Model
        field :id, -> { Integer }, optional: false, nullable: false
      end
    end
  end
end
