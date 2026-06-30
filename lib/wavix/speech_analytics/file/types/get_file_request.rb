# frozen_string_literal: true

module Wavix
  module SpeechAnalytics
    module File
      module Types
        class GetFileRequest < Internal::Types::Model
          field :request_id, -> { String }, optional: false, nullable: false
        end
      end
    end
  end
end
