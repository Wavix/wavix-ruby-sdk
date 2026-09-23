# frozen_string_literal: true

module Wavix
  module Types
    class TranscriptionFilter < Internal::Types::Model
      field :agent, -> { Wavix::Types::TranscriptionFilterAgent }, optional: true, nullable: false

      field :client, -> { Wavix::Types::TranscriptionFilterClient }, optional: true, nullable: false

      field :any, -> { Wavix::Types::TranscriptionFilterAny }, optional: true, nullable: false
    end
  end
end
