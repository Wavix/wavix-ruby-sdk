# frozen_string_literal: true

module Wavix
  module Types
    # Financial transaction.
    class FinancialTransaction < Internal::Types::Model
      field :id, -> { Integer }, optional: false, nullable: false

      field :date, -> { String }, optional: false, nullable: false

      field :amount, -> { Integer }, optional: false, nullable: false

      field :balance_after, -> { Integer }, optional: false, nullable: false

      field :details, -> { String }, optional: false, nullable: false

      field :status, -> { Wavix::Types::TransactionStatus }, optional: false, nullable: false

      field :type, -> { Integer }, optional: false, nullable: false

      field :show_invoice, -> { Internal::Types::Boolean }, optional: false, nullable: false
    end
  end
end
