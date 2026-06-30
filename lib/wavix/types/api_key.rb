# frozen_string_literal: true

module Wavix
  module Types
    # API key details including IP restrictions and scope permissions.
    class APIKey < Internal::Types::Model
      field :id, -> { Integer }, optional: false, nullable: false

      field :label, -> { String }, optional: false, nullable: false

      field :value, -> { String }, optional: false, nullable: false

      field :active, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :restricted, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :permitted_ips, -> { Internal::Types::Array[String] }, optional: false, nullable: false

      field :scopes_enabled, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :last_used_at, -> { String }, optional: false, nullable: true

      field :numbers, -> { Wavix::Types::APIKeyScopePermission }, optional: false, nullable: true

      field :trunks, -> { Wavix::Types::APIKeyScopePermission }, optional: false, nullable: true

      field :calls, -> { Wavix::Types::APIKeyCallsScopePermission }, optional: false, nullable: true

      field :messages, -> { Wavix::Types::APIKeyScopePermission }, optional: false, nullable: true

      field :recordings, -> { Wavix::Types::APIKeyScopePermission }, optional: false, nullable: true

      field :campaigns, -> { Wavix::Types::APIKeyScopePermission }, optional: false, nullable: true

      field :two_fa, -> { Wavix::Types::APIKeyScopePermission }, optional: false, nullable: true

      field :validator, -> { Wavix::Types::APIKeyScopePermission }, optional: false, nullable: true

      field :webhooks, -> { Wavix::Types::APIKeyScopePermission }, optional: false, nullable: true

      field :embeddable, -> { Wavix::Types::APIKeyScopePermission }, optional: false, nullable: true

      field :billing, -> { Wavix::Types::APIKeyScopePermission }, optional: false, nullable: true

      field :account, -> { Wavix::Types::APIKeyScopePermission }, optional: false, nullable: true

      field :subaccounts, -> { Wavix::Types::APIKeyScopePermission }, optional: false, nullable: true

      field :created_at, -> { String }, optional: false, nullable: false
    end
  end
end
