# frozen_string_literal: true

module Wavix
  module SipTrunks
    module Types
      class SipTrunkUpdateRequestAllowedIpsItem < Internal::Types::Model
        field :ip, -> { String }, optional: false, nullable: false
      end
    end
  end
end
