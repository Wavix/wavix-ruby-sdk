# frozen_string_literal: true

module Wavix
  module Cdrs
    module Types
      class GetCdrsRequest < Internal::Types::Model
        field :call_id, -> { String }, optional: false, nullable: false

        field :show_transcription, -> { Internal::Types::Boolean }, optional: true, nullable: false
      end
    end
  end
end
