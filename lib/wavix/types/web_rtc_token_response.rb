# frozen_string_literal: true

module Wavix
  module Types
    class WebRtcTokenResponse < Internal::Types::Model
      field :token, -> { String }, optional: false, nullable: false

      field :uuid, -> { String }, optional: false, nullable: false

      field :sip_trunk, -> { String }, optional: false, nullable: false

      field :payload, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false

      field :ttl, -> { Integer }, optional: true, nullable: false
    end
  end
end
