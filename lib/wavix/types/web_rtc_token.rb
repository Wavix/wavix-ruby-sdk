# frozen_string_literal: true

module Wavix
  module Types
    # Represents a WebRTC token that authorizes the Wavix embeddable widget to register against a SIP trunk.
    class WebRtcToken < Internal::Types::Model
      field :uuid, -> { String }, optional: false, nullable: false

      field :sip_trunk, -> { String }, optional: false, nullable: false

      field :payload, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false

      field :ttl, -> { Integer }, optional: true, nullable: false
    end
  end
end
