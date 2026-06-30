# frozen_string_literal: true

module Wavix
  module CallWebhooks
    module Types
      module DeleteCallWebhooksRequestEventType
        extend Wavix::Internal::Types::Enum

        POST_CALL = "post-call"
        ON_CALL = "on-call"
      end
    end
  end
end
