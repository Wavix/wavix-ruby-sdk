# frozen_string_literal: true

module Wavix
  module Types
    class BillingTransactionListResponse < Internal::Types::Model
      field :is_empty, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :transactions, -> { Internal::Types::Array[Wavix::Types::FinancialTransaction] }, optional: false, nullable: false

      field :pagination, -> { Wavix::Types::Pagination }, optional: false, nullable: false
    end
  end
end
