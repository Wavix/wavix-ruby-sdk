# frozen_string_literal: true

module Wavix
  module SipTrunks
    module Types
      class UpdateSipTrunksRequest < Internal::Types::Model
        field :id, -> { Integer }, optional: false, nullable: false

        field :body, -> { Wavix::Types::SipTrunkCreateRequest }, optional: false, nullable: false
      end
    end
  end
end
