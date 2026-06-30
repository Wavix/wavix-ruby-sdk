# frozen_string_literal: true

module Wavix
  module Types
    module FileTranscriptionResponseStatus
      extend Wavix::Internal::Types::Enum

      COMPLETED = "completed"
      FAILED = "failed"
    end
  end
end
