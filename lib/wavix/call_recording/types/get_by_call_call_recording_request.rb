# frozen_string_literal: true

module Wavix
  module CallRecording
    module Types
      class GetByCallCallRecordingRequest < Internal::Types::Model
        field :call_id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
