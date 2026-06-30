# frozen_string_literal: true

module Wavix
  module SubAccounts
    module Types
      class ListSubAccountsRequest < Internal::Types::Model
        field :status, -> { Wavix::SubAccounts::Types::ListSubAccountsRequestStatus }, optional: true, nullable: false
      end
    end
  end
end
