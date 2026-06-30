# frozen_string_literal: true

module Wavix
  module Types
    module APIKeyScopePermissionAllow
      extend Wavix::Internal::Types::Enum

      NONE = "none"
      READ = "read"
      WRITE = "write"
    end
  end
end
