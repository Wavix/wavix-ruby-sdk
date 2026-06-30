# frozen_string_literal: true

module Wavix
  module SipTrunks
    module Types
      class DeleteSipTrunksRequest < Internal::Types::Model
        field :id, -> { Integer }, optional: false, nullable: false
      end
    end
  end
end
