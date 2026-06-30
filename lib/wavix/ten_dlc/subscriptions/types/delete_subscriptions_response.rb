# frozen_string_literal: true

module Wavix
  module TenDlc
    module Subscriptions
      module Types
        class DeleteSubscriptionsResponse < Internal::Types::Model
          field :success, -> { Internal::Types::Boolean }, optional: false, nullable: false
        end
      end
    end
  end
end
