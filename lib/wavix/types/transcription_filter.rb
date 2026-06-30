# frozen_string_literal: true

module Wavix
  module Types
    class TranscriptionFilter < Internal::Types::Model
      field :agent, -> { Wavix::Types::TranscriptionFilterAgent }, optional: false, nullable: false

      field :client, -> { Wavix::Types::TranscriptionFilterClient }, optional: false, nullable: false

      field :any, -> { Wavix::Types::TranscriptionFilterAny }, optional: false, nullable: false
    end
  end
end
