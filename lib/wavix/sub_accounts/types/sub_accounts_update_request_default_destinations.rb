# frozen_string_literal: true

module Wavix
  module SubAccounts
    module Types
      # Default webhook URLs for inbound messages and delivery reports.
      class SubAccountsUpdateRequestDefaultDestinations < Internal::Types::Model
        field :sms_endpoint, -> { String }, optional: true, nullable: false

        field :dlr_endpoint, -> { String }, optional: true, nullable: false
      end
    end
  end
end
