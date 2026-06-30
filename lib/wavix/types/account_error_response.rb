# frozen_string_literal: true

module Wavix
  module Types
    # The feature is disabled for the account.
    class AccountErrorResponse < Internal::Types::Model
      field :success, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :message, -> { String }, optional: false, nullable: false
    end
  end
end
