# frozen_string_literal: true

module Wavix
  module SubAccounts
    module Types
      class SubAccountsUpdateRequest < Internal::Types::Model
        field :id, -> { Integer }, optional: false, nullable: false

        field :name, -> { String }, optional: false, nullable: false

        field :status, -> { Wavix::SubAccounts::Types::SubAccountsUpdateRequestStatus }, optional: true, nullable: false

        field :default_destinations, -> { Wavix::SubAccounts::Types::SubAccountsUpdateRequestDefaultDestinations }, optional: true, nullable: false
      end
    end
  end
end
