# frozen_string_literal: true

module Wavix
  module CallControl
    module Audio
      module Types
        class StopAudioRequest < Internal::Types::Model
          field :id, -> { String }, optional: false, nullable: false
        end
      end
    end
  end
end
