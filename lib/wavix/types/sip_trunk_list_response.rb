# frozen_string_literal: true

module Wavix
  module Types
    class SipTrunkListResponse < Internal::Types::Model
      field :sip_trunks, -> { Internal::Types::Array[Wavix::Types::SipTrunkSummary] }, optional: false, nullable: true

      field :pagination, -> { Wavix::Types::Pagination }, optional: false, nullable: false
    end
  end
end
