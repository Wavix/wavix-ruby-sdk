# frozen_string_literal: true

module Wavix
  module Types
    # Error returned when a webhook change is rejected because the webhook no longer has the expected URL.
    class WebhookInUseErrorResponse < Internal::Types::Model
      field :success, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :error, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :message, -> { String }, optional: false, nullable: false
    end
  end
end
