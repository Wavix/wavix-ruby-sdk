# frozen_string_literal: true

module Wavix
  module Types
    class CallRecordingListResponse < Internal::Types::Model
      field :recordings, -> { Internal::Types::Array[Wavix::Types::Recording] }, optional: true, nullable: false

      field :invalid, -> { Wavix::Types::InvalidRecording }, optional: true, nullable: false

      field :pagination, -> { Wavix::Types::Pagination }, optional: true, nullable: false
    end
  end
end
