# frozen_string_literal: true

module Wavix
  module Types
    # For SIP trunks with IP authentication, includes the SIP endpoint public static IP address and the status of the
    # authentication request. Wavix authenticates all SIP traffic originating from this IP address.
    class SipTrunkCreateRequestHostRequest < Internal::Types::Model
      field :host, -> { String }, optional: false, nullable: false
    end
  end
end
