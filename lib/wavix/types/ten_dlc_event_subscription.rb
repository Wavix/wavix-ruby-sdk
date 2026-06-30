# frozen_string_literal: true

module Wavix
  module Types
    # Represents a subscription that delivers 10DLC lifecycle events to a webhook URL.
    class TenDlcEventSubscription < Internal::Types::Model
      field :subscription_category, -> { String }, optional: false, nullable: false

      field :url, -> { String }, optional: false, nullable: false
    end
  end
end
