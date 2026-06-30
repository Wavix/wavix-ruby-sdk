# frozen_string_literal: true

module Wavix
  module SipTrunks
    module Types
      class ListSipTrunksRequest < Internal::Types::Model
        field :page, -> { Integer }, optional: true, nullable: false

        field :per_page, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
