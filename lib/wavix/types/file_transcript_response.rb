# frozen_string_literal: true

module Wavix
  module Types
    class FileTranscriptResponse < Internal::Types::Model
      field :channel1, -> { String }, optional: false, nullable: false, api_name: "channel_1"

      field :channel2, -> { String }, optional: false, nullable: false, api_name: "channel_2"
    end
  end
end
