# frozen_string_literal: true

module Wavix
  module Types
    class SubAccountsTransactionsListResponse < Internal::Types::Model
      field :transactions, -> { Internal::Types::Array[Wavix::Types::SubAccountsTransactionsListResponseTransactionsItem] }, optional: true, nullable: false

      field :pagination, -> { Wavix::Types::Pagination }, optional: true, nullable: false
    end
  end
end
