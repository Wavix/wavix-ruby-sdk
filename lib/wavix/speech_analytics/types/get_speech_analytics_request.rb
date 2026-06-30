# frozen_string_literal: true

module Wavix
  module SpeechAnalytics
    module Types
      class GetSpeechAnalyticsRequest < Internal::Types::Model
        field :request_id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
