# frozen_string_literal: true

module Wavix
  module Webrtc
    module Tokens
      module Types
        class WebRtcTokenCreateRequest < Internal::Types::Model
          field :sip_trunk, -> { String }, optional: false, nullable: false

          field :payload, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false

          field :ttl, -> { Integer }, optional: false, nullable: true
        end
      end
    end
  end
end
