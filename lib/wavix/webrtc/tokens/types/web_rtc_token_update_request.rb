# frozen_string_literal: true

module Wavix
  module Webrtc
    module Tokens
      module Types
        class WebRtcTokenUpdateRequest < Internal::Types::Model
          field :id, -> { String }, optional: false, nullable: false

          field :payload, -> { Internal::Types::Hash[String, Object] }, optional: false, nullable: false
        end
      end
    end
  end
end
