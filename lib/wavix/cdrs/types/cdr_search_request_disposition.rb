# frozen_string_literal: true

module Wavix
  module Cdrs
    module Types
      module CdrSearchRequestDisposition
        extend Wavix::Internal::Types::Enum

        ANSWERED = "answered"
        NOANSWER = "noanswer"
        BUSY = "busy"
        FAILED = "failed"
        ALL = "all"
      end
    end
  end
end
