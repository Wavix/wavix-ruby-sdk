# frozen_string_literal: true

module Wavix
  module Billing
    module Transactions
      module Types
        class ListTransactionsRequest < Internal::Types::Model
          field :from_date, -> { String }, optional: false, nullable: false

          field :to_date, -> { String }, optional: false, nullable: false

          field :type, -> { Integer }, optional: true, nullable: false

          field :details_contains, -> { String }, optional: true, nullable: false

          field :payments, -> { Internal::Types::Boolean }, optional: true, nullable: false

          field :page, -> { Integer }, optional: true, nullable: false

          field :per_page, -> { Integer }, optional: true, nullable: false
        end
      end
    end
  end
end
