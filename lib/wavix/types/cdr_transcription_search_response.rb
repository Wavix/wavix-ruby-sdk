# frozen_string_literal: true

module Wavix
  module Types
    class CdrTranscriptionSearchResponse < Internal::Types::Model
      field :items, -> { Internal::Types::Array[Wavix::Types::CdrWithTranscription] }, optional: false, nullable: false

      field :pagination, -> { Wavix::Types::Pagination }, optional: false, nullable: false
    end
  end
end
