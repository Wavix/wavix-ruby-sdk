# frozen_string_literal: true

module Wavix
  module Types
    class CallWebhookListResponseItem < Internal::Types::Model
      field :event_type, -> { Wavix::Types::CallWebhookListResponseItemEventType }, optional: false, nullable: false

      field :url, -> { String }, optional: false, nullable: false
    end
  end
end
