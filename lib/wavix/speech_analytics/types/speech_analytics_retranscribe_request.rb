# frozen_string_literal: true

module Wavix
  module SpeechAnalytics
    module Types
      class SpeechAnalyticsRetranscribeRequest < Internal::Types::Model
        field :request_id, -> { String }, optional: false, nullable: false

        field :callback_url, -> { String }, optional: false, nullable: false

        field :insights, -> { Internal::Types::Boolean }, optional: true, nullable: false
      end
    end
  end
end
