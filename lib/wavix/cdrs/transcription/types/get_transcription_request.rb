# frozen_string_literal: true

module Wavix
  module Cdrs
    module Transcription
      module Types
        class GetTranscriptionRequest < Internal::Types::Model
          field :call_id, -> { String }, optional: false, nullable: false
        end
      end
    end
  end
end
