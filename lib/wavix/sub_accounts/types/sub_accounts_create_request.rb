# frozen_string_literal: true

module Wavix
  module SubAccounts
    module Types
      class SubAccountsCreateRequest < Internal::Types::Model
        field :name, -> { String }, optional: false, nullable: false

        field :default_destinations, -> { Wavix::SubAccounts::Types::SubAccountsCreateRequestDefaultDestinations }, optional: true, nullable: false
      end
    end
  end
end
