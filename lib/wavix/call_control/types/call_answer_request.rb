# frozen_string_literal: true

module Wavix
  module CallControl
    module Types
      class CallAnswerRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :call_recording, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :call_transcription, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :stream_url, -> { String }, optional: true, nullable: false

        field :stream_type, -> { Wavix::Types::CallStreamType }, optional: true, nullable: false

        field :stream_channel, -> { Wavix::Types::CallStreamChannel }, optional: true, nullable: false
      end
    end
  end
end
