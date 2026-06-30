# frozen_string_literal: true

module Wavix
  module CallWebhooks
    module Types
      class DeleteCallWebhooksRequest < Internal::Types::Model
        field :event_type, -> { Wavix::CallWebhooks::Types::DeleteCallWebhooksRequestEventType }, optional: false, nullable: false
      end
    end
  end
end
