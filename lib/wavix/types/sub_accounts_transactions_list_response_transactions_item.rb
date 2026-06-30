# frozen_string_literal: true

module Wavix
  module Types
    class SubAccountsTransactionsListResponseTransactionsItem < Internal::Types::Model
      field :amount, -> { Integer }, optional: true, nullable: false

      field :balance_after, -> { Integer }, optional: true, nullable: false

      field :date, -> { String }, optional: true, nullable: false

      field :details, -> { String }, optional: true, nullable: false

      field :status, -> { String }, optional: true, nullable: false

      field :type, -> { Integer }, optional: true, nullable: false
    end
  end
end
