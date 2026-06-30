# frozen_string_literal: true

module Wavix
  module SubAccounts
    module Types
      class GetSubAccountsRequest < Internal::Types::Model
        field :id, -> { Integer }, optional: false, nullable: false
      end
    end
  end
end
