# frozen_string_literal: true

module Wavix
  module Types
    # For SIP trunks with IP-based authentication, contains the status of the IP authentication request.
    class SipTrunkSummaryHostRequest < Internal::Types::Model
      field :host, -> { String }, optional: true, nullable: false

      field :status, -> { String }, optional: true, nullable: false
    end
  end
end
