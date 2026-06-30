# frozen_string_literal: true

module Wavix
  module TenDlc
    module Subscriptions
      module Types
        class DeleteSubscriptionsRequest < Internal::Types::Model
          field :subscription_category, -> { String }, optional: false, nullable: false
        end
      end
    end
  end
end
