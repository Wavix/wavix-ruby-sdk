# frozen_string_literal: true

module Wavix
  module Types
    # Permission level for the `calls` scope group.
    class APIKeyCallsScopePermission < Internal::Types::Model
      field :allow, -> { Wavix::Types::APIKeyCallsScopePermissionAllow }, optional: true, nullable: false
    end
  end
end
