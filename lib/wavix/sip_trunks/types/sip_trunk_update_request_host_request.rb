# frozen_string_literal: true

module Wavix
  module SipTrunks
    module Types
      # For SIP trunks with IP authentication, the SIP endpoint public static IP address. Wavix authenticates all SIP
      # traffic originating from this IP address. Ignored when the trunk already has a host request that is pending or
      # approved. Not supported on trial accounts.
      class SipTrunkUpdateRequestHostRequest < Internal::Types::Model
        field :host, -> { String }, optional: false, nullable: false
      end
    end
  end
end
