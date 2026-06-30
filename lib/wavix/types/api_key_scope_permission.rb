# frozen_string_literal: true

module Wavix
  module Types
    # Permission level for an API key scope group.
    class APIKeyScopePermission < Internal::Types::Model
      field :allow, -> { Wavix::Types::APIKeyScopePermissionAllow }, optional: true, nullable: false
    end
  end
end
