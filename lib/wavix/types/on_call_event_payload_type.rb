# frozen_string_literal: true

module Wavix
  module Types
    module OnCallEventPayloadType
      extend Wavix::Internal::Types::Enum

      AUDIO = "audio"
      COLLECT = "collect"
    end
  end
end
