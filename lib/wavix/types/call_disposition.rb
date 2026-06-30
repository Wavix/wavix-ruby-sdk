# frozen_string_literal: true

module Wavix
  module Types
    module CallDisposition
      extend Wavix::Internal::Types::Enum

      ANSWERED = "answered"
      NOANSWER = "noanswer"
      BUSY = "busy"
      FAILED = "failed"
      ALL = "all"
    end
  end
end
