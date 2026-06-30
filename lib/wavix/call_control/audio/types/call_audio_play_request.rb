# frozen_string_literal: true

module Wavix
  module CallControl
    module Audio
      module Types
        class CallAudioPlayRequest < Internal::Types::Model
          field :id, -> { String }, optional: false, nullable: false

          field :audio_file, -> { String }, optional: false, nullable: false
        end
      end
    end
  end
end
