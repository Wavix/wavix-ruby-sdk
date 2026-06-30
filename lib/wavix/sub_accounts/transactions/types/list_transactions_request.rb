# frozen_string_literal: true

module Wavix
  module SubAccounts
    module Transactions
      module Types
        class ListTransactionsRequest < Internal::Types::Model
          field :id, -> { Integer }, optional: false, nullable: false

          field :from_date, -> { String }, optional: false, nullable: false

          field :to_date, -> { String }, optional: false, nullable: false

          field :type, -> { Integer }, optional: true, nullable: false

          field :page, -> { Integer }, optional: true, nullable: false

          field :per_page, -> { Integer }, optional: true, nullable: false
        end
      end
    end
  end
end
