# frozen_string_literal: true

module Wavix
  module APIKeys
    module Types
      class APIKeyUpdateRequest < Internal::Types::Model
        field :id, -> { Integer }, optional: false, nullable: false

        field :active, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :restricted, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :scopes_enabled, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :permitted_ips, -> { Internal::Types::Array[String] }, optional: true, nullable: false

        field :label, -> { String }, optional: true, nullable: false

        field :numbers, -> { Wavix::Types::APIKeyScopePermission }, optional: true, nullable: false

        field :trunks, -> { Wavix::Types::APIKeyScopePermission }, optional: true, nullable: false

        field :calls, -> { Wavix::Types::APIKeyCallsScopePermission }, optional: true, nullable: false

        field :messages, -> { Wavix::Types::APIKeyScopePermission }, optional: true, nullable: false

        field :recordings, -> { Wavix::Types::APIKeyScopePermission }, optional: true, nullable: false

        field :campaigns, -> { Wavix::Types::APIKeyScopePermission }, optional: true, nullable: false

        field :two_fa, -> { Wavix::Types::APIKeyScopePermission }, optional: true, nullable: false

        field :validator, -> { Wavix::Types::APIKeyScopePermission }, optional: true, nullable: false

        field :webhooks, -> { Wavix::Types::APIKeyScopePermission }, optional: true, nullable: false

        field :embeddable, -> { Wavix::Types::APIKeyScopePermission }, optional: true, nullable: false

        field :billing, -> { Wavix::Types::APIKeyScopePermission }, optional: true, nullable: false

        field :account, -> { Wavix::Types::APIKeyScopePermission }, optional: true, nullable: false

        field :subaccounts, -> { Wavix::Types::APIKeyScopePermission }, optional: true, nullable: false
      end
    end
  end
end
