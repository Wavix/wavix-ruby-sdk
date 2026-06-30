# frozen_string_literal: true

module Wavix
  module Types
    # An invalid recording filter response
    class InvalidRecording < Internal::Types::Model
      field :dids, -> { Internal::Types::Array[String] }, optional: true, nullable: false

      field :sip_trunks, -> { Internal::Types::Array[String] }, optional: true, nullable: false
    end
  end
end
