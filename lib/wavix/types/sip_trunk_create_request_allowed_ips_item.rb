# frozen_string_literal: true

module Wavix
  module Types
    class SipTrunkCreateRequestAllowedIpsItem < Internal::Types::Model
      field :ip, -> { String }, optional: false, nullable: false
    end
  end
end
