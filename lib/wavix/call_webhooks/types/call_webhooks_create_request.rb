# frozen_string_literal: true

module Wavix
  module CallWebhooks
    module Types
      class CallWebhooksCreateRequest < Internal::Types::Model
        field :url, -> { String }, optional: false, nullable: false

        field :event_type, -> { Wavix::CallWebhooks::Types::CallWebhooksCreateRequestEventType }, optional: false, nullable: false
      end
    end
  end
end
